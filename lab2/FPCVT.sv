module FPCVT(D,S,E,F);

    input [11:0] D;
    output reg S;
    output reg[2:0] E;
    output reg[3:0] F;

    reg [11:0] store_input;
    integer i, x, leading_zeros;

    always @(*) begin 
        S = D[11];
        i = 11;
        if (S == 1'b1) begin 
            store_input = ~D[11:0];
            store_input = store_input + 1'b1;
        end else begin
            store_input = D;
        end
        while (store_input[i] == 0 && i != 0) begin
                i = i - 1;
        end
        leading_zeros = 11 - i;
        if (leading_zeros >= 8) begin
            E = 0;
            F = store_input[3:0];
        end else begin
            E = 8 - leading_zeros;
            for (x = 0; x < 4; x++) begin
                F = F << 1;
                F[0] = store_input[i];
                i--;
            end
            if (store_input[i] == 1'b1) begin
                if (F != 4'b1111) begin
                    F = F + 1;
                end else if (F == 4'b1111 && E != 3'b111) begin
                    E = E + 1;
                    F = 4'b1000;
                end
            end
        end
        // Handle edge-case of largest negative possible value
        if (store_input[11] == 1'b1) begin 
            E = 3'b111;
            F = 4'b1111;
        end
    end
endmodule
