`include "subtract.sv"
`include "comparator.sv"
`include "shifter.sv"

module ALU(i_a, i_b, i_carry, o_carry, o_out_sub, o_out_comp, o_out_shl, o_ERR_shl);

    parameter BITS = 8;
    input logic [BITS-1:0] i_a;
    input logic [BITS-1:0] i_b;

    // Subtraktor
    input logic i_carry;
    output logic o_carry;
    output logic [BITS-1:0] o_out_sub;

    // Komparator
    output logic o_out_comp;

    // Shifter
    output logic o_ERR_shl;
    output logic [BITS-1:0] o_out_shl;

    subtract     #(.N(BITS))   sub_model    (.i_a(i_a), .i_b(i_b), .i_carry(i_carry), .o_out(o_out_sub), .o_carry(o_carry));
    comparator     #(.N(BITS))   comp_model    (.i_a(i_a), .i_b(i_b), .o_out(o_out_comp));
    shifter         #(.N(BITS))  shl_model      (.i_a(i_a), .i_b(i_b), .o_out(o_out_shl), .o_ERR(o_ERR_shl));


endmodule