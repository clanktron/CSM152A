module stopwatch(
    SEL, ADJ, RESET, PAUSE
    );

`include "display.sv"

    wire SEL, ADJ, RESET, PAUSE;

    reg SELBUF;

    always @ (posedge clk) begin
        display(.digit(2),.display(1));
    end
