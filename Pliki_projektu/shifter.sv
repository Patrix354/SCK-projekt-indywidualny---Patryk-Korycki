`include "macros.hv"

module shifter(in_a, in_b, o_out, o_ERR, o_ovf);

    parameter N = 8;
    input logic [N-1:0] in_a;
    input logic [N-1:0] in_b;
    
    output logic [N-1:0] o_out;
    output logic o_ERR;
    output logic o_ovf;

    logic [2*N-1:0] s_out;

    always_comb begin
        if(`ZNAK_B) begin
            o_ERR = '1;
            o_out = 'x;
            s_out = '0;
            o_ovf = '0;
        end
        else begin
            o_ERR = 1'b0;
            s_out = (`MODUL_A << `MODUL_B);
            o_out = (`ZNAK_A << N-1) | s_out[N-2:0];

            if(s_out[2*N-1:N-1])  begin
                o_ovf = '1;
            end
            else begin
                o_ovf = '0;
            end
        end
    end

endmodule