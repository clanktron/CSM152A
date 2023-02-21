`timescale 1ns/1ps

module Clock(
    input wire clk, // Takes 100MHz master clock (internal FPGA pin)
    input wire rst, // 
    output wire onehz, // 1Hz clock
    output wire twohz, // 2Hz clock
    output wire speedyhz, // 50-70Hz clock
    output wire blinkyhz // >1Hz; used to blink clock during adjustment mode
);
    // divide 100Mhz (aka) 100000000Hz by 100000000 to get 1Hz
    // divide 100Mhz (aka) 100000000Hz by 50000000 to get 2Hz
    // divide 100Mhz (aka) 100000000Hz by 1666666 to get 1.5Hz (blinkyhz)
    // divide 100Mhz (aka) 100000000Hz by 66666666 to get 1.5Hz (blinkyhz)
   
    always @ ((posedge clk) or (posedge rst)) begin

    end

