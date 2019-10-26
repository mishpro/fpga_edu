/*
*   Introduction to FPGA and Verilog
*
*   Viktor Prutyanov, 2019
*
*   Problem set #00
*/

module pset00_invertor(
  input wire in,

  output wire out
);
assign out = ~in;

endmodule

module pset00_halffreq(
input wire in,

output wire out
  );
wire a;
wire b;
assign a = in;
assign #1 b = in;
assign out = a^b;

endmodule
