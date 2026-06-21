# ADR 2026-06-21 — ALU Design

## Status
Accepted

## Context
The 8-bit MCU requires an ALU as the first major CPU block. Before drawing schematics in Xschem, the operation set and flag set must be locked so the interface is stable and the schematic doesn't need rework mid-build.

The ALU is architecturally independent — it takes two 8-bit operands and an operation select, and produces an 8-bit result plus status flags. It does not depend on bus topology, ISA encoding, or memory map decisions.

## Decision

### Operation Set
| Mnemonic | Operation        |
|----------|-----------------|
| ADD      | A + B           |
| SUB      | A - B           |
| AND      | A & B           |
| OR       | A \| B          |
| XOR      | A ^ B           |
| SHL      | A << 1          |
| SHR      | A >> 1          |

7 operations → 3-bit operation select input.

### Flag Set
| Flag | Meaning                                 |
|------|-----------------------------------------|
| Z    | Zero — result is 0x00                   |
| C    | Carry — carry out of bit 7 (ADD/SHL) or borrow (SUB) |
| N    | Negative — bit 7 of result is 1         |
| V    | Overflow — signed overflow occurred     |

### Interface (tentative)
- Inputs: `A[7:0]`, `B[7:0]`, `OP[2:0]`
- Outputs: `R[7:0]` (result), `Z`, `C`, `N`, `V`

## Consequences
- 3-bit op select is wide enough for 8 operations — one slot reserved for future use if needed.
- V flag requires detecting signed overflow (XOR of carry into and out of bit 7) — slightly more logic than Z/C/N but worth including for correctness.
- SHR is logical right shift (zero fill); if arithmetic shift right is needed later, that can use the reserved op slot.
- This interface is sufficient to begin schematic entry in Xschem with GF180MCU-D primitives.

## Alternatives Considered
- **Harvard bus architecture** — discussed and rejected. Single shared Von Neumann bus chosen instead (see ADR 2026-06-21-bus-architecture.md).
- **Fewer flags (Z, C only)** — rejected; N and V are cheap to compute and needed for conditional branch logic later.
- **More operations (MUL, DIV)** — deferred; hardware multiply/divide adds significant area and complexity, out of scope for this timeline.
