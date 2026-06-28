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

### Update — threshold exchange
Kevin proposed: HIGH = 10% below VDD (2.97 V), LOW = "above 0". I confirmed HIGH is correct and
praised anchoring it to VDD. Challenged the LOW definition: "above 0" is the wrong direction — a
LOW check needs a ceiling (upper bound), not a floor, else a stuck-mid output (~1.5 V) passes.
Nudged him toward seeing the asymmetry himself. Re-asked the unanswered coverage question
(how many of 2^N input combos the AND testbench drives).

## Kevin's Current Understanding
- Working testbenches (inverter, XOR, half-adder, AND), MODELS + NGSPICE blocks, TRAN/write/plot.
- Relies on visual inspection only — no `.MEASURE` or scripted pass/fail yet.
- Thinks of correctness in Boolean terms; has not yet translated to voltage thresholds or an explicit all-rows check. That is the current gap.
- Comfortable launching xschem from container CLI; project mounted at /foss/designs.
- Correctly derives HIGH = VDD x 0.9 (2.97 V) and ties it to the supply — good instinct.
- Has NOT yet grasped the asymmetry: LOW needs an upper bound (< 0.1*VDD), not "above 0".
- Has NOT yet answered the input-combination coverage question.

## Next Session Hook
Get Kevin to: (1) flip his LOW definition to a ceiling (< 0.1*VDD = 0.33 V) once he sees a mid-rail
value would otherwise pass; (2) commit that all 4 AND truth-table rows must be driven. Then guide:
(a) `.MEASURE` sampling V(out) at a settled time per input combo, (b) compare to threshold for a
scalar PASS/FAIL, (c) `ngspice -b` batch mode, (d) bash loop over every `*_tb` netlist grepping for
PASS/FAIL. Resume at: "What kind of bound does a LOW check need, and how many of the possible input
combinations is the AND testbench covering?"

## Project Context (for resuming)
- Original 8-bit MCU, full-custom, GF180MCU-D PDK
- Tooling: Xschem + ngspice -> Magic -> Netgen (DRC/LVS)
- Deadline: 2026-10-01; educational goal primary
- Completed cells: inverter, XOR, half-adder
