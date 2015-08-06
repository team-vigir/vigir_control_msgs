#  Running statistics on controller operation
#  This mostly maps output from  drcsim / ros / atlas_msgs / msg / ControllerStatistics.msg

int16   seq
time    stamp
float32 last_command_age
float32 command_min_age
float32 command_max_age
float32 command_age_mean
float32 command_age_variance
float32 command_age_window_size

# The following are timings from the internal control loops
float32 mean_update_state_timing
float32 mean_publish_filtered_state_timing
float32 mean_control_calc_timing
float32 mean_stability_calc_timing
float32 mean_controller_update_timing
float32 mean_controller_calc_timing

# min/max since last published update
float32 min_update_state_timing
float32 min_publish_filtered_state_timing
float32 min_control_calc_timing
float32 min_stability_calc_timing
float32 min_controller_update_timing
float32 min_controller_calc_timing

float32 max_update_state_timing
float32 max_publish_filtered_state_timing
float32 max_control_calc_timing
float32 max_stability_calc_timing
float32 max_controller_update_timing
float32 max_controller_calc_timing
