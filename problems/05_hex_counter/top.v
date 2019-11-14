module top(
    input CLK,

    output DS_EN1, DS_EN2, DS_EN3, DS_EN4,
    output DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G
);

wire [3:0]anodes;
assign {DS_EN1, DS_EN2, DS_EN3, DS_EN4} = ~anodes;

wire [6:0]segments;
assign {DS_A, DS_B, DS_C, DS_D, DS_E, DS_F, DS_G} = segments;

wire [15:0]data; /* Data bus */
wire clk1, clk2; /* Clocks */

/*
*   Instantiate hex display driver, 16-bit counter and two clock dividers here
*/
  clk_div #(.x(24)) div_for_counter(.clk(CLK),.clk_out(clk1));
  clk_div #(.x(16)) div_for_display(.clk(CLK),. clk_out(clk2));
  counter #(.W(16))data_gen(.clk(clk1),.q(data));
  hex_display display(.clk(clk2),.data(data),.anodes(anodes),.segments(segments));

endmodule
