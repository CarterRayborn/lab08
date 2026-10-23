/* design of a demultiplexer using always@ procedual block
   Demultiplexer ports
		one input data line
		n select inputs
		2**n output lines 
	it rounts the input to one of the outputs depaendong on the value on the slect inputs */

module Mux_4to1( 	
				input [3:0] CEO,
				input [3:0] Your,
				input [3:0] Fred,
				input [3:0] Jill,	// four input data lines with din[0] is the lsb
				input 	sel1, sel0, enable,	// two select inputs
				output  reg [3:0] dout	// one data output line					
				);
					
		always@ (CEO, Your, Fred, Jill, sel1, sel0, enable)	// include all inputs in the senesitivity list
			if (enable==1)
			begin
			    
				case ({sel1,sel0})	  // concatinate sel1 with sel0 to make a 2 bit vector
					2'b00:	dout=CEO;	// choice 00 routing din to the LSb output
					2'b01:	dout=Your;	// choice 01 routing din to the 1st output
					2'b10:	dout=Fred;	// choice 01 routing din to the 2nd output
					2'b11:	dout=Jill;	// choice 01 routing din to the MSb output
				// default	dout = 1'b0; add this if not all the choices are covered to clear all outputs
				endcase
			end
			
			else begin
			dout=0;
			end
			
endmodule			
					