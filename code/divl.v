module DIVL(
	 input [31:0] ROMI,
	 output [2:0] ALOUP,
	 output [6:0] OP,
	 output [4:0] Ra,
	 output [4:0] Rb, 
	 output [4:0] Rw,
	 output J
 );

assign OP=ROMI[6:0];
assign ALOUP=ROMI[14:12];
assign Ra=ROMI[19:15];
assign Rb=ROMI[24:20];
assign Rw=ROMI[11:7];
assign J=ROMI[30];
endmodule