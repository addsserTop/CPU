module IS
(
	input CLK,
	input [31:0] INSTR,
	input [2:0] EXTOP,
	output reg [31:0] SOUT
);
always @(posedge CLK) begin
    case(EXTOP)
        3'b000:begin
            SOUT[11:0]<=INSTR[31:20];
            SOUT[31]<=INSTR[31];
            SOUT[30:12]<=19'b0;
            end
        3'b001:begin
            SOUT[11:0]<=12'b0;
            SOUT[31:12]<=INSTR[31:12];
            end
        3'b010:begin
            SOUT[4:0]<=INSTR[11:7];
            SOUT[11:5]<=INSTR[31:25];
            SOUT[31]<=INSTR[31];
            SOUT[30:12]<=4'b0;
            end
        3'b011:begin
            SOUT[0]<=INSTR[0];
            SOUT[4:1]<=INSTR[11:8];
            SOUT[10:5]<=INSTR[30:25];
            SOUT[11]<=INSTR[7];
            SOUT[31]<=INSTR[31];
            SOUT[30:12]<=19'b0;
            end
        3'b100:begin
            SOUT[0]<=INSTR[0];
            SOUT[10:1]<=INSTR[30:21];
            SOUT[11]<=INSTR[20];
            SOUT[19:10]<=INSTR[19:10];
            SOUT[31]<=INSTR[31];
            SOUT[30:20]<=11'b0;
            end
    endcase
end

endmodule