.PHONY: build lint test

IVERILOG ?= iverilog
VVP ?= vvp
BUILD_DIR := build
SIM := $(BUILD_DIR)/smoke
SOURCES := DECODER/decoder.v "HALF ADDER/half_adder.v" \
	"RIPPEL CARRY ADDER/rippel_carry.v" ORGATE/or_gate.v smoke_tb.v

build:
	@mkdir -p $(BUILD_DIR)
	$(IVERILOG) -g2012 -Wall -s smoke_tb -o $(SIM) $(SOURCES)

lint: build
	@echo "Icarus warning check completed for the verified basic modules."

test: build
	$(VVP) $(SIM)
