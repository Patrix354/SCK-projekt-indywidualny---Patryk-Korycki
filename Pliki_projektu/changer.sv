`define ZNAK_A i_a[N-1]
`define ZNAK_B i_b[N-1]

`define MODUL_A i_a[N-2:0]
`define MODUL_B i_b[N-2:0]

module changer(i_a, i_b, i_clk, i_rst, o_out, o_ERR);

    parameter N = 8;
    input logic [N-1:0] i_a;
    input logic [N-1:0] i_b;
    input logic i_clk;
    input logic i_rst;

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