module subtract(i_a, i_b, i_carry, o_out, o_carry);

    parameter N = 8;
    input logic [N-1:0] i_a;
    input logic [N-1:0] i_b;
    input logic i_carry;
    output logic [N-1:0] o_out;
    output logic o_carry;

    always_comb begin
        {o_carry, o_out} = i_a - i_b - i_carry;
        // Wszystko działa jeśli wejścia są w NKB 
        // Niestety operacja wykonana w ten spodób interpretuje, że liczby na wejściu są w NKB
    end

endmodule