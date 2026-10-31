# Architecture

This repository is a collection of independent leaf modules rather than one
integrated design:

```text
smoke_tb
├── decoder
├── half_adder
├── full_adder
├── rippel_carry
└── or_gate
```

The ripple-carry adder composes four full adders. The repository-level smoke
test intentionally exercises only modules with a complete, stable interface.
Sequential examples such as counters and flip-flops remain independently
invokable and should gain focused assertions before joining the aggregate gate.
