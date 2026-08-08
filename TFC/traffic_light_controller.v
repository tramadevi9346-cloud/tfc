module traffic_light_controller(
    input clk,
    input reset,
    output reg [2:0] roadA,
    output reg [2:0] roadB
);

parameter GREEN  = 3'b001;
parameter YELLOW = 3'b010;
parameter RED    = 3'b100;

reg [1:0] state;

always @(posedge clk or posedge reset)
begin
    if(reset)
        state <= 2'b00;
    else
        state <= state + 1;
end

always @(*)
begin
    case(state)

    2'b00:
    begin
        roadA = GREEN;
        roadB = RED;
    end

    2'b01:
    begin
        roadA = YELLOW;
        roadB = RED;
    end

    2'b10:
    begin
        roadA = RED;
        roadB = GREEN;
    end

    2'b11:
    begin
        roadA = RED;
        roadB = YELLOW;
    end

    endcase
end

endmodule
