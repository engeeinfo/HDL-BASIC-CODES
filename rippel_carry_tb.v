module rippel_carry_tb;
reg[3:0]a,b;
wire[3:0]sum;
wire cout;
rippel_carry abc (.sum(sum),.cout(cout),.a(a),.b(b));

initial
 begin
$monitor($time,"a=%b b=%b sum=%b carry=%b",a,b,sum,cout);
a=4'b1111;
b=4'b1111;
#10;

a=4'b1000;
b=4'b0001;
#10;

a=4'b0001;
b=4'b0001;
#10;

a=4'b0010;
b=4'b0001;
#10;

a=4'b1010;
b=4'b0001;
#10;
end
endmodule

