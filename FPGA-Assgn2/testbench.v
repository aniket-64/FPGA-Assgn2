`include "module3.v"
`timescale 1ps/1ps
module tb;

reg [31:0] num;
reg [4:0] i1,i2;

mod3 uut (.num(num)  ,  .index1(i1)  ,  .index2(i2));

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    
    num=70;  i1=0;   i2=10;
    #10;
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table1_filled[i] , uut.m1.table1[i]);
    end;
    $display("\n");
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table2_filled[i] , uut.m1.table2[i]);
    end;
    $display("\n"); 
    num=82;  i1=8;   i2=2;
    #10;
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table1_filled[i] , uut.m1.table1[i]);
    end;
    $display("\n");
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table2_filled[i] , uut.m1.table2[i]);
    end;
    $display("\n"); 
    num=11;  i1=11;   i2=19;
    #10;
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table1_filled[i] , uut.m1.table1[i]);
    end;
    $display("\n");
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table2_filled[i] , uut.m1.table2[i]);
    end;
    $display("\n"); 
    num=91;  i1=11;   i2=11;
    #10;
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table1_filled[i] , uut.m1.table1[i]);
    end;
    $display("\n");
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table2_filled[i] , uut.m1.table2[i]);
    end;
    $display("\n"); 
    num=13;  i1=17;   i2=5;
    #10;
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table1_filled[i] , uut.m1.table1[i]);
    end;
    $display("\n");
    for (integer i=0 ; i<20 ;i++) begin
        $display("%d : %d %d", i , uut.m1.table2_filled[i] , uut.m1.table2[i]);
    end;
    $display("\n"); 
end
endmodule