# Allow turning gravity compensation on and off
Header header

# Master control 0=no compensation, 1=compensate per k_gravity vector, 2=full compensation
uint8     use_gravity_compensation

# Vector of multiplier [0.0, 1.0] for gravity compensation
float32[] k_gravity
