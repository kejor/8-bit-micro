# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Full-custom 8-bit microcontroller with an original ISA. Not a 6502 clone — architecture decisions are Kevin's to define. Implementation flow: Xschem (schematic) → ngspice (simulation) → Magic VLSI (layout) → DRC/LVS via Netgen. No RTL synthesis; no Verilog. PDK: GlobalFoundries GF180MCU-D.

## Environment

All EDA tools run inside an IIC-OSIC-TOOLS Docker container. Start it with:

```
bash tools/start_x.sh
```

This launches the container with X11 forwarding and sets GF180MCU-D as the default PDK. Requires Docker and XQuartz (macOS). All Xschem and ngspice work happens inside the container.

## Running Simulations

Inside the container, open a testbench schematic in Xschem, then use Simulation → Netlist + Run to generate and execute the ngspice simulation. Alternatively from the container terminal:

```
xschem schematics/logic-gates/and/and_tb.sch
```

Raw output files (`.raw`) are written to the directory of the testbench schematic.

## Schematic Organization

```
schematics/
  <cell>.sch       — schematic
  <cell>.sym       — symbol for use in other schematics
  <cell>_tb.sch    — testbench
  logic-gates/<gate>/
    <gate>.sch / <gate>.sym / <gate>_tb.sch
```

Every testbench has two `code_shown.sym` blocks:
- `MODELS` — includes GF180MCU-D model libraries (`.lib` paths use `$::180MCU_MODELS`)
- `NGSPICE` — `.PARAM` definitions, `.MEASURE` statements, and `.control` block with `TRAN`, `write`, `plot`

## Architecture Decisions (Locked)

See `adr/` for full rationale. Key decisions:

- **Bus**: Von Neumann — single shared bus for CPU, flash ROM, and RAM. No pipeline planned, so Harvard provides no benefit at the cost of full-custom routing complexity.
- **ALU operations**: ADD, SUB, AND, OR, XOR, SHL, SHR — 3-bit op select (`OP[2:0]`)
- **ALU flags**: Z (zero), C (carry), N (negative), V (overflow). V = carry_in[7] XOR carry_out[7] — one XOR2 gate.
- **ALU interface**: `A[7:0]`, `B[7:0]`, `OP[2:0]` → `R[7:0]`, Z, C, N, V

## Agents

Two persistent agents live in `.claude/agents/`:

- **Bob** — Socratic chip engineering mentor (model: Opus). Never gives direct answers; guides through probing questions. Invoke for any chip design, CMOS, EDA, or circuit question. Writes session logs to `.claude/agent-memory/Bob/sessions/` and maintains `current_session.md` for cross-session continuity.
- **Mike** — Project manager (model: Sonnet). Invoke when asking what to work on next, feeling stuck, or needing a timeline reality check. Deadline: 2026-10-01. Tracks milestones in `.claude/agent-memory/Mike/`.

Both agents maintain persistent memory in `.claude/agent-memory/<Agent>/` — always commit those files after agent sessions so context survives across conversations.

## Workflow Rules

- Commit and push after every file change — don't batch across sessions.
- New architectural decisions go in `adr/YYYY-MM-DD-<topic>.md`.
- Invoke the Mike agent whenever Kevin shares a progress update or milestone completion.
