`include "macros.hv"

module bit_changer(in_a, in_b, o_out, o_ERR);

    parameter N = 8;
    input logic [N-1:0] in_a;
    input logic [N-1:0] in_b;

    output logic [N-1:0] o_out;
    output logic o_ERR;

    always_comb begin
        if(`ZNAK_B || (`MODUL_B > N)) begin
            o_ERR = '1;
            o_out = 'x;
        end
        else begin
            o_out = in_a | (1 << in_b);
            o_ERR = '0;
        end
    end

endmodule