# formant_deepracer

This repository contains an entire catkin workspace that is built to provide more standard endpoints for the capabilities of an [AWS Deepracer](https://www.amazon.com/dp/B07JMHRKQG).


### Setup
##### Run though car setup 

https://d1.awsstatic.com/deepracer/getstarted.pdf


##### Install dependencies
```
sudo apt install tmux vim ros-kinetic-vision-opencv ros-kenetic-cv-bridge
```

##### Set up the formant agent

1. Follow the steps to create a new device [here](https://app.formant.io/create-device).
2. Configure the device with the following options:
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

##### Clone this repository
```
cd && git clone --recurse-submodules git@github.com:jturnshek/formant_deepracer.git catkin_ws
```

##### Build the repository
```
cd ~/catkin_ws
catkin_make
```

##### Set the ros nodes to start on boot

In `/etc/rc.local`, add the command:
```
runuser -l  deepracer -c 'sleep 15 && /home/deepracer/catkin_ws/start.sh'
```


### Running

The ros nodes should now start in a tmux session called `formant_deepracer` upon reset. 

If you'd like to run the launch file directly, you can do so with:
```
source catkin_ws/devel/setup.sh
roslaunch catkin_ws/launch/formant.launch
```
