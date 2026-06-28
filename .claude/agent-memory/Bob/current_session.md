# Session — 2026-06-27

## Topics Covered
- Automated testing for full-custom analog/mixed-signal designs
- Splitting "automated testing" into (1) headless run, (2) machine-judged PASS/FAIL
- Current loop: GUI Netlist+Run then manual eyeball of `plot v(A) v(B) v(C)`
- Pointed toward `.MEASURE` for scalar pass criteria; seeded ngspice batch mode + bash loop over all testbenches
- Pushing Kevin from Boolean "logic is correct" toward an analog/SPICE definition: voltage thresholds + all truth-table rows

## Where We Left Off
Kevin named logical correctness as the primary pass criterion. I pushed him to make it concrete in the SPICE world with two follow-ups:
1. What voltage must the simulator see to count as a legit HIGH/LOW on a 3.3 V supply? Where exactly is the line (is 2.9 V high? 2.0 V?)
2. How many input combinations of the AND truth table must he drive before claiming correctness (all 4 rows)?
Still withholding `.MEASURE` syntax and the script until he commits to concrete thresholds and the all-rows requirement.

## Kevin's Current Understanding
- Working testbenches (inverter, XOR, half-adder, AND), MODELS + NGSPICE blocks, TRAN/write/plot.
- Relies on visual inspection only — no `.MEASURE` or scripted pass/fail yet.
- Thinks of correctness in Boolean terms; has not yet translated to voltage thresholds or an explicit all-rows check. That is the current gap.
- Comfortable launching xschem from container CLI; project mounted at /foss/designs.

## Next Session Hook
Get Kevin to commit to concrete numbers: a HIGH threshold (e.g. > 0.9*VDD) and LOW (e.g. < 0.1*VDD), plus exercising all 4 truth-table rows. Then guide: (a) `.MEASURE` sampling V(out) at a settled time per input combo, (b) compare to threshold for a scalar, (c) `ngspice -b` batch mode, (d) bash loop over every `*_tb` netlist grepping for PASS/FAIL. Resume at: "What voltage counts as HIGH, and how do you get .MEASURE to sample V(out) after the output has settled for each of the 4 input rows?"

## Project Context (for resuming)
- Original 8-bit MCU, full-custom, GF180MCU-D PDK
- Tooling: Xschem + ngspice -> Magic -> Netgen (DRC/LVS)
- Deadline: 2026-10-01; educational goal primary
- Completed cells: inverter, XOR, half-adder
