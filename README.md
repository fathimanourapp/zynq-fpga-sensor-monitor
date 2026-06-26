
# Real-Time Smart Sensor Monitoring and Alert System using Zynq SoC and FPGA Acceleration

A hardware/software co-design project demonstrating real-time sensor processing on the Xilinx Zynq-7000 SoC using custom FPGA acceleration. The system integrates programmable logic (PL) and the ARM Cortex-A9 processing system (PS) to perform low-latency sensor filtering, anomaly detection, and multi-level alert generation through AXI-based communication.

## Overview

Traditional microcontroller-based sensor monitoring systems execute signal processing sequentially, leading to higher latency and increased CPU utilization. This project addresses these limitations by offloading computationally intensive tasks to FPGA hardware while the embedded ARM processor manages monitoring and communication.

A custom Verilog IP core implements a 4-sample moving average filter, threshold-based alert classification, and anomaly detection. The Processing System communicates with the hardware accelerator through AXI GPIO interfaces, enabling efficient hardware/software interaction and real-time monitoring.

## Key Features

* Custom Verilog hardware accelerator
* 4-sample moving average filter
* Multi-level alert generation
* Hardware-based anomaly detection
* AXI GPIO communication between PS and PL
* Hardware/software co-design on Zynq-7000 SoC
* UART-based monitoring using Embedded C
* Low-latency parallel processing
* Scalable architecture for multiple sensors

## System Architecture

```
Sensor Input
      │
      ▼
Custom Verilog Sensor Filter IP
      │
      ├── Moving Average Filter
      ├── Threshold Detection
      └── Anomaly Detection
      │
      ▼
AXI GPIO
      │
      ▼
ARM Cortex-A9 Processing System
      │
      ▼
UART Console / LEDs
```

## Hardware Components

* Xilinx Zynq-7000 SoC
* ARM Cortex-A9 Processing System
* Programmable Logic (FPGA)
* AXI SmartConnect
* AXI GPIO
* Custom Verilog IP
* LED Status Indicators

## Software Components

* Embedded C application
* AXI GPIO drivers
* UART communication
* Real-time alert monitoring
* Hardware control interface

## Technologies Used

* Verilog HDL
* Embedded C
* Xilinx Vivado
* Xilinx Vitis
* AXI4 Interconnect
* AXI GPIO
* Zynq-7000 SoC
* FPGA Hardware Acceleration


## Implementation Highlights

* Designed a custom FPGA IP core for real-time sensor processing.
* Implemented a hardware moving average filter using shift registers.
* Developed threshold-based multi-level alert generation logic.
* Implemented anomaly detection directly in programmable logic.
* Integrated custom hardware with the ARM processor using AXI GPIO.
* Developed embedded software for real-time hardware monitoring.
* Verified functionality through RTL simulation and hardware implementation.

## Performance Summary

| Metric                     | Result     |
| -------------------------- | ---------- |
| Clock Frequency            | 50 MHz     |
| Worst Negative Slack (WNS) | +11.627 ns |
| Slice LUT Utilization      | 706 (4%)   |
| Slice Register Utilization | 824 (2%)   |
| Estimated Total Power      | 1.524 W    |

The design successfully meets timing constraints while utilizing only a small fraction of FPGA resources, providing ample scalability for future extensions.

## Applications

* Industrial Condition Monitoring
* IoT Edge Devices
* Environmental Monitoring
* Smart Automation
* Embedded Control Systems
* Robotics
* Predictive Maintenance

## Future Enhancements

* Multi-channel sensor acquisition
* DMA-based high-speed data transfer
* AXI4-Stream integration
* Wireless IoT connectivity (Wi-Fi/BLE)
* Machine learning-based anomaly detection
* Real sensor interface using ADC
* Interrupt-driven software architecture
* Linux-based application on Zynq

## Results

The project demonstrates an efficient hardware/software co-design methodology by combining FPGA parallelism with embedded software control. Sensor filtering and anomaly detection are accelerated in hardware, reducing processor workload while achieving deterministic, low-latency operation suitable for real-time embedded systems.

## Author

**Fathima Noura P P**

