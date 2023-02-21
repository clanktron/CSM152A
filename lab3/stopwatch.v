module stopwatch();

    wire SEL, ADJ, RESET, PAUSE;

	// Inputs
	reg reset; // reset button; will force counters to the initial state 00:00
	reg pause; // pause button; will pause the counter when the button is pressed, and continue the counter if it is pressed again
	reg select; // select switch; 0 - minutes, 1 - seconds;  select switch which will choose minutes or seconds in the adjusting mode
	reg adjust; // adjust switch; "selected" portion increases at (2Hz) while "unselected" is stopped
	reg clk; // base clock 
	reg clk_adj;

	// Outputs
	wire [3:0] min0;
	wire [3:0] min1;
	wire [3:0] sec0;
	wire [3:0] sec1;
	
	wire clock;

    // might only need buffers for rst and pause (buttons)
    reg SELBUF, ADJBUF, RESETBUF, PAUSEBUF;

    always @ (posedge clk) begin
        displaynum(.digit(2),.display(1));
    end
