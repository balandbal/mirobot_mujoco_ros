cmake_minimum_required(VERSION 3.0.2)
project(mirobot_mujoco_ros)

add_compile_options(-std=c++17)

find_package(catkin REQUIRED COMPONENTS)

catkin_package(
  CATKIN_DEPENDS
    xacro
    mirobot_urdf
    mujoco_ros
    mujoco_ros_sensors
    mujoco_ros_control
    mujoco_ros_mocap_control_plugin
)

###########
## Build ##
###########

include_directories(
  ${catkin_INCLUDE_DIRS}
)

#############
## Install ##
#############

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/config
)

install(DIRECTORY assets
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/assets
)

#############
## Testing ##
#############
