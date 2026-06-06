---
name: project-decisions
description: Key technical and scope decisions made on the 6502 project
metadata:
  type: project
---

**Toolchain chosen (2026-05-23)**: IIC-OSIC-TOOLS environment — Xschem (schematic entry), Magic VLSI (layout), ngspice (simulation), OpenROAD (P&R), KLayout (GDS viewing/DRC).

**PDK**: sky130 (SkyWater 130nm open-source PDK).

**Implementation style**: Full-custom / analog-style flow (Xschem + Magic), not purely RTL-to-GDS. This is significantly more ambitious than an HDL-only simulation project.

**Scope TBD**: Full 6502 has 56 instructions and ~3,500 transistors. Whether Kevin targets a complete implementation or a meaningful subset needs to be decided by end of June once toolchain proficiency is established.

**Why**: Kevin wants physical chip design experience (sky130 + Magic), not just HDL simulation. This distinguishes the portfolio artifact.

**How to apply**: Always scope suggestions with the full-custom flow in mind. Cell-level design and simulation comes before integration. DRC/LVS is a hard requirement, not optional polish.

**Related memories**: [[project-status]], [[user-profile]]
