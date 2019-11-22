#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include "i2c_pkg/BatteryLevelSrv.h"

ros::ServiceClient ServiceClient;
ros::Publisher BatteryPub;

int publish_battery_level()
{
    i2c_pkg::BatteryLevelSrv battery_level_service;
    if (ServiceClient.call(battery_level_service)) {
        ROS_INFO("battery call succeeded");

        std_msgs::Int32 battery_level_msg;
        battery_level_msg.data = battery_level_service.response.level;
        BatteryPub.publish(battery_level_msg);
    } else {
        ROS_ERROR("battery call failed");
    }
}

int main(int argc, char **argv)
{
    ROS_INFO("state publisher starting");

    ros::init(argc, argv, "state_publisher");
    ros::NodeHandle n;

    // Set up the publishers
    BatteryPub = n.advertise<std_msgs::Int32>("/battery_level", 10);

    // Set up the service client
    ServiceClient = n.serviceClient<i2c_pkg::BatteryLevelSrv>("battery_level");

    // Loop through service calls and publish to topics
    ros::Rate loop_rate(0.2);
    while (ros::ok()) {
        publish_battery_level();

        ros::spinOnce();
        loop_rate.sleep();
    }

    ROS_INFO("state publisher stopping");

    return 0;
}