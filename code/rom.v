module ROM
(
	input SET,//使能
	input CLK,
	input [11:0] PC_I,//
	input [31:0] WRITE,
   output reg [31:0] DATA
);
reg [31:0] MEMORY [0:4095];  // 4096x32-bit ROM

always @ (CLK)begin
	if(SET)begin
		MEMORY[PC_I]<=WRITE;
	end else begin
		DATA<=MEMORY[PC_I];
	end
end
endmodule