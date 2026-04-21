# I2C Master Design (Verilog)

## Objective
To design and implement a basic I2C Master and verify it through simulation and FPGA implementation.

## Tools Used
- ModelSim SE 5.5a (Simulation)
- Xilinx ISE 7.1i (Synthesis, Place & Route)

## Project Structure
- rtl/ → Verilog design (i2c_master.v)
- tb/ → Testbench (i2c_master_tb.v)
- sim/ → Simulation logs and waveform
- ise/ → FPGA outputs and reports
- screenshots/ → Waveform images
- docs/ → Results summary

## Flow
1. Designed I2C Master in Verilog RTL
2. Simulated using ModelSim
3. Verified waveform (SDA, SCL, START, STOP, ACK)
4. Synthesized using Xilinx ISE
5. Completed Place and Route (PnR)
6. Generated programming file (.bit)

## Results
- Successful I2C data transmission
- START and STOP conditions verified
- Basic I2C data transmission verified
- No synthesis or implementation errors
- Programming file generated successfully

