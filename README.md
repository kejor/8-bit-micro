# 8-bit-micro — 8-bit Microcontroller (6502-Inspired)

A from-scratch full-custom silicon implementation of an 8-bit microcontroller inspired by the MOS 6502, developed using the open-source [IIC-OSIC-TOOLS](https://github.com/iic-jku/iic-osic-tools) environment and the SkyWater sky130 PDK.

## Project Goal

Design and simulate a functional 6502-inspired 8-bit CPU core plus a bandgap reference analog peripheral using a full-custom schematic-driven flow — no RTL synthesis. Target: a clean ngspice simulation of a subset of 6502 instructions and a DRC/LVS-clean layout.

## Toolchain

| Tool | Purpose |
|------|---------|
| [IIC-OSIC-TOOLS](https://github.com/iic-jku/iic-osic-tools) | Docker container with all EDA tools pre-installed |
| [Xschem](https://xschem.sourceforge.io) | Schematic capture (transistor-level, sky130 PDK) |
| [ngspice](https://ngspice.sourceforge.io) | SPICE simulation |
| [Magic VLSI](http://opencircuitdesign.com/magic/) | Layout editor + DRC/LVS |
| [Netgen](http://opencircuitdesign.com/netgen/) | LVS netlist comparison |
| [KLayout](https://www.klayout.de) | GDS viewer |

## Repository Structure

```
8-bit-micro/
├── schematics/   # Xschem schematics (.sch)
├── layout/       # Magic layout files (.mag) and GDS
├── sim/          # ngspice testbenches and scripts
├── docs/         # Architecture notes, datasheets, references
├── scripts/      # Automation and helper scripts
└── tools/        # Environment setup scripts (e.g. IIC-OSIC-TOOLS launcher)
```

## Getting Started

1. Launch IIC-OSIC-TOOLS using the provided script:
   ```bash
   bash tools/start_x.sh
   ```
2. Clone this repo inside the container's shared workspace (`~/eda/designs/`).
3. Open schematics with Xschem, run simulations via ngspice.

## References

- [MOS 6502 Datasheet](http://archive.6502.org/datasheets/mos_6500_mpu_preliminary_may_1976.pdf)
- [Visual 6502 Project](http://www.visual6502.org/)
- [6502.org](http://www.6502.org/)
- [SkyWater sky130 PDK](https://github.com/google/skywater-pdk)
- [IIC-OSIC-TOOLS Documentation](https://github.com/iic-jku/iic-osic-tools)
