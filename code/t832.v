module T832
(
  input CLK_0, // 小时钟
  input CLK_1, // 大时钟
  input [7:0] data_in, // 8 位输入数据
  output reg [31:0] data_out // 32 位输出数据
);

reg [3:0] cnt;
reg [31:0] sData = 32'b0;

always @(posedge CLK_0) begin
  if (cnt < 3) begin
    sData[cnt*8 +: 8] <= data_in;
    cnt <= cnt + 1;
  end else begin
    cnt <= 0;
  end
  
  if(CLK_1&&(cnt==3))begin
	 data_out=sData;
  end
end

endmodule



