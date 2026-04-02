module jkFlipFlop(
    input btnC,
    input J,
    input K,
    output [1:0]led
);

wire [1:0]dOutput;
wire D;

assign D = (J & ~dOutput[0] | (~K & dOutput[0]));

dFlipFlop instance_dFlipFlop (
    .btnC(btnC),
    .sw(D),
    .led(dOutput)
);

assign led = dOutput;

endmodule
