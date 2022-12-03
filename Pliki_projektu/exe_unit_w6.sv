`include "macros.hv"

module exe_unit_w6(in_a, in_b, i_op, i_clk, i_rst, o_out, o_status);

    parameter BITS = 8;
    // Wejścia
    input logic [BITS-1:0] in_a;
    input logic [BITS-1:0] in_b;
    input logic [1:0] i_op;
    input logic i_clk;
    input logic i_rst;

    // Wyjścia
    output logic [3:0] o_status;
    output logic [BITS-1:0] o_out;

    // Sygnały wewnętrzne - wyjścia z pojedyńczych modułów
    logic [BITS-1:0] s_out_shl;
    logic [BITS-1:0] s_out_sub;
    logic [BITS-1:0] s_out_chg;
    logic s_out_comp;
    logic s_carry_sub;
    logic s_ovf_shl;
    logic s_ERR_shl;
    logic s_ERR_chg;

    // Sygnały wewnętrzne - zerowane przy resecie
    logic [1:0] s_op;
    logic [BITS-1:0] s_a;
    logic [BITS-1:0] s_b;
    
    int zeros;

    subtractor     #(.N(BITS))   sub    (.in_a(s_a), .in_b(s_b), .o_out(s_out_sub), .o_carry(s_carry_sub));
    comparator     #(.N(BITS))   comp    (.in_a(s_a), .in_b(s_b), .o_out(s_out_comp));
    shifter         #(.N(BITS))  shl      (.in_a(s_a), .in_b(s_b), .o_out(s_out_shl), .o_ERR(s_ERR_shl), .o_ovf(s_ovf_shl));
    bit_changer         #(.N(BITS))  chg      (.in_a(s_a), .in_b(s_b), .o_out(s_out_chg), .o_ERR(s_ERR_chg));

    always_ff @ (posedge i_clk) begin
        if(!i_rst) begin
            s_a <= '0;
            s_b <= '0;
            s_op <= '0;
        end
        else begin
            s_a <= in_a;
            s_b <= in_b;
            s_op <= i_op;
        end
    end

    always_comb begin
        case (s_op)
            2'b00:  begin   //Subtraktor
                o_out = s_out_sub;
                o_status[`OVF_BIT] = s_carry_sub;
                o_status[`ERROR_BIT] = '0;
            end
            2'b01:  begin   // Komparator
                o_out = '0 | s_out_comp;
                o_status[`OVF_BIT] = '0;
                o_status[`ERROR_BIT] = '0; 
            end
            2'b10:  begin   // Shifter
                o_out = s_out_shl;  
                o_status[`OVF_BIT] = s_ovf_shl;
                o_status[`ERROR_BIT] = s_ERR_shl;  
            end
            2'b11:  begin   // Zmieniacz bitu
                o_out = s_out_chg;
                o_status[`ERROR_BIT] = s_ERR_chg;
                o_status[`OVF_BIT] = '0;
            end
        endcase

        zeros = 0;

        for(int i = 0; i < BITS; i = i + 1) begin
            zeros = zeros + (1'b1 & ~o_out[i]);
        end

        if(!(zeros % 2)) begin
            o_status[`EVEN_BIT] = '1;
            o_status[`SINGLE_BIT] = '0;
        end
        else if(zeros == 1) begin
            o_status[`EVEN_BIT] = '0;
            o_status[`SINGLE_BIT] = '1;
        end
        else begin
            o_status[`EVEN_BIT] = '0;
            o_status[`SINGLE_BIT] = '0;
        end
    end

endmodule