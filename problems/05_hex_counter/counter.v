module counter #(parameter W = 16)(
    input clk,

    output [W - 1:0]q
);
reg [W-1:0]cnt = 0;
assign q = cnt;
always @(posedge clk) begin
        cnt <= cnt + 1'b1;
end



/*
*   Write your code for counter of W bit width here
*/

endmodule
