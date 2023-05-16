module S2132
(
	input [31:0] B_IN,
	input [31:0] C_IN,//用户输入
	input SET,
	output reg [31:0] A_OUT
);
always @(*)begin
	if(SET) begin
		A_OUT<=C_IN;
	end else begin
		A_OUT<=B_IN;
	end
end

endmodule