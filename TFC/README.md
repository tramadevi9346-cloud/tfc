# Traffic Light Controller using Verilog

## Overview

This project implements a Traffic Light Controller using Verilog HDL. The controller manages traffic lights for two roads using a finite state machine (FSM).

## Features

- Automatic light switching
- Four traffic states
- Clock-driven operation
- Reset functionality
- Verilog testbench
- Waveform simulation

## State Diagram

Road A        Road B

Green         Red
Yellow        Red
Red           Green
Red           Yellow

Then repeats.

## Inputs

| Signal | Description |
|---------|-------------|
| clk | System Clock |
| reset | Reset |

## Outputs

Road A:
- Green
- Yellow
- Red

Road B:
- Green
- Yellow
- Red

## Files

src/
- traffic_light_controller.v

testbench/
- traffic_light_controller_tb.v

simulation/
- waveform.png
- traffic_light.vcd

## Software Used

- Icarus Verilog
- GTKWave
- Vivado / ModelSim (optional)

## How to Run

Compile

```bash
iverilog -o traffic traffic_light_controller.v traffic_light_controller_tb.v
```

Run

```bash
vvp traffic
```

Open waveform

```bash
gtkwave traffic_light.vcd
```

## Author

Your Name
