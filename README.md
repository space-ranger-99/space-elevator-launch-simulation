# Space Elevator Launch Simulation
This project simulates the post-launch dynamics of a spacecraft launched from a space elevator. The script demonstrates the dynamics for various initial altitude offsets from geostationary orbit, imitating the launch from a simplified space elevator.

## Installation
To use this script, you will need MATLAB installed on your system. You can download and install MATLAB from the official website.

## Usage
1. Download the `space_elevator_launch_simulation.m` script and save it to your local MATLAB working directory.
2. Open MATLAB, and navigate to the folder containing the script.
3. Run the following command in the MATLAB command windows:
```matlab
space_elevator_launch_simulation
```
![Launch Results](space_elevator_launch_simulation_results.png)
This will run the simulation and generate a plot of the altitude and velocity of the spacecraft over time.

## Function Overview
The script consists of the following main functions:
- `init_params`: Initializes the system parameters.
- `solve_dynamics`: Calculates the launch dynamics based on the gravitational parameter and geostationary orbit rotation rate.
- `plot_results`: Plots the simulation results.

## Author
**Alexander Little**

## Affiliation
**Toronto Metropolitan University**
