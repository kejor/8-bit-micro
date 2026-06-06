---
name: project-status
description: Current milestone status and overall project timeline for the 6502 design
metadata:
  type: project
---

Project started 2026-05-23. Hard deadline: 2026-10-01 (~19 weeks).

**Target**: Functional MOS 6502 core using sky130 PDK, full custom flow via IIC-OSIC-TOOLS (Xschem, Magic VLSI, ngspice, OpenROAD, KLayout).

**Repo state as of 2026-05-23**: Initial scaffold only. Directories rtl/, schematics/, layout/, sim/, docs/, scripts/ exist with .gitkeep files. One commit: "chore: initial project scaffold".

**Milestone status**:
- [ ] Toolchain verified and environment smoke-tested
- [ ] Architecture study / reference schematic reviewed
- [ ] Schematic entry: first subcircuit (e.g., inverter or NAND gate) in Xschem
- [ ] ngspice simulation of first subcircuit passing
- [ ] ALU cells designed and simulated
- [ ] Register file cells designed and simulated
- [ ] Control unit / instruction decode logic
- [ ] Full datapath integration
- [ ] DRC/LVS clean layout in Magic VLSI
- [ ] OpenROAD place-and-route (if targeting digital flow)
- [ ] Full chip simulation passing a test program
- [ ] Portfolio write-up, README, architecture diagram, sim screenshots

**Phase plan**:
- May–June: Environment setup, architecture study, transistor-level fundamentals, first cells
- July: Core datapath cells (ALU, registers, bus)
- August: Control unit, instruction decode, integration
- September: Full simulation, DRC/LVS, polish, documentation

**Why**: Kevin needs a taped-out (or at minimum tape-out-ready) design artifact for 2027 job hunting.

**How to apply**: Prioritize tasks that unlock the next phase. Flag any week that threatens phase boundaries early.

**Related memories**: [[user-profile]], [[project-decisions]]
