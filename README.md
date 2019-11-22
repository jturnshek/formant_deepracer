# formant_deepracer

### Setup

Run though the car's setup process: https://d1.awsstatic.com/deepracer/getstarted.pdf

Install dependencies:
```
sudo apt install ros-kinetic-vision-opencv ros-kenetic-cv-bridge
```

Clone this repository:
```
cd && git clone git@github.com:jturnshek/formant_deepracer.git
```

Build the repository
```
cd ~/formant_deepracer
catkin_make
```

### Running

Launch with:
```
source formant_deepracer/devel/setup.sh
roslaunch formant_deepracer/launch/formant.launch
```
