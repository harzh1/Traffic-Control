‘timescale Ins / 1ps 
module fsm( 
output MR, 
output MY, 
output MG, 
output SR, 
output SY, 
output SG, 
output ST, 
input TS, 
input TL, 
input C, 
input reset,
input CIk 
); 
reg [6:1] state; 
reg ST, 
parameter mainroadgreen= 6'b001100; 
parameter mainroadyellow= 6'b010100; 
parameter sideroadgreen= 6'b100001; 
parameter sideroadyellow= 6'b100010; 
assign MR = state[6]; 
assign MY = state[3]; 
assign MG = state[4]; 
assign SR = state[3]; 
assign SY = state[2]; 
assign SG = state[1]; 
initial begin state = mainroadgreen; ST = 0; end 
always @(posedge CIlk) 
begin 
if (reset) 
begin state = mainroadgreen; ST = 1; end 
else 
begin 
ST =0; 
case (state) 
mainroadgreen: 
if (TL & C) begin state = mainroadyellow; ST = 1; end 
mainroadyellow:
if (TS) begin state = sideroadgreen; ST = 1; end 
sideroadgreen: 
if (TL | !C) begin state = sideroadyellow; ST = 1; end 
sideroadyellow: 
if (TS) begin state = mainroadgreen; ST = 1; end 
endcase 
end 
end 
endmodule 
