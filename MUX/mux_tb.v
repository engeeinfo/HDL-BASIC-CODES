module mux_tb;
reg [127:0] a,b;
reg sel,clk;
wire [127:0] mxout1,mxout2;
demux uut(.a(a),.select(sel),.clk(clk),.b(mxout1),.c(mxout2));
initial begin
clk=0; 
forever #5 clk=~clk;
end
initial
begin
#5
sel=1;
a=10'b0000000001;
end

initial 
begin
$monitor("sel=%d mxout=%b out2=%b",sel,mxout1,mxout2);
end

endmodule
