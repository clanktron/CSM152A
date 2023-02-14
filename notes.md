# Notes

* use verible lsp once macos is supported

## Basic Building Blocks

* module adder (a,b,c,d);
    - list of variables
        - input
        - outut
        - inout (can be either in or out)

* calling the module: adder $uut(.a(a))$

* example: module multiplication(a,b,out);
                adder uut1(a,a,out);
                adder uut2(out, a, out2);
    - somewhat poor example since b would need to be fixed to know the amount of times to call the adder submodule

* module instantiation
    - always
        - can be used in both design code and behavioral code
    - initial
        - only executed once at the start of the program
        - only used in behavioral (getting values to use in design code)
    - continuous assignment
    - forever

* Examples of "always" functions
    - always #5 clk = ~clk
        - clock will invert value every 5 seconds
    - always @ (posedge clk) begin ... end 
        - triggered on positive edge of clock
    - always @ (clk) begin ... end 
        - will run while clock is "high"

* Blocking vs Non-blocking
    - blocking is parallel
    - Non-blocking is linear
