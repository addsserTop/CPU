module rwinput(
		input [31:0]IN,
		input [11:0]PC_1,
		input U0,
		input U1,
		input MTR,
		input J0,
		input J1,
		input [31:0] RAMI,
		input [31:0] RES,//接ALU输出
		output reg [31:0]BusW
);
wire [31:0]PCS_0;
wire [31:0]PCS_1;
reg  [31:0]M1;
reg  [31:0]M2;
assign PCS_0 = {20'b0, PC_1};
assign PCS_1 = {20'b0, (PC_1+12'd4), 20'b0};

always @(*)
begin
	if(U1==0)begin
		M1=IN;
	end
	else begin
		M1=PCS_0+IN;
	end
	
	if(J0||J1)begin
		M2=PCS_1;
	end
	else begin
		M2=M1;
	end
	
	if(U0||U1||J0||J1)begin
		BusW=M2;
	end
	else begin
		if(MTR)begin
			BusW=RAMI;
		end
		else begin
			BusW=RES;
		end
	end
end
endmodule