module full_adder(sum,carry,a,b,c);

input wire a,b,c;
output wire sum;
output carry;

assign sum=a^b^c;
assign carry=b*c+a*b+c*a;
endmodule
