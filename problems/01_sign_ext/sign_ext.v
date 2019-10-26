module sign_ext(
    input [11:0]imm,

    output [31:0]ext_imm
);

/*
*   Problem 4:
*   Describe sign extension logic.
*/
// P4 answer
//wire msb = imm[11];
//wire [19:0]msb_x20 = {20{msb}};
//assign ext_imm = {msb_x20, imm};
assign ext_imm = {{20{imm[11]}}, imm};
//
endmodule
