module Clock(master, onehz, twohz, speedyhz, blinkyhz);
// Takes 100MHz master clock
// (internally connected to pin V10 of the Nexys3 FPGA board)
//
// onehz = 1Hz, twohz = 2Hz, speedyhz = 50-700Hz, blinkyhz = >1Hz
//
    wire master, onehz, twohz, speedyhz, blinkyhz;

    always @ (posedge clk) begin

    end

