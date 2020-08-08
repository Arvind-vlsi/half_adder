`timescale 1ns / 1ps

module tb();

reg a=0,b=0;
wire sum,carry;

half_adder h1(a,b,sum,carry);

always #5 a=~a;
always #10 b=~b;

initial begin
#100 $stop;
end
endmodule
