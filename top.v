module top(
    input [15:0] sw,
    input btnU, btnD, btnL, btnR, btnC,
    output [15:0] led
    );
    
    
    wire [3:0] string;
    
    Mux_4to1 mux(
    .CEO(sw[3:0]),
    .Your(sw[7:4]),
    .Fred(sw[11:8]),
    .Jill(sw[15:12]),
    .sel0(btnL),
    .sel1(btnU),
    .enable(btnC),
    .dout(string[3:0])
    );
    
    Demux_1to4 demux(
    .din(string[3:0]),
    .local_lib(led[3:0]),
    .fire(led[7:4]),
    .school(led[11:8]),
    .rib(led[15:12]),
    .enable(btnC),
    .sel0(btnD),
    .sel1(btnR)
    );
    
endmodule
    
    
    