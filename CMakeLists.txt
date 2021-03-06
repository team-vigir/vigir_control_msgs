cmake_minimum_required(VERSION 2.8.3)
project(vigir_control_msgs)

find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs geometry_msgs message_generation)

 add_message_files(
    FILES
    VigirControllerStatistics.msg
    VigirControlMode.msg
    VigirControlModeCommand.msg
    VigirControllerFunctionUpdate.msg
#    FlorGravityCompensationGain.msg
    VigirExecuteMotionCommand.msg
    VigirRobotStateCommand.msg
    VigirRobotFault.msg
    VigirRobotStatus.msg
    VigirHandMass.msg
    VigirPPSOffset.msg
 )

## Generate services in the 'srv' folder
 add_service_files(
   FILES
   FlorExecuteMotion.srv
 )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs
   geometry_msgs
 )

###################################################
## Declare things to be passed to other projects ##
###################################################

## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES vigir_control_msgs
  CATKIN_DEPENDS roscpp rospy std_msgs geometry_msgs message_runtime
  #DEPENDS
)

###########
## Build ##
###########
## Specify additional locations of header files
set( HEADERS
)

set( SOURCE
)
## Specify additional locations of header files
include_directories(include
  ${catkin_INCLUDE_DIRS}
)

#add_library(${PROJECT_NAME} ${HEADERS} ${SOURCE})
#target_link_libraries(${PROJECT_NAME} ${QT_LIBRARIES})

## Declare a cpp library
# add_library(${PROJECT_NAME}
#   src/${PROJECT_NAME}/vigir_ocs_msgs.cpp
# )

## Declare a cpp executable
# add_executable(vigir_ocs_msgs_node src/vigir_ocs_msgs_node.cpp)

## Add dependencies to the executable
# add_dependencies(vigir_ocs_msgs_node ${PROJECT_NAME})

## Specify libraries to link a library or executable target against
# target_link_libraries(vigir_ocs_msgs_node
#   ${catkin_LIBRARIES}
# )

#############
## Install ##
#############

## Mark executable scripts (Python etc.) for installation
## not required for python when using catkin_python_setup()
# install(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark executables and/or libraries for installation
# install(TARGETS vigir_ocs_msgs vigir_ocs_msgs_node
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_vigir_ocs_msgs.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
