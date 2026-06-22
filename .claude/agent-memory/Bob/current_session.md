# Session — 2026-06-21-2

## Topics Covered
- Full adder implementation approach (Kevin asked for a direct recommendation, not Socratic)
- Recommended methodology: gate-level first, then transistor-level for ONE gate
  - Gate-level: Sum = A XOR B XOR Cin; Cout = (A AND B) OR (Cin AND (A XOR B))
  - Noted the shared (A XOR B) term feeds both Sum and Cout — wire once, fan out
  - Simulate with abstract symbols (XOR/AND/OR/INV) to confirm truth table FIRST
  - Then drill into ONE gate at transistor level — recommended building XOR in CMOS from scratch
- CMOS complementary logic structure: pull-up PMOS network + pull-down NMOS network as duals
- Guidance: don't hand-build every gate. Build one, internalize the duality, pull the rest
  from GF180MCU-D standard cells.
- "Optimize later" affirmed as correct for a pure-learning goal (no tapeout, no sizing/timing yet)

## Where We Left Off
Gave Kevin the clear recommendation and a concrete first step: draw the gate-level full adder in
Xschem (Sum + Cout), simulate with abstract symbols, confirm all 8 input combos before touching
transistors. He has NOT started drawing yet. Next concrete deliverable is that gate-level schematic.

## Kevin's Current Understanding
- Articulated his own goal clearly: learn to build a complex chip from basic building blocks;
  explicitly not chasing smallest/fastest. Pure methodology/learning driver.
- Carries forward solid grasp of V-flag detection and signed two's-complement from prior session.
- Now has the methodology framing: logic correctness at gate level BEFORE CMOS topology.
- Has NOT yet built a CMOS gate by hand — XOR transistor-level is the upcoming hands-on exercise.

## Next Session Hook
Did the gate-level full adder simulate correctly across all 8 input combinations? If yes, we build
the XOR gate in CMOS together — pull-up PMOS network and pull-down NMOS network, transistor by
transistor — and discuss why the two networks are complementary duals.

## Project Context (for resuming)
- Original 8-bit MCU, full-custom, GF180MCU-D PDK
- Tooling: Xschem + ngspice
- Deadline: 2026-10-01 (~14 weeks from session date)
- Educational goal is the primary driver of design choices
- Learning goal (Kevin's words): build a complex chip from basic building blocks; not smallest/fastest
