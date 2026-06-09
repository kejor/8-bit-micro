---
name: user-profile
description: Kevin's background, goals, toolchain, and implementation approach for the 6502 project
metadata:
  type: user
---

Kevin is building an 8-bit microprocessor inspired by the MOS 6502 as a summer 2026 learning and portfolio project. Hard deadline: 2026-10-01 (~17 weeks from 2026-06-06).

He has prior hands-on experience with:
- Xschem (schematic capture) — comfortable
- ngspice (analog/mixed-signal SPICE simulation) — comfortable
- IIC-OSIC-TOOLS (Docker-based open-source IC design environment) — used it summer 2025, familiar with the workflow but needs to reinstall/reconfigure after the gap

Goals:
1. Deep learning — understand chip design from gates up (logic gates, ALU, registers, bus, control unit, instruction decode)
2. Portfolio artifact — demonstrable, interview-ready by early 2027

Implementation style: FULL-CUSTOM / analog-style flow
- Schematic entry in Xschem (sky130 PDK cells or hand-drawn transistor-level)
- Simulation via ngspice
- Layout in Magic VLSI
- Verification: DRC/LVS via Magic + Netgen
- Synthesis/PnR: OpenROAD (if needed), KLayout for GDSII viewing
- PDK: SkyWater sky130
- Environment: IIC-OSIC-TOOLS (Docker)

NOT an RTL/HDL project. No Verilog, no FPGA synthesis.

Phase plan:
- May–June: Environment setup + architecture study + first cells
- July: Core datapath (ALU, registers)
- August: Control unit + integration
- September: Full sim, DRC/LVS, polish, documentation

As of 2026-06-06: repo is scaffold-only. Zero real content committed. IIC-OSIC-TOOLS likely needs reinstall. Nothing in the milestone checklist is complete.

[[project-status]]
