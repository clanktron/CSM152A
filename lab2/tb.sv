module testbench();

   reg [11:0] d1; 
   wire s1;
   wire [2:0] e1;
   wire [3:0] f1;

    task testy;
      input integer testnum;
      begin
       d1 = testnum;
       #5
       $display("S: %b ", s1, "E: %b ", e1, "F: %b ", f1, " or  ", "S: %d ", s1, "E: %d ", e1, "F: %d ", f1, "      Original Value: %d", testnum);
      end
    endtask

   FPCVT n(.D(d1), .S(s1), .E(e1), .F(f1));

   initial begin 
       testy(0);
       testy(-2);
       testy(210);
       testy(-40);
       testy(56);
       testy(-2048);
       testy(2047);
       testy(12'b000000101100);
       testy(12'b000000101101);
       testy(12'b000000101110);
       testy(12'b000000101111);
    end

endmodule
