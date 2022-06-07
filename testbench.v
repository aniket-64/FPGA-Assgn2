'include "module3.v"
`timescale 1ps/1ps
module tb;

reg [31:0] num;
reg [4:0] i1,12;

mod3 uut (.num(num)  ,  .index1(i1)  ,  .index2(i2));

initial begin
    num=70;  i1=0;   i2=10;
    #10
    num=82;  i1=8;   i2=2;
    #10
    num=11;  i1=11;   i2=19;
    #10
    num=91;  i1=11;   i2=11;
    #10
    num=13;  i1=17;   i2=5;
    #10;

end
endmodule