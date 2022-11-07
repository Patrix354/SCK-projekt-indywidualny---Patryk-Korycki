`include "subtract.sv"
`include "comparator.sv"
`include "shifter.sv"
`include "changer.sv"

module ALU(i_a, i_b, i_op, o_out, o_ovf, o_ERR, o_even, o_single);

    parameter BITS = 8;
    // Wejścia
    input logic [BITS-1:0] i_a;
    input logic [BITS-1:0] i_b;
    input logic [1:0] i_op;

    // Wyjścia
    output logic o_ovf;
    output logic o_ERR;
    output logic o_even;
    output logic o_single;
    output logic [BITS-1:0] o_out;

    // Sygnały wewnętrzne
    logic [BITS-1:0] s_out_shl;
    logic [BITS-1:0] s_out_sub;
    logic [BITS-1:0] s_out_chg;
    logic s_out_comp;
    logic s_carry_sub;
    logic s_ovf_shl;
    logic s_ERR_shl;
    logic s_ERR_chg;
    
    // Zmienne
    int zeros;
    
    subtract     #(.N(BITS))   sub_model    (.i_a(i_a), .i_b(i_b), .o_out(s_out_sub), .o_carry(s_carry_sub));
    comparator     #(.N(BITS))   comp_model    (.i_a(i_a), .i_b(i_b), .o_out(s_out_comp));
    shifter         #(.N(BITS))  shl_model      (.i_a(i_a), .i_b(i_b), .o_out(s_out_shl), .o_ERR(s_ERR_shl), .o_ovf(s_ovf_shl));
    changer         #(.N(BITS))  chg_model      (.i_a(i_a), .i_b(i_b), .o_out(s_out_chg), .o_ERR(s_ERR_chg));

    always_comb begin
        case (i_op)
            2'b00:  begin   //Subtraktor
                o_ERR = '0;
                o_out = s_out_sub;
                o_ovf = s_carry_sub;
            end
            2'b01:  begin   // Komparator
                o_ERR = '0;
                o_out = 8'b0 | s_out_comp;
                o_ovf = '0;
            end
            2'b10:  begin   // Shifter
                o_ERR = s_ERR_shl;
                o_out = s_out_shl;
                o_ovf = s_ovf_shl;   
            end
            2'b11:  begin   // Zmieniacz bitu
                o_ERR = s_ERR_chg;
                o_out = s_out_chg;
                o_ovf = '0;
            end
            default: begin
                o_out = '0;
                o_ERR = '0;
                o_ovf = '0;
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