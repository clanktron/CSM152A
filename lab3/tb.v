module testbench();
  reg[4:0] a;
  reg[4:0] b;
  
  displaynum testdisplay(.digit(a), .pos(b));
  
  initial begin
	a = 4;
    b = 3;
    #50
	a = 2;
    b = 2;
  end

endmodule
