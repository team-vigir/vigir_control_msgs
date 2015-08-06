# For interfacing robot-level state commands via the AtlasRobotInterface

Header header

# permissible values for robot state Command
uint8 UNKNOWN                       =   0 # Null command
uint8 CONNECT                       =   1 # Connect to robot
uint8 DISCONNECT                    =   2 # Disconnect from robot
uint8 START_HYDRAULIC_PRESSURE_OFF  =   4 # Start pump bit
uint8 START_HYDRAULIC_PRESSURE_ON   =   6
uint8 STOP                          =   8 # Stop pump

# Allow limited behavioral commands from RobotState Command
uint8 FREEZE                        =  16 # Switch to FREEZE behavior
uint8 STAND                         =  32 # Stand mode
uint8 STAND_PREP                    =  33 # Stand preparation (only from FREEZE, assumes belayed)
uint8 CALIBRATE                     =  64 # Calibrate robot biases (only from FREEZE, assumes belayed)
uint8 CALIBRATE_ARMS                = 128 # Calibrate robot arms   (only from FREEZE, assumes belayed)
uint8 CALIBRATE_ARMS_FREEZE         = 144 # Calibrate robot arms with other joints frozen   (only from FREEZE, assumes belayed)

uint8 state_command                # can be any of above values

