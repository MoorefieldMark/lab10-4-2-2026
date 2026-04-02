module top(
    input [3:0]sw,
    input btnC,
    output [5:0]led
);

dFlipFlop instance_dFlipFlop (
    .btnC(btnC),
    .sw(sw[0]),
    .led(led[1:0])
);

jkFlipFlop instance_jkFlipFlop(
    .btnC(btnC),
    .J(sw[1]),
    .K(sw[2]),
    .led(led[3:2])
);

tFlipFlop instance_tFlipFlop(
    .btnC(btnC),
    .sw(sw[3]),
    .led(led[5:4])
);
endmodule
