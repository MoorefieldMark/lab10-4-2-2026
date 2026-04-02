module dFlipFlop(
    input btnC,
    input sw,
    output reg [1:0]led
);

initial begin
    led[0] = 0;
    led[1] = 1;
end

always @(posedge btnC) begin
    led[0] <= sw;
    led[1] <= ~sw;
end

endmodule
