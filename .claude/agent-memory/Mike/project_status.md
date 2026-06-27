---
name: project-status
description: Current milestone completion state and timeline risk flags for the 8-bit MCU project
metadata:
  type: project
---

As of 2026-06-23, the project is in active development with ~14 weeks to the 2026-10-01 deadline.

**Architecture pivot on 2026-06-21:** Project is no longer 6502-inspired. Kevin is now designing an original 8-bit microcontroller (not a 6502 clone or derivative). Instruction set, datapath, and control unit are to be defined by Kevin independently.

**Earlier pivot on 2026-06-06:** Project scope expanded to include analog blocks; narrowed to **CPU core + one analog peripheral (bandgap reference)**. Full ADC/DAC/clock-gen deferred as too ambitious.

**PDK switch on 2026-06-11:** Switched from SkyWater sky130 to **GlobalFoundries GF180MCU-D**. All schematics going forward use GF180MCU-D primitives.

Milestone status:
- [x] Toolchain verified / IIC-OSIC-TOOLS smoke test — done 2026-06-11
- [ ] Architecture study / reference schematic reviewed
- [x] First subcircuit in Xschem (inverter, GF180MCU-D) — done 2026-06-11
- [x] ngspice simulation of first subcircuit passing — done 2026-06-11
- [x] AND gate schematic + testbench — done 2026-06-23 (committed e020771)
- [x] OR gate schematic + testbench — done 2026-06-23 (committed 6de9ea7)
- [x] XOR gate schematic + testbench — done 2026-06-25 (12T complementary static CMOS; topology chosen for rail-to-rail output driving fanned-out result bus and latched flags)
- [x] Half adder (AND + XOR composed) — done 2026-06-26 (first hierarchical cell)
- [ ] Full adder (two half adders + OR carry chain) — **next up**
- [ ] 8-bit ripple-carry adder — **target: simulating by 2026-07-04**
- [ ] 8-bit ALU schematic + sim
- [ ] Register file schematic + sim
- [ ] Instruction fetch / decode schematic
- [ ] Subset of custom ISA instructions working in sim (target: ~12 key instructions)
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

Risk flags (updated 2026-06-11):
- [RESOLVED] Toolchain / IIC-OSIC-TOOLS — fully operational as of 2026-06-11, no longer a risk
- MCU scope pivot is a risk amplifier — must hold the line on CPU + bandgap only
- Full-custom transistor-level CPU is already extremely ambitious; analog on top makes discipline critical
- ADC, DAC, clock gen, and 5V process pivot are explicitly out of scope for October deadline
- Week 3-4 update (2026-06-26): AND, OR, XOR all done. Half adder done 2026-06-26 — first hierarchical cell (XOR + AND symbols composed). Full adder (two half adders + OR carry chain) and 8-bit ripple-carry adder are the remaining two steps to the 2026-07-04 target. Must maintain ~one cell per session cadence to hit ALU by Aug 01. Note: the XOR gate doubles as the V (overflow) flag computation (XOR of carry_in[7] and carry_out[7]) — reuse that cell.

**Why:** Deadline is hard (job hunting 2027). A CPU + one polished analog block is a better portfolio story than three half-finished blocks. Scope discipline is the difference between shipping and slipping.
**How to apply:** Hold the line on CPU + bandgap. If CPU slips past August 1, cut bandgap scope (just design + sim, no layout). Raise alarm if any week goes by with zero commits.

[[user-profile]]
