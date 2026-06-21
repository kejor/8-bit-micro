---
name: user-profile
description: Kevin's background, goals, toolchain, and implementation approach for the 6502 project
metadata:
  type: user
---

Kevin is building an 8-bit microprocessor inspired by the MOS 6502 as a summer 2026 learning and portfolio project. Hard deadline: 2026-10-01 (~16 weeks from 2026-06-11).

He has prior hands-on experience with:
- Xschem (schematic capture) — comfortable
- ngspice (analog/mixed-signal SPICE simulation) — comfortable
- IIC-OSIC-TOOLS (Docker-based open-source IC design environment) — fully operational as of 2026-06-11; start script fixed to mount project root and auto-set GF180MCU-D as default PDK

Goals:
1. Deep learning — understand chip design from gates up (logic gates, ALU, registers, bus, control unit, instruction decode)
2. Portfolio artifact — demonstrable, interview-ready by early 2027

Implementation style: FULL-CUSTOM / analog-style flow
- Schematic entry in Xschem (sky130 PDK cells or hand-drawn transistor-level)
- Simulation via ngspice
- Layout in Magic VLSI
- Verification: DRC/LVS via Magic + Netgen
- Synthesis/PnR: OpenROAD (if needed), KLayout for GDSII viewing
- PDK: GlobalFoundries GF180MCU-D (switched from SkyWater sky130 on 2026-06-11)
- Environment: IIC-OSIC-TOOLS (Docker)

NOT an RTL/HDL project. No Verilog, no FPGA synthesis.

Phase plan:
- May–June: Environment setup + architecture study + first cells
- July: Core datapath (ALU, registers)
- August: Control unit + integration
- September: Full sim, DRC/LVS, polish, documentation

As of 2026-06-11: toolchain is fully operational. First subcircuit (inverter) committed in Xschem with GF180MCU-D primitives (inv.sch, inv.sym, inv_tb.sch). ngspice simulation of inverter passed. Three milestones complete — project is on track entering week 2.

[[project-status]]
