module smoke_tb;
    reg [2:0] decoder_in;
    wire [7:0] decoder_out;
    reg ha_a, ha_b;
    wire ha_sum, ha_carry;
    reg fa_a, fa_b, fa_c;
    wire fa_sum, fa_carry;
    reg [3:0] ripple_a, ripple_b;
    wire [3:0] ripple_sum;
    wire ripple_carry;
    reg or_a, or_b;
    wire or_y;

    decoder decoder_dut (.in(decoder_in), .out(decoder_out));
    half_adder half_dut (.a(ha_a), .b(ha_b), .sum(ha_sum), .carry(ha_carry));
    full_adder full_dut (.a(fa_a), .b(fa_b), .c(fa_c),
                         .sum(fa_sum), .carry(fa_carry));
    rippel_carry ripple_dut (.a(ripple_a), .b(ripple_b),
                             .sum(ripple_sum), .cout(ripple_carry));
    or_gate or_dut (.a(or_a), .b(or_b), .y(or_y));

    initial begin
        decoder_in = 3'b111;
        ha_a = 1'b1; ha_b = 1'b1;
        fa_a = 1'b1; fa_b = 1'b1; fa_c = 1'b1;
        ripple_a = 4'd15; ripple_b = 4'd1;
        or_a = 1'b0; or_b = 1'b1;
        #1;
        if (decoder_out !== 8'b10000000 ||
            ha_sum !== 1'b0 || ha_carry !== 1'b1 ||
            fa_sum !== 1'b1 || fa_carry !== 1'b1 ||
            ripple_sum !== 4'd0 || ripple_carry !== 1'b1 ||
            or_y !== 1'b1) begin
            $display("FAIL: basic HDL smoke checks");
            $finish(1);
        end
        $display("PASS: basic HDL smoke checks");
        $finish(0);
    end
endmodule
