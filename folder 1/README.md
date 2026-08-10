# Verilog Subtractor

## Description

A subtractor is a combinational digital circuit used to subtract one binary number from another. This project implements a 1-bit Full Subtractor using Verilog HDL.

## Features

- Designed using Verilog HDL
- Performs binary subtraction
- Generates Difference and Borrow outputs
- Includes a Verilog testbench
- Can be simulated using ModelSim, QuestaSim, Vivado, or Icarus Verilog

## Inputs

- A - First input bit
- B - Second input bit
- Bin - Borrow input

## Outputs

- Difference - Result of subtraction
- Bout - Borrow output

## Full Subtractor Logic

Difference:

Difference = A ^ B ^ Bin

Borrow:

Bout = (~A & B) | (~A & Bin) | (B & Bin)

## Truth Table

| A | B | Bin | Difference | Bout |
|---|---|-----|------------|------|
| 0 | 0 | 0   | 0          | 0    |
| 0 | 0 | 1   | 1          | 1    |
| 0 | 1 | 0   | 1          | 1    |
| 0 | 1 | 1   | 0          | 1    |
| 1 | 0 | 0   | 1          | 0    |
| 1 | 0 | 1   | 0          | 0    |
| 1 | 1 | 0   | 0          | 0    |
| 1 | 1 | 1   | 1          | 1    |

## Tools Used

- Verilog HDL
- ModelSim / QuestaSim / Vivado / Icarus Verilog
- GitHub

## Simulation

The testbench applies all possible input combinations and verifies the Difference and Borrow outputs.

## Expected Result

The simulation output should match the Full Subtractor truth table for all 8 input combinations.

## Applications

- Arithmetic Logic Units (ALUs)
- Digital calculators
- Processors
- Binary arithmetic circuits
- Digital systems

## Author

Created as a Verilog HDL digital design project.