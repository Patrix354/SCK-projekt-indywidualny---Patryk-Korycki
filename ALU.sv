`include "subtract.sv"
`include "comparator.sv"

module ALU(i_a, i_b, i_carry, o_out_sub, o_carry, o_out_comp);

    parameter BITS = 8;
    input logic [BITS-1:0] i_a;
    input logic [BITS-1:0] i_b;
    input logic i_carry;
    output logic [BITS-1:0] o_out_sub;
    output logic o_out_comp;
    output logic o_carry;

    subtract     #(.N(BITS))   sub_model    (.i_a(i_a), .i_b(i_b), .i_carry(i_carry), .o_out(o_out_sub), .o_carry(o_carry));
    comparator     #(.N(BITS))   comp_model    (.i_a(i_a), .i_b(i_b), .o_out(o_out_comp));


endmodule