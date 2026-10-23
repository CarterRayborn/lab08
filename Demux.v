/* design of a Multiplexer using always@ procedual block
   mutiplesers ports: 
		one output data line 
		n select input lines
		2**n inputs 
	it rounts one of the inputs to the output dependong on the value of the slect inputs */
	
	module Demux_1to4( 	
				input  [3:0] din,			// input data
				input 	sel1, sel0,	enable,	// two select inputs
				output  reg [3:0] local_lib,
				output reg [3:0] fire,
				output reg [3:0] school,
				output reg [3:0] rib	// four outputs with dout[0] is the LSb
				);
					
		always@ (din, sel1, sel0, enable)
        if (enable ==1)
			// include all inputs in the senesitivity list
			begin 
				case ({sel1,sel0})	  // concatinate sel1 with sel0 to make a 2 bit vector
					2'b00:	local_lib=din;	// choice 00 routing din to the LSb output
					2'b01:	fire=din;	// choice 01 routing din to the 1st output
					2'b10:	school=din;	// choice 01 routing din to the 2nd output
					2'b11:	rib=din;	// choice 01 routing din to the MSb output
				 // default	dout = 1'b0;	This must be added if not all choices were defined
				endcase
				
			end
				else begin
				    local_lib = 0;
				    fire =0;
				    school =0;
				    rib = 0;
				 end
endmodule	