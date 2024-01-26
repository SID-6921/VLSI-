`timescale 1ns / 1ps

module decoder_2_4(
    input [1:0] i,
   	output reg[3:0] y);
	always@(i)
		begin
		y=0;
			case(i)	
					2'b00 : y[0] = 1'b1;
					2'b01 : y[1] = 1'b1;
					2'b10 : y[2] = 1'b1;
					2'b11 : y[3] = 1'b1;
			endcase
		end	
endmodule

module decoder_not(
    input a,
    output not_g 
    );
    wire [3:0]w;
    decoder_2_4 notgate({a,1'b0}, w);
    assign not_g= w[0];
endmodule
