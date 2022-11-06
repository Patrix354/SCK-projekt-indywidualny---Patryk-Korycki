`include "subtract.sv"
`include "comparator.sv"
`include "shifter.sv"

module ALU(i_a, i_b, i_op, o_out, o_carry, o_ERR, o_even, o_single);

    parameter BITS = 8;
    // Wejścia
    input logic [BITS-1:0] i_a;
    input logic [BITS-1:0] i_b;
    input logic [1:0] i_op;

    // Wyjścia
    output logic o_carry;
    output logic o_ERR;
    output logic o_even;
    output logic o_single;
    output logic [BITS-1:0] o_out;

    // Sygnały wewnętrzne
    logic [BITS-1:0] s_out_shl;
    logic [BITS-1:0] s_out_sub;
    logic s_out_comp;
    logic s_carry_sub;
    logic s_ERR_shl;
    
    // Zmienne
    int zeros;
    
    subtract     #(.N(BITS))   sub_model    (.i_a(i_a), .i_b(i_b), .o_out(s_out_sub), .o_carry(s_carry_sub));
    comparator     #(.N(BITS))   comp_model    (.i_a(i_a), .i_b(i_b), .o_out(s_out_comp));
    shifter         #(.N(BITS))  shl_model      (.i_a(i_a), .i_b(i_b), .o_out(s_out_shl), .o_ERR(s_ERR_shl));

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
                o_ERR = s_ERR_shl;
                o_out = s_out_shl;
                o_carry = '0;   // Później zrobię przeniesienie dla shiftera
            end
            default: begin
                o_out = '0;
                o_ERR = '0;
                o_carry = '0;
            end
        endcase

        o_even = '0;
        o_single = '0;
        zeros = 0;

        for(int i = 0; i < BITS; i = i + 1) begin
            zeros = zeros + (1'b1 & ~o_out[i]);
        end

        if(!(zeros % 2)) begin
            o_even = 1'b1;
            o_single = 1'b0;
        end
        else if(zeros == 1) begin
            o_even = 1'b0;
            o_single = 1'b1;
        end
        else begin
            o_even = 1'b0;
            o_single = 1'b0;
        end


    end


endmodule