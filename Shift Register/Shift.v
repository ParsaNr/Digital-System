`timescale 1ns / 1ps

module Shift(
    input [7:0] Data,
    input [1:0] LR,
    input Left_Input,
    input Right_Input,
    input Reset,
    output reg [7:0] Result,
    input Clk
    );
	 
	 
	 always @(posedge Clk or negedge Reset)
		begin
			if (~Reset)
				begin
					Result=0;
				end
			else
				begin
					case (LR)
					0 : Result=Result;
					1 : begin Result=Result>>1; Result[7]=Left_Input;  end
					2 : begin Result=Result<<1; Result[0]=Right_Input; end
					3 : Result=Data;
					endcase	
				
				end
		
		end
		
		
endmodule
