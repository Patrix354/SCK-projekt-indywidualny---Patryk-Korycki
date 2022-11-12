`define ZNAK_A i_a[N-1]
`define ZNAK_B i_b[N-1]

`define MODUL_A i_a[N-2:0]
`define MODUL_B i_b[N-2:0]

module subtract(i_a, i_b, i_clk, i_rst, o_out, o_carry);

    parameter N = 8;
    input logic [N-1:0] i_a;
    input logic [N-1:0] i_b;
    input logic i_clk;
    input logic i_rst;

    output logic [N-1:0] o_out;
    output logic o_carry;

    logic s_carry;
    logic [N-2:0] s_out;
    logic s_sign;

    always_comb begin
        if( !(`ZNAK_A ^ `ZNAK_B) ) begin
            if(`MODUL_A >= `MODUL_B) begin
                {s_carry, s_out} = `MODUL_A - `MODUL_B;
                s_sign = `ZNAK_A;
            end
            else begin
                {s_carry, s_out} = `MODUL_B - `MODUL_A;
                s_sign = ~`ZNAK_A;
            end
        end
        else if(!`ZNAK_A && `ZNAK_B) begin 
            {s_carry, s_out} = `MODUL_A + `MODUL_B;
            s_sign = '0;
        end
        else if(`ZNAK_A && !`ZNAK_B) begin 
            {s_carry, s_out} = `MODUL_A + `MODUL_B;
            s_sign = '1;
        end
        else begin
            s_carry = '0;
            s_out = '0;
            s_sign = '0;
        end

        o_out = {s_sign, s_out};
        o_carry = s_carry;
    end

endmodule