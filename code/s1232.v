module S1232
(
	input [31:0] C_IN,//用户输入
	input SET,
	output reg [31:0] A_OUT,
	output reg [31:0] B_OUT
);
always @(*)begin
	if(SET) begin
		B_OUT<=C_IN;
	end else begin
		A_OUT<=C_IN;
	end
end

endmodule