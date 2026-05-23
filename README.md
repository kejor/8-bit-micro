# 6502 — MOS 6502 Chip Design

A from-scratch silicon implementation of the MOS 6502 microprocessor, developed using the open-source [IIC-OSIC-TOOLS](https://github.com/iic-jku/iic-osic-tools) environment.

## Project Goal

Tape out a functional 6502 core using an open PDK (sky130 or similar), following the original architecture and register-transfer behavior of the MOS Technology 6502.

## Toolchain

| Tool | Purpose |
|------|---------|
| [IIC-OSIC-TOOLS](https://github.com/iic-jku/iic-osic-tools) | Container with all EDA tools pre-installed |
| [Xschem](https://xschem.sourceforge.io) | Schematic capture |
| [Magic VLSI](http://opencircuitdesign.com/magic/) | Layout editor |
| [ngspice](https://ngspice.sourceforge.io) | SPICE simulation |
| [OpenROAD](https://openroad.readthedocs.io) | RTL-to-GDS flow |
| [KLayout](https://www.klayout.de) | GDS viewer / DRC |

## Repository Structure

```
6502/
├── rtl/          # Verilog RTL source files
├── schematics/   # Xschem schematics (.sch)
├── layout/       # Magic layout files (.mag) and GDS
├── sim/          # Simulation testbenches and scripts
├── docs/         # Architecture notes, datasheets, references
└── scripts/      # Automation and helper scripts
```

## Getting Started

1. Install and launch IIC-OSIC-TOOLS (Docker-based):
   ```bash
   docker pull iicjku/iic-osic-tools
   ```
2. Clone this repo inside the container's shared workspace.
3. Open schematics with Xschem, run simulations via ngspice.

## References

- [MOS 6502 Datasheet](http://archive.6502.org/datasheets/mos_6500_mpu_preliminary_may_1976.pdf)
- [Visual 6502 Project](http://www.visual6502.org/)
- [6502.org](http://www.6502.org/)
- [IIC-OSIC-TOOLS Documentation](https://github.com/iic-jku/iic-osic-tools)
