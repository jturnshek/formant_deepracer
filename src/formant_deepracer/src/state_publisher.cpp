#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include "geometry_msgs/Twist.h"
#include "i2c_pkg/BatteryLevelSrv.h"

ros::ServiceClient ServiceClient;
ros::Publisher BatteryPub;
ros::Publisher CmdVelSafetyPub;
ros::Time LastCmdVelTime;
ros::Duration CmdVelTimeoutDuration;

int publish_battery_level()
{
    i2c_pkg::BatteryLevelSrv battery_level_service;
    if (ServiceClient.call(battery_level_service)) {
        std_msgs::Int32 battery_level_msg;
        battery_level_msg.data = battery_level_service.response.level;
        BatteryPub.publish(battery_level_msg);
    } else {
        ROS_ERROR("battery call failed");
    }
}

int check_and_safe_cmd_vel()
{
    if ((ros::Time::now() - LastCmdVelTime) > CmdVelTimeoutDuration) {
        ROS_INFO("/cmd_vel timeout at %f", (ros::Time::now() - LastCmdVelTime).toSec());

        geometry_msgs::Twist zero_twist_msg;
        CmdVelSafetyPub.publish(zero_twist_msg);
    }
}

void cmd_vel_callback(const geometry_msgs::Twist::ConstPtr& msg)
{
    LastCmdVelTime = ros::Time::now();
}

int main(int argc, char **argv)
{
    ROS_INFO("state publisher starting");

    ros::init(argc, argv, "state_publisher");
    ros::NodeHandle n;

    // Set up the cmd_vel safety monitor
    CmdVelTimeoutDuration = ros::Duration(10.0);
    LastCmdVelTime = ros::Time::now();
    CmdVelSafetyPub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
    ros::Subscriber CmdVelSafetySub = n.subscribe("/cmd_vel", 10, cmd_vel_callback);

    // Set up the publishers
    BatteryPub = n.advertise<std_msgs::Int32>("/battery_level", 10);

    // Set up the service client
    ServiceClient = n.serviceClient<i2c_pkg::BatteryLevelSrv>("battery_level");

    // Loop through service calls and publish to topics
    ros::Rate loop_rate(0.5);
    while (ros::ok()) {
        ros::spinOnce();

        publish_battery_level();
        check_and_safe_cmd_vel();

        loop_rate.sleep();
    }

    ROS_INFO("state publisher stopping");

    return 0;
}