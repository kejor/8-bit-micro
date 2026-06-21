---
name: user-profile
description: Kevin's background, goals, toolchain, and implementation approach for the 6502 project
metadata:
  type: user
---

Kevin is building an 8-bit microcontroller (NOT 6502-inspired — pivot on 2026-06-21) as a summer 2026 learning and portfolio project. Hard deadline: 2026-10-01 (~14 weeks from 2026-06-21).

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

As of 2026-06-11: toolchain is fully operational. First subcircuit (inverter) committed in Xschem with GF180MCU-D primitives (inv.sch, inv.sym, inv_tb.sch). ngspice simulation of inverter passed.

As of 2026-06-21: AND gate schematic and testbench complete. Kevin is working bottom-up on logic gate cells (AND, OR, XOR) before assembling a full adder — the intended building block for the ALU. OR gate and XOR gate are next.

[[project-status]]
