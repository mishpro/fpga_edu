module clk_div #(parameter x = 1)(
    input clk,

    output clk_out
);

reg [x-1:0]cnt = 0;
assign clk_out = cnt[x-1];

always @ (posedge clk) begin
  cnt <= cnt + 1;
end
endmodule
