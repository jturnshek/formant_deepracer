# formant_deepracer

### Setup
##### Run though car setup 

https://d1.awsstatic.com/deepracer/getstarted.pdf


##### Install dependencies
```
sudo apt install ros-kinetic-vision-opencv ros-kenetic-cv-bridge
```

##### Install the formant agent

https://app.formant.io/create-device


##### Clone the repository
```
cd && git clone --recurse-submodules git@github.com:jturnshek/formant_deepracer.git catkin_ws
```


##### Build the repository
```
cd ~/catkin_ws
catkin_make
```


### Running

##### Launch
```
~/catkin_ws/start.sh
```
