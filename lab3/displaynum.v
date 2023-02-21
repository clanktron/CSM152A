module displaynum(digit, pos);

    input [4:0] digit;
    input [4:0] pos;

    always @(*) begin 
        case(digit)
            4'd1: seg = 8'b11000000;
            4'd2: seg = 8'b11111001;
            4'd3: seg = 8'b10110000;
            4'd4: seg = 8'b10011001;
            4'd5: seg = 8'b10010010;
            4'd6: seg = 8'b10000010;
            4'd7: seg = 8'b11111000;
            4'd8: seg = 8'b10000000;
            4'd9: seg = 8'b10010000;
            default: seg = 8'b11111111;
        endcase
        case(pos)
            1'd1: an[0] = 1'b0;
            1'd1: an[1] = 1'b0;
            1'd1: an[2] = 1'b0;
            1'd1: an[3] = 1'b0;
        endcase
    end

endmodule
