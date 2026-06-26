module sensor_filter(
input clk,
input rst,
input [3:0] sensor_in,
output reg [1:0] alert_level,
output reg anomaly
);
reg [3:0] buffer [0:3];
reg [5:0] sum;
integer i;
wire [3:0] average;
assign average = sum >> 2;
always @(posedge clk)
begin
if(!rst)
begin
sum <= 0;
alert_level <= 0;
anomaly <= 0;
for(i=0;i<4;i=i+1)
buffer[i] <= 0;
end
else
begin
sum <= sum- buffer[3] + sensor_in;
buffer[3] <= buffer[2];
buffer[2] <= buffer[1];
buffer[1] <= buffer[0];
buffer[0] <= sensor_in;
  
if(average > 12)
alert_level <= 2’b11;
else if(average > 8)
alert_level <= 2’b10;
else if(average > 4)
alert_level <= 2’b01;
else
alert_level <= 2’b00;
if(sensor_in > (buffer[0] + 3))
anomaly <= 1;
else
anomaly <= 0;
end
end
endmodule
