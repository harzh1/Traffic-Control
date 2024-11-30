‘timescale Ins / 1ps 
module fsm_test; 
// 
Inputs 
reg TS; 
// 
Outputs 
wire MR; 
wire ST; 
// 
reg TL; 
wire MY; 
reg C;reg reset; 
wire MG; 
Instantiate the Unit Under Test (UUT) 
fsm uut ( 
reg CIk; 
wire SR; 
wire SY; 
wire 
MR(MR), MY(MY), MG(MG), .SR(SR), .SY(SY), .SG(SG), .ST(ST), 
TS(TS), . TL(TL), .C(O), 
reset(reset), .Clk(Clk) 
); 
initial begin 
// 
Initialize Inputs 
TS =0:TL =0;C = 0;reset = 1; 
SG; 
10
Clk =0; 
#100; TS=0:TL=1:;C=1:reset=0; 
#100; TS=0;TL=0;C=0:reset=1; 
#100; TS=1;TL=1;C=0;reset=0; 
#100; 
end 
always 
begin 
#100 
Clk=~CIk; 
end 
endmodule 