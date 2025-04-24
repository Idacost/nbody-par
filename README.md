# N-Body Simulation

This project simulates gravitational interactions between particles using an N-body algorithm. It supports both randomly initialized particles and real solar system data. The simulation is parallelized with OpenMP to allow benchmarking with different thread counts.

## Features

- Simulate gravitational forces between particles
- Supports random or solar system initialization
- Output suitable for visualization
- OpenMP parallelism support

## Usage

```bash
./nbody <input> <dt> <steps> <print_every>
```

Build Instructions

To compile the program, use:
```bash
make
```
