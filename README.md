# 🚀 Space Elevator Launch Simulation
This project is a course project that simulates the post-launch dynamics of a spacecraft launched from a simplified space elevator model. The script demonstrates the dynamics for various initial altitude offsets from geostationary orbit, aiming to provide a basic understanding of the spacecraft's behaviour under such conditions.

The purpose of this project is to explore the concept of space elevators as an alternative method for launching spacecraft and to gain preliminary insights into the potential challenges and opportunities associated with this approach. As a course project, this simulation serves as a starting point for further research and investigation, and it is not intended to be a comprehensive study or an industry-standard solution.

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

## Function Overview
The script consists of the following main functions:
- `init_params`: Initializes the system parameters.
- `solve_dynamics`: Solves the launch dynamics using the `ode45` solver.
- `spacecraft_launch_dynamics`: Calculates the launch dynamics based on the gravitational parameter and geostationary orbit rotation rate.
- `plot_results`: Plots the simulation results.

## Author
**Alexander Little**
- 🏫 Toronto Metropolitan University
- 📧 corbyn.little@torontomu.ca
- 💼 [LinkedIn](https://www.linkedin.com/in/aclittle/)
- 📚 [GitHub](https://github.com/space-ranger-99)
