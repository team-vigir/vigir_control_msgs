# Feedback about control mode
# Contained Atlas specific data before

Header header

uint8 control_mode             # Main controller mode (index in to allowable control modes)
#uint8 bdi_commanded_behavior   # BDI Interface mode requested
#uint8 bdi_desired_behavior     # BDI Interface mode desired behavior (should be requested with lag)
uint8 bdi_current_behavior     # BDI Interface mode current behavior (e.g. reverts to STAND if no footsteps)