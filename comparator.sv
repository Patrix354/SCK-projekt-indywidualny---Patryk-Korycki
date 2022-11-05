module comparator(i_a, i_b, o_out);

    parameter N = 8;
    input logic [N-1:0] i_a;
    input logic [N-1:0] i_b;
    output logic o_out;

    always_comb begin
        if(i_a >= i_b) begin
            o_out = 1'b1;
        end
        else begin
            o_out = 1'b0;
        end
    end

endmodule