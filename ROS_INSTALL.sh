update-locale LANG=C LANGUAGE=C LC_ALL=C LC_MESSAGES=POSIX
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116
apt-get update
apt-get install ros-indigo-ros-base
apt-get install python-rosdep
rosdep init
rosdep update
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc

apt-get install python-rosinstall