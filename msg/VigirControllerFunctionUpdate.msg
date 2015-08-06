#
# This ROS message allows user to modify the controller function to be modified
# on a "per chain" basis

# Controller modes (should be same as FlorJointController.h + 1)
int8 UNKNOWN_MODE        = -1
int8 MAINTAIN_CURRENT    =  0   # Maintain current active controller
int8 POSITION_CONTROL    =  1   # Basic position control
int8 FORCE_CONTROL       =  2   # Force control
int8 TRAJECTORY_CONTROL  =  3   # Joint trajectory following
int8 TRAJECTORY_LOOP     =  4   # Keep repeating the same trajectory segment
int8 TRACKING_CONTROL    =  5   # Track joint states (under BDI control)
int8 GRAVITY_COMPENSATION=  6   # Overload for adding to position/trajectory control
int8 MAX_CONTROLLER_TYPE =  6   # Gravity compensation is not full type


Header header
int8  controller_mode           # -1=no change in mode, 0 or above set controller mode
int8  use_gravity_compensation  #  0= maintain current, -1=turn off compensation, 1 = use gravity compensation in Position and Trajectory modes

# optional gain adjustment
int8   controller_type_gains #  0=no change, or > 0 to modify gains for specific controller mode above

# Either set vector same size as appendage chain, or set single value to set all joints in chain to same value (per gain basis)
float32[] k_q_p      # Position error gain, in N*m/rad.
float32[] k_q_i      # Integral of position error gain, in N*m/(rad*s).
float32[] k_qd_p     # Derivative error gain, in N*m/(rad/s).
float32[] k_f_p      #  Proportional force feedback gain.
float32[] ff_qd      #  Feedforward velocity gain.
float32[] ff_qd_d    #  Feedforward desired velocity gain.
float32[] ff_f_d     #  Feedforward desired force gain.
float32[] ff_const   #  Constant force term.
float32[] ff_bang    #  Constant bang/bang term


