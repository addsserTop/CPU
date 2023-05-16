module PCREG(
	 input CLK,
    input [11:0] PC_IN,
    output reg [11:0] PC_OUT
);

always @(posedge CLK) begin
    PC_OUT <= PC_OUT + 1;
end

endmodule
