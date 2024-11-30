‘timescale 1ns / 1ps 
module timer( 
output TS, 
output TL, 
input ST, 
input CIk 
); 
integer value;
assign TS=(value>=4); 
assign TL=(value>=14); 
always@(posedge ST or posedge Clk) 
begin 
1f(ST==1)begin 
value=0; 
end 
else begin 
value=value+1; 
end 
end 
endmodule 