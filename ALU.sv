`include "subtract.sv"
`include "comparator.sv"
`include "shifter.sv"

module ALU(i_a, i_b, i_carry, o_carry, o_out, o_ERR, i_op);

    parameter BITS = 8;
    // Wejścia
    input logic [BITS-1:0] i_a;
    input logic [BITS-1:0] i_b;
    input logic [1:0] i_op;
    input logic i_carry;

    // Wyjścia
    output logic o_carry;
    output logic o_ERR;
    output logic [BITS-1:0] o_out;

    // Sygnały wewnętrzne
    logic [BITS-1:0] s_out_shl;
    logic [BITS-1:0] s_out_sub;
    logic s_out_comp;
    logic s_carry_sub;
    logic s_ERR;

    subtract     #(.N(BITS))   sub_model    (.i_a(i_a), .i_b(i_b), .i_carry(i_carry), .o_out(s_out_sub), .o_carry(s_carry_sub));
    comparator     #(.N(BITS))   comp_model    (.i_a(i_a), .i_b(i_b), .o_out(s_out_comp));
    shifter         #(.N(BITS))  shl_model      (.i_a(i_a), .i_b(i_b), .o_out(s_out_shl), .o_ERR(s_ERR));

    always_comb begin
        priority case (i_op)
            2'b00:  begin 
                o_ERR = '0;
                o_out = s_out_sub;
                o_carry = s_carry_sub;
            end
            2'b01:  begin
                o_ERR = '0;
                o_out = 8'b0 | s_out_comp;
                o_carry = '0;
            end
            2'b10:  begin
                o_ERR = s_ERR;
                o_out = s_out_shl;
            end
            default: o_out = '0;
        endcase
    end


endmodule