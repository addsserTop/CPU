module DIVR(
	 input [31:0] RES,
	 output reg [11:0] RAMAO
 );

always @(*)begin
	RAMAO<=RES[11:0];
end
endmodule