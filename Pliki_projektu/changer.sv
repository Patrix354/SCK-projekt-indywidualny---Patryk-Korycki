`include "macros.hv"

module changer(i_a, i_b, o_out, o_ERR);

    parameter N = 8;
    input logic [N-1:0] i_a;
    input logic [N-1:0] i_b;

    output logic [N-1:0] o_out;
    output logic o_ERR;

    always_comb begin
        if(`ZNAK_B || (`MODUL_B >= N)) begin
            o_ERR = '1;
            o_out = '0;
        end
        else begin
            o_out = i_a ^ (1 << i_b);
            o_ERR = '0;
        end
    end

endmodule