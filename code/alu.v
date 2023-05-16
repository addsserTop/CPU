module ALU(
	//端口定义
	input CLK,
	input [31:0] X1,
	input [31:0] X2,
	input [2:0]	ALOUP,
	input B,
	input J,
	output reg [31:0] RES,
	output reg EQUAL
);
always @(posedge CLK) begin
	case(ALOUP)
		3'b000:if(J==0)RES<=(X1+X2);
			else RES<=(X1-X2);
		3'b001:RES<=(X1<<X2);
		3'b010:if($signed(X1)<$signed(X2))RES<=1;
			else RES<=0;
		3'b011:if($unsigned(X1)<$unsigned(X2))RES<=1;
			else RES<=0;
		3'b100:RES<=(X1^X2);
		3'b101:if(J==0)RES<=(X1+X2);
			else RES<=(X1-X2);
		3'b110:RES<=(X1||X2);
		3'b111:RES<=(X1&&X2);
	endcase
    
    if((B==1)&&(X1==X2))
        EQUAL<=1;
end
endmodule