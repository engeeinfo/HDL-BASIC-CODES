# HDL Basic Codes

Small Verilog examples for introductory combinational and sequential logic:
decoders, adders, gates, multiplexing, counters, and flip-flops.

## Requirements

- Icarus Verilog 11 or newer
- `make`

Run the verified smoke suite:

```sh
make test
```

The smoke suite covers the decoder, half adder, full adder, ripple-carry
adder, and OR gate. Several historical examples retain their original
standalone testbenches and are documented as follow-up work.

## Structure

Each concept is kept in its own directory. `smoke_tb.v` provides the
repository-level regression, while `docs/ARCHITECTURE.md` describes the
examples and `docs/MODERNIZATION.md` records audit findings.
