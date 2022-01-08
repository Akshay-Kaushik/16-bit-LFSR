`timescale 1ns / 1ps
module lfsr_16bit_tb();
reg clk, reset;
wire [15:0] Q;
lfsr_16bit dut(.clk(clk), .reset(reset),.Q(Q));
initial
begin
     clk=0; 
     forever #10 clk=~clk;
end     
initial
begin
    reset=0;
    repeat(3) @(posedge clk)
    reset=1;
    @(posedge clk);
    reset=0;
end
endmodule
