module REGFILE(
    input CLK,//时钟
	 input [4:0]Ra,
	 input [4:0]Rb, 
	 input [4:0]Rw,
	 input Wen,//使能
    input [31:0]BusW,//输入
	 output [31:0]BusA,
	 output reg [31:0]BusB
 );
reg [31:0] DATAS[0:31];

always @(posedge CLK)
begin
	if(Wen&&Rw!=5'd0)begin
		DATAS[Rw]<=BusW;
	end
	BusB =(Ra==5'd0)?32'd0:DATAS[Rb];
end

assign BusA =(Ra==5'd0)?32'd0:DATAS[Ra];

endmodule