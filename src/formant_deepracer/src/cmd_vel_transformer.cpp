#include "ros/ros.h"
#include "std_msgs/Bool.h"
#include "geometry_msgs/Twist.h"
#include "ctrl_pkg/ServoCtrlMsg.h"
#include "ctrl_pkg/ActiveStateSrv.h"
#include "ctrl_pkg/EnableStateSrv.h"

ros::Publisher ManualDrivePub;
ros::Publisher ActivePub;
ros::ServiceClient ServiceClient;

const float ANGLE_CLAMP_VAL = 0.7;
const float THROTTLE_CLAMP_VAL = 0.5;

void cmd_vel_callback(const geometry_msgs::Twist::ConstPtr& msg)
{
    float angle = msg->angular.z;
    float throttle = msg->linear.x;

    // Clamp the values to what /manual_drive wants
    if (angle > ANGLE_CLAMP_VAL) angle = ANGLE_CLAMP_VAL;
    if (angle < (0 - ANGLE_CLAMP_VAL)) angle = (0 - ANGLE_CLAMP_VAL);
    if (throttle > THROTTLE_CLAMP_VAL) throttle = THROTTLE_CLAMP_VAL;
    if (throttle < (0 - THROTTLE_CLAMP_VAL)) throttle = (0 - THROTTLE_CLAMP_VAL);

    ROS_INFO("got cmd vel -");
    ROS_INFO("  - angle: %f", angle);
    ROS_INFO("  - throttle: %f", throttle);

    ctrl_pkg::ServoCtrlMsg manual_drive_msg;
    manual_drive_msg.angle = angle;
    manual_drive_msg.throttle = throttle;

    ManualDrivePub.publish(manual_drive_msg);
    ROS_INFO("published");
}

void start_callback(const std_msgs::Bool::ConstPtr& msg)
{
    ROS_INFO("got start call");

    ctrl_pkg::EnableStateSrv enable_state_srv;
    enable_state_srv.request.isActive = true;
    if (ServiceClient.call(enable_state_srv)) {
        ROS_INFO("start call succeeded");
    } else {
        ROS_ERROR("start call failed");

        return;
    }

    // Publish the state to set the indicator
    std_msgs::Bool active_msg;
    active_msg.data = true;
    ActivePub.publish(active_msg);
}

void stop_callback(const std_msgs::Bool::ConstPtr& msg)
{
    ROS_INFO("got stop call");

    ctrl_pkg::EnableStateSrv enable_state_srv;
    enable_state_srv.request.isActive = false;
    if (ServiceClient.call(enable_state_srv)) {
        ROS_INFO("stop call succeeded");
    } else {
        ROS_ERROR("stop call failed");

        return;
    }

    // Publish the state to set the indicator
    std_msgs::Bool active_msg;
    active_msg.data = false;
    ActivePub.publish(active_msg);
}

int main(int argc, char **argv)
{
    ROS_INFO("starting");

    ros::init(argc, argv, "cmd_vel_transformer");
    ros::NodeHandle n;

    ManualDrivePub = n.advertise<ctrl_pkg::ServoCtrlMsg>("/manual_drive", 10);
    ActivePub = n.advertise<std_msgs::Bool>("/active", 10);
    ServiceClient = n.serviceClient<ctrl_pkg::EnableStateSrv>("enable_state");
    
    ctrl_pkg::EnableStateSrv enable_state_srv;
    enable_state_srv.request.isActive = true;
    if (ServiceClient.call(enable_state_srv)) {
        ROS_INFO("start call succeeded");
    } else {
        ROS_ERROR("start call failed");
    }

    ros::Subscriber cmd_vel_sub = n.subscribe("/cmd_vel", 10, cmd_vel_callback);
    ros::Subscriber start_sub = n.subscribe("/start", 10, start_callback);
    //ros::Subscriber stop_sub = n.subscribe("/stop", 10, stop_callback);

    ros::spin();

    ROS_INFO("stopping");

    return 0;
}
