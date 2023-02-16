module display(
    input digit, display
    );

    always @(*) begin 
        case(digit)
            1'd1: sevenseg = 8'b11000000;
            1'd2: sevenseg = 8'b11111001;
            1'd3: sevenseg = 8'b10110000;
            1'd4: sevenseg = 8'b10011001;
            1'd5: sevenseg = 8'b10010010;
            1'd6: sevenseg = 8'b10000010;
            1'd7: sevenseg = 8'b11111000;
            1'd8: sevenseg = 8'b10000000;
            1'd9: sevenseg = 8'b10010000;
            default: sevenseg = 8'b11111111;
        endcase
        case(display)
            1'd1: an<0> = 1'b0;
            1'd1: an<1> = 1'b0;
            1'd1: an<2> = 1'b0;
            1'd1: an<3> = 1'b0;
        endcase
    end
