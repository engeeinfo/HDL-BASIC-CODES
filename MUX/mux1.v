module mux1(
    input wire[127:0] a,
    input wire[127:0] b,
    input select,
    output reg[127:0] out,
    input clk
    );
    
    always @(posedge clk or negedge clk )
    begin
    if(select==0)
        out=a;
    else
        out=b;
    end    
endmodule
