module tFlipFlop(
    input btnC,
    input sw,
    output [1:0]led
);

wire [1:0]dOutput;
wire D;

assign D = sw ^ dOutput[0];

dFlipFlop instance_dFlipFlop (
    .btnC(btnC),
    .sw(D),
    .led(dOutput)
);

assign led = dOutput;

endmodule
