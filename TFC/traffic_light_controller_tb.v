`timescale 1ns/1ps

module traffic_light_controller_tb;

reg clk;
reg reset;

wire [2:0] roadA;
wire [2:0] roadB;

traffic_light_controller uut(
    .clk(clk),
    .reset(reset),
    .roadA(roadA),
    .roadB(roadB)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    #100;

    $finish;
end

initial
begin
    $dumpfile("traffic_light.vcd");
    $dumpvars(0, traffic_light_controller_tb);
end

initial
begin
    $monitor("Time=%0t RoadA=%b RoadB=%b",
             $time, roadA, roadB);
end

endmodule
