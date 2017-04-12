# Arch101
## Introduction
Computer architeture course in Amirkabir Univesity of Technology, Spring 2017.

## VHDL Examples

### Multiplexer

Multiplexer module with 2 architecture:

- concurrent switch case
- sequential

### 4 Bit Ripple Adder

4 bit ripple adder structural design based on full adder module.

### D-FlipFlop

D-FlipFlop module with 2 architecture:

- wait statement
- sensitivity list

### Sample RTL

Dummy sample of register transfer level design.

### Memory

Sample memory for SAYEH base computer with initiation phase and control signals.

### SAYEH Testing

You can add following codes into initiation phase of SAYEH memory and test them.

```vhdl
-- cwp
buffermem(0) := "00000000_00000110"

-- mil r0, 01011101
buffermem(1) := "11110000_01011101"

-- mih r0, 00000101
buffermem(2) := "11110001_00000101"

-- mil r1, 00000001
buffermem(3) := "11110100_00000001"

-- mih r1, 00000000
buffermem(4) := "11110101_00000000"

-- add r1, r0
buffermem(5) := "00000000_10110100"
```
