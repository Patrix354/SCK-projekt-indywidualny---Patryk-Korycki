`define ZNAK_A i_a[N-1]
`define ZNAK_B i_b[N-1]

module shifter(i_a, i_b, o_out, o_ERR);

    parameter N = 8;
    input logic [N-1:0] i_a;
    input logic [N-1:0] i_b;
    output logic [N-1:0] o_out;
    output logic o_ERR;

    always_comb begin
        if(`ZNAK_B) begin
            o_ERR = 1'b1;
            o_out = '0;
        end
        else begin
            o_ERR = 1'b0;
            o_out = `ZNAK_A | (i_a << i_b);
        end
    end

endmodule