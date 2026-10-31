# HDL Basic Codes

Introductory Verilog examples with matching testbenches and diagrams.

## Examples

`DECODER`, `FULL ADDER`, `HALF ADDER`, `JK FLIP FLOP`, `MUX`, `ORGATE`,
`RIPPEL CARRY ADDER`, `SR FLIP FLOP`, and `UP COUNTER`.

Most examples include a `.v` design file and a `_tb.v` testbench. For example:

```bash
iverilog -o full_adder_tb "FULL ADDER/full_adder.v" "FULL ADDER/full_adder_tb.v"
vvp full_adder_tb
```

Install Icarus Verilog or another simulator before running the examples.