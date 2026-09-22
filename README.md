# PWM-CONTROLLER-IN-VERILOG

A Pulse Width Modulation (PWM) controller implemented in Verilog, built to transition my embedded C/C++ background into FPGA and hardware design. 

## Overview
This project models an automotive interior LED dimming system, utilizing a configurable duty cycle to control LED brightness. 

* **Language:** Verilog
* **Target Application:** Automotive lighting control (LED dimming)

## Background & Motivation
Coming from a software background with C and C++, I approached Verilog by drawing parallels to procedural programming, while appreciating how SystemVerilog introduces modern paradigms like object-oriented programming concepts and advanced data structures. This project serves as a foundational step toward an FPGA career by focusing on hardware description, timing, and control logic.

## Implementation Details
* **Counter-based PWM:** Utilizes a free-running internal counter compared against a duty-cycle register.
* **Parameterization:** Designed to allow adjustable bit-widths for flexible resolution.

## How to Simulate
This project was developed and tested using [EDA Playground](https://www.edaplayground.com/). 

1. Copy the design code (`pwm controller.v`) into the **Design** panel and the testbench (`tb_pwm_controller.v`) into the **Testbench** panel.
2. Under **Tools & Simulators**, select a supported simulator (such as *Icarus Verilog*).
3. Ensure options like **Run simulation** are checked, and check **Open EPWave after run** if you want to inspect the output waveforms.
4. Click **Run**.
