# ADR 2026-06-21 — Bus Architecture

## Status
Accepted

## Context
The 8-bit MCU needs a bus connecting the CPU, flash ROM, and RAM. The two primary options are:

- **Von Neumann** — single shared bus for both instructions and data
- **Harvard** — separate buses for instructions (flash ROM ↔ CPU) and data (RAM ↔ CPU)

## Decision
**Von Neumann — single shared bus.**

## Rationale
Harvard's only advantage is enabling simultaneous instruction fetch and data access — the foundation of pipelining. That benefit only materializes if the CPU implements a pipeline (fetch, decode, execute of *different* instructions overlapping in time).

This MCU uses a simple multi-cycle execution model — each instruction fully completes before the next fetch begins. In that model, the instruction bus and data bus are never busy at the same instant regardless of architecture, so Harvard provides no throughput gain.

Against that non-benefit, Harvard imposes a real cost in a full-custom layout: a second complete wire network (8 data lines + address + control) routed across the entire floorplan to every memory-connected block. That's routing area and complexity for zero performance return.

## Consequences
- Single address/data bus shared by CPU, flash ROM, and RAM.
- Instruction fetch and data memory access are sequential within each instruction cycle (as they must be — they can't overlap on one bus).
- Significantly simpler floorplan and routing in Magic VLSI layout.
- If a pipeline is added in a future revision, this decision would need to be revisited — but that is explicitly out of scope for the October 2026 deadline.
