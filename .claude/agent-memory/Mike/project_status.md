---
name: project-status
description: Current milestone completion state and timeline risk flags for the 6502 MCU project
metadata:
  type: project
---

As of 2026-06-06, the project is in the very early stages with ~17 weeks to the 2026-10-01 deadline.

**Major pivot on 2026-06-06:** Project scope expanded from pure 6502 CPU to a mixed-signal MCU — adding analog blocks (bandgap reference, DAC, ADC, clock generation, possibly a 5V-compatible process). After PM assessment, agreed scope was narrowed to: **CPU core + one analog peripheral (bandgap reference)**. Full ADC/DAC/clock-gen deferred as too ambitious.

Milestone status:
- [ ] Toolchain verified / IIC-OSIC-TOOLS smoke test
- [ ] Architecture study / reference schematic reviewed
- [ ] First subcircuit in Xschem (e.g., NAND gate or inverter from sky130 primitives)
- [ ] ngspice simulation of first subcircuit passing
- [ ] 8-bit ALU schematic + sim
- [ ] Register file schematic + sim
- [ ] Instruction fetch / decode schematic
- [ ] Subset of 6502 instructions working in sim (target: ~12 key instructions)
- [ ] Bandgap reference design + ngspice corner sims (TT/SS/FF/SF/FS, temp sweep)
- [ ] Bandgap Magic VLSI layout, DRC/LVS clean
- [ ] Integration: bandgap feeding bias into CPU or analog interface defined
- [ ] Magic VLSI layout of key digital cells
- [ ] DRC/LVS clean on digital blocks
- [ ] End-to-end simulation of a simple program
- [ ] GitHub cleanup + README + architecture diagram
- [ ] Portfolio write-up / demo

Recommended phase plan (revised 2026-06-06):
- Weeks 1-2  (Jun 06 - Jun 20): Toolchain up, IIC-OSIC-TOOLS verified, first cell simulating
- Weeks 3-8  (Jun 20 - Aug 01): CPU core — ALU, registers, fetch/decode, first instructions executing
- Weeks 9-11 (Aug 01 - Aug 22): Bandgap reference — design, sim, corners, layout, DRC/LVS
- Weeks 12-15 (Aug 22 - Sep 19): Integration + end-to-end sim, loose MCU story
- Weeks 16-17 (Sep 19 - Oct 01): Polish, documentation, portfolio write-up

Risk flags (as of 2026-06-06):
- Zero milestones complete as of June 6 — toolchain unblock is week 1 priority, no exceptions
- MCU scope pivot is a risk amplifier — must hold the line on CPU + bandgap only
- Full-custom transistor-level CPU is already extremely ambitious; analog on top makes discipline critical
- IIC-OSIC-TOOLS reinstall can eat days if Docker issues arise
- ADC, DAC, clock gen, and 5V process pivot are explicitly out of scope for October deadline

**Why:** Deadline is hard (job hunting 2027). A CPU + one polished analog block is a better portfolio story than three half-finished blocks. Scope discipline is the difference between shipping and slipping.
**How to apply:** Hold the line on CPU + bandgap. If CPU slips past August 1, cut bandgap scope (just design + sim, no layout). Raise alarm if any week goes by with zero commits.

[[user-profile]]
