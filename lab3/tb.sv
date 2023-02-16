module testbench;
  wire a, b;
  
  display testdisplay(.digit(a), .display(b));
  
  initial begin
	a = 4;
    b = 3;
    #500
    
	a = 2;
    b = 2;
    #500
    $finish;
  end
endmodule
