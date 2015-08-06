# Robot status information from AtlasRobotInterface

time    stamp

# Current robot state
uint64  robot_timestamp                      # Atlas internal timestamp
uint64  seq_id                               # Transmission id of data from robot
uint64  processed_to_robot_packet_seq_id     # Sequence id of last to-robot packet received and processed
uint8   robot_connected                      # Robot connection is active
uint8   robot_run_state                      # State of robot
uint8   robot_hydraulic_level                # Requested pressure setting

uint64  robot_status_flags                   # Set of AtlasRobotStatus flags
uint8   robot_critical_fault                 # Critical fault detected

# Robot operating parameters
float32 pump_desired_pressure                # Commanded pressure to the pump, in PSI
float32 pump_inlet_pressure                  # Pressure at pump inlet, in PSI
float32 pump_supply_pressure                 # Pressure at pump supply, in PSI
float32 pump_return_pressure                 # Pump return pressure, in PSI
float32 air_sump_pressure                    # Air pressure in accusump
float32 pump_time_meter                      # Total run time of the pump
float32 current_pump_rpm                     # Current RPM of pump
float32 pump_supply_temperature              # Oil Temp at pump inlet (deg C) (90 warn, 95 fault)
float32 motor_temperature                    # Motor winding temp (deg C) (125 warn, 150 fault)
float32 motor_driver_temperature             # Driver temp (deg C - 55 warn, 60 fault)
