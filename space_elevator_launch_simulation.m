% SPACECRAFT_LAUNCH_SIMULATION simulates the post-launch dynamics of a 
% spacecraft from a space elevator.
%
% This script demonstrates the post-launch dynamics of a spacecraft for 
% various initial altitude offsets from geostationary orbit, imitating 
% launching from a simplified space elevator. It defines the system 
% parameters, solves the launch dynamics, and plots the results for both 
% altitude and velocity over time.
%
% The script consists of the following main functions:
%   - init_params: Initializes the system parameters.
%   - solve_dynamics: Solves the launch dynamics using the ode45 solver.
%   - spacecraft_launch_dynamics: Calculates the launch dynamics based on 
%     the gravitational parameter and geostationary orbit rotation rate.
%   - plot_results: Plots the simulation results.
%
% Usage:
%   space_elevator_launch_simulation()
%
% See also: ode45
%
% Author: Alexander Little
% Affiliation: Toronto Metropolitan University

function space_elevator_launch_simulation()
    params = init_params();
    altitude_offsets = [-10000 0 10000 20000 30000];
    num_altitudes = length(altitude_offsets);

    figure;
    for i = 1:num_altitudes
        [t, y] = solve_dynamics(params, altitude_offsets(i));
        plot_results(t, y);
    end
    saveas(gcf, 'space_elevator_launch_simulation_results', 'png');
end

% Initialize system parameters
function params = init_params()
    params = struct('gravitational_parameter', 398500, ... 
        'geostationary_orbit_radius', 42164);
    params.geostationary_orbit_rotation_rate = ... 
        sqrt(params.gravitational_parameter / ... 
        params.geostationary_orbit_radius ^ 3);
end

% Solve the launch dynamics
function [t, y] = solve_dynamics(params, altitude_offset)
    y0 = [params.geostationary_orbit_radius + altitude_offset 0];
    tspan = [0 10000];
    [t, y] = ode45(@(t, y) spacecraft_launch_dynamics(t, y, params), ... 
        tspan, y0);
end

% Solve the launch dynamics
function dydt = spacecraft_launch_dynamics(~, y, params)
    distance = y(1);
    velocity = y(2);
    acceleration = -(params.gravitational_parameter / distance ^ 2) + ...
        params.geostationary_orbit_rotation_rate ^ 2 * distance;
    dydt = [velocity; acceleration];
end

% Plot the simulation results
function plot_results(t, y)
    subplot(2, 1, 1);
    hold on;
    plot(t, y(:, 1));
    xlabel('Time (s)');
    ylabel('Altitude (km)');
    title('Time History of Post-Launch Spacecraft Altitudes');
    grid on;

    subplot(2, 1, 2);
    hold on;
    plot(t, y(:, 2));
    xlabel('Time (s)');
    ylabel('Velocity (km/s)');
    title('Time History of Post-Launch Spacecraft Velocities');
    grid on;
end
