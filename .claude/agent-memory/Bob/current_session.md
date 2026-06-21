# Session — 2026-06-21

## Topics Covered
- Bus architecture decision: Von Neumann vs. Harvard (closed: Von Neumann)
- Selecting first build target: the ALU
- ALU/ISA coupling via status flags (Z, C, N, V)
- Signed overflow / V flag detection (Socratic walkthrough, COMPLETED)
  - 8-bit signed range: 127 (2^7-1) to -128 (-2^7)
  - 127 + 1 example; confirmed zero-indexing, bit 7 = MSB/sign bit
  - Carry signals at MSB: carry-in[7] = 1, carry-out[7] = 0
  - Landed the rule: V = carry_in[7] XOR carry_out[7] — a single XOR2 gate
  - Schematic implication: one XOR2 cell tapping the carry-in/carry-out nets of the MSB full adder

## Where We Left Off
V-flag concept fully landed. Kevin understands signed overflow = disagreement between the carry
into and out of the sign bit, implemented as one XOR2 gate. Clean payoff reached. Ready to move
from concept to committing the ALU's flag set and operation list before drawing the schematic.

## Kevin's Current Understanding
- Solid on signed two's-complement range limits (127 to -128) and zero-indexed bit numbering / sign bit.
- Understands flags are where the ALU meets the ISA.
- Fully grasps V detection: V = carry_in[7] XOR carry_out[7], one XOR2 gate, plus the intuition
  (sign bit corrupted when carry-in != carry-out at the MSB).
- Reasoned independently to Von Neumann earlier; understands the structural fetch/memory hazard.

## Next Session Hook
Which status flags is the ALU committing to (Z, C, N, V), and what operations does it need to
support? Now that he can build the V detector, lock the full flag set and operation list before
drawing the Xschem schematic.

## Project Context (for resuming)
- Original 8-bit MCU, full-custom, GF180MCU-D PDK
- Tooling: Xschem + ngspice
- Deadline: 2026-10-01 (~14 weeks from session date)
- Educational goal is a primary driver of design choices
