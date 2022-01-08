`timescale 1ns / 1ps
module lfsr_16bit(
    input clk,
    input reset,
    output reg [15:0] Q
    ); // variable to store the xored value of last three bits
  wire port;
  assign port = Q[2] ^ Q[1] ^ Q[0];
  always @(posedge clk, posedge reset)
  begin
  if(reset)
    Q<=16'b1010101010101010;
  else 
    Q <= {port,Q[15:1]};
  end
    
endmodule
