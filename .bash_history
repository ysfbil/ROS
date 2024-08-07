alias vim='/usr/bin/vim -c "q!" < ~/.bashrc 2> /dev/null; unalias vim; /usr/bin/vim' 
alias vi='/usr/bin/vim -c "q!" < ~/.bashrc 2> /dev/null; unalias vi; /usr/bin/vim' 
clear; source ~/.bashrc; 
cd ~/capkin_ws
ls
cd ~/catkin_ws
catkin_create_pkg iha std_msgs roscpp rospy actionlib actionlib_msgs
cd     ~/catkin_ws/src/iha/urdf
cd ~/catkin_ws/src
catkin_create_pkg iha std_msgs roscpp rospy actionlib actionlib_msgs
cd     ~/catkin_ws/src/iha/urdf
check_urdf     drone.urdf
ls
check_urdf     drone.urdf
urdf_to_graphiz      drone.urdf
evince     drone.pdf
urdf_to_graphiz      drone.urdf
evince     drone.pdf
roslaunch iha iha.launch 
git add .
cd ~
git add .
ls
git add .
git init
git add .
git config --global user.email "33799483+ysfbil@users.noreply.github.com"
git config --global user.name "ysfbil"
git commit -m "07_08_2024 commit"
git branch -M main
git remote add origin https://github.com/ysfbil/ROS.git
git push -u origin main
git pull origin main
git push -u origin main
git pull origin main
git push -u origin main
git pull origin main
git fetch origin main
git pull origin main --allow-unrelated-histories
git push -u origin main
