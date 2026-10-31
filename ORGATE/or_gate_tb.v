module or_gate_tb;
    reg a;
    reg b;
    wire y;

    or_gate dut (.a(a), .b(b), .y(y));

    initial begin
        a = 1'b0; b = 1'b0; #1;
        if (y !== 1'b0) $finish(1);
        a = 1'b1; #1;
        if (y !== 1'b1) $finish(1);
        b = 1'b1; #1;
        if (y !== 1'b1) $finish(1);
        $display("PASS: OR gate");
        $finish(0);
    end
endmodule
