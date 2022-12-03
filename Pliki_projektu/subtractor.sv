`include "macros.hv"

module subtractor(in_a, in_b, o_out, o_carry);

    parameter N = 8;
    input logic [N-1:0] in_a;
    input logic [N-1:0] in_b;

    output logic [N-1:0] o_out;
    output logic o_carry;

    logic s_carry;
    logic [N-2:0] s_out;
    logic s_sign;

    always_comb begin
        if( !(`ZNAK_A ^ `ZNAK_B) ) begin    // Jeśli znaki A i B są takie same
            if(`MODUL_A >= `MODUL_B) begin
                {s_carry, s_out} = `MODUL_A - `MODUL_B;
                s_sign = `ZNAK_A;
            end
            else begin
                {s_carry, s_out} = `MODUL_B - `MODUL_A;
                s_sign = ~`ZNAK_A;
            end
        end
        else if(!`ZNAK_A && `ZNAK_B) begin  // Jeśli znak A jest + i znak B jest -
            {s_carry, s_out} = `MODUL_A + `MODUL_B;
            s_sign = '0;
        end
        else if(`ZNAK_A && !`ZNAK_B) begin //jEŚ
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