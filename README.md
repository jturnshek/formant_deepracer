# formant_deepracer

This repository contains an entire catkin workspace that is built to provide more standard endpoints for the capabilities of an [AWS Deepracer](https://www.amazon.com/dp/B07JMHRKQG).

It adds the following ros topics:

| ROS topic                | ROS type                    | direction  |
| ------------------------ | --------------------------- | ---------- |
| /front_camera/compressed | sensor_msgs/CompressedImage | publisher  |
| /cmd_vel                 | geometry_msgs/Twist         | subscriber |
| /battery_level           | std_msgs/Int32              | publisher  |
| /start                   | std_msgs/Bool               | subscriber |
| /active                  | std_msgs/Bool               | publisher  |


## Setup
#### Run though car setup 

https://d1.awsstatic.com/deepracer/getstarted.pdf

#### Dependencies

Add apt dependencies:
```bash
sudo apt install build-essential ros-kinetic-vision-opencv ros-kinetic-cv-bridge ros-kinetic-image-transport-plugins ros-kinetic-tf ros-kinetic-tf2-tools tmux vim libvips42
```

#### Clone this repository
```
cd && git clone --recurse-submodules https://github.com/jturnshek/formant_deepracer.git catkin_ws
```

#### Build the repository
```
source /opt/ros/kinetic/setup.sh
cd ~/catkin_ws
catkin_make
```

#### Set the ros nodes to start on boot

In `/etc/rc.local`, add the command:
```
runuser -l  deepracer -c 'sleep 15 && /home/deepracer/catkin_ws/start.sh'
```

#### Set up the formant agent

1. Follow the steps to create a new device [here](https://app.formant.io/create-device).

2. When installing, you will be asked if you are using ROS:
```
Would you like to configure the Agent with ROS?

Are you using ROS? [yes/no]
```
Enter `yes` and proceed.

You will then be asked to specify a catkin workspace:
```
Enter the absolute path of your ROS catkin workspace to enable custom message discovery.
 This may be changed at any time by modifying /var/lib/formant/.bashrc. The setup.bash is expected in
 $CATKIN_WS/devel/setup.bash

Catkin Workspace (optional) 
```
Enter `/home/deepracer/catkin_ws` and proceed.

3. Configure the device with the following options:
```
Global Configuration:
  Device tags:
    type: deepracer

ROS: 
  ADD STREAM:
    Telemetry stream name: camera
    Ingestion topic: /front_camera/compressed
  ADD STREAM:
    Telemetry stream name: battery_level
    Ingestion topic: /battery_level
  ADD STREAM:
    Telemetry stream name: start_button
    Ingestion topic: /start
    ROS message path: data
    
Teleoperation:
  ADD ROS TELEOP STREAM:
    Name of ROS topic:
      /cmd_vel
    Type of ROS topic:
      geometry_msgs/Twist
      command
  ADD ROS TELEOP STREAM:
    Name of ROS topic:
      /front_camera/compressed
    Type of ROS topic:
      sensor_msgs/CompressedImage
      observe
  ADD ROS TELEOP STREAM:
    Name of ROS topic:
      /start
    Type of ROS topic:
      std_msgs/Bool
      command
  ADD ROS TELEOP STREAM:
    Name of ROS topic:
      /active
    Type of ROS topic:
      std_msgs/Bool
      observe
```

## Running

The ros nodes should now start in a tmux session (for introspection purposes) called `formant_deepracer` upon startup, so reset the car if you haven't already. 

If you'd like to run the launch file directly, you can do so with:
```
source catkin_ws/devel/setup.sh
roslaunch catkin_ws/launch/formant.launch
```

The Formant configuration will allow you to teleoperate the robot. It is possible that in some cases, the `/START` button may need to be pressed in order to enable the motors.
