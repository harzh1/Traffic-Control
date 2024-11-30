‘timescale 1ns / 1ps 
module main( 
output MR, 
output MY, 
output MG, 
output SR, 
output SY, 
output SG, 
input reset, 
input C, 
input CIk 
); 
timer partl (TS, TL, ST, CIk); 
fsm part2(MR, MY, MG, SR, SY, SG, ST, TS, TL, C, reset, CIk); 
endmodule 