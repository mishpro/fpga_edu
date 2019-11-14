module hex_display(
    input clk,
    input [15:0]data,

    output [3:0]anodes,
    output [6:0]segments
);

/*
*   Problem 3/7:
*   Write logic for dynamic indication here.
*/
//Solve:
reg [1:0]i = 0;

assign anodes = (4'b1 << i);

always @(posedge clk) begin
    i <= i + 2'b1;
end

wire [3:0]b = data[i * 4 +: 4];
hex_to_seg hex_to_seg(.data(b), .segments(segments));

endmodule

module hex_to_seg(
    input [3:0]data,

    output reg [6:0]segments
);

always @(*) begin
    case (data)          /* abcdefg */
        4'h0: segments = 7'b1111110;
        4'h1: segments = 7'b0110000;
        /*
        *   Problem 2/7:
        *   Write logic for missing digits (0x2-0xE) here.
        */
        //Solve:
        4'h2: segments = 7'b1101101;
        4'h3: segments = 7'b1111001;
        4'hA: segments = 7'b1110111;
        4'hC: segments = 7'b1001110;
        4'hF: segments = 7'b1000111;
        4'hE: segments = 7'b1001111;
    endcase
end

endmodule
