`include "subtract.sv"
`include "comparator.sv"
`include "shifter.sv"
`include "changer.sv"
`include "zero_cnt.sv"

`define ERROR_BIT 0
`define EVEN_BIT 1
`define OVF_BIT 2
`define SINGLE_BIT 3


module ALU(i_a, i_b, i_op, i_clk, i_rst, o_out, o_status);

    parameter BITS = 8;
    // Wejścia
    input logic [BITS-1:0] i_a;
    input logic [BITS-1:0] i_b;
    input logic [1:0] i_op;
    input logic i_clk;
    input logic i_rst;

    // Wyjścia
    output logic [3:0] o_status;
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
    logic [3:0] s_status;
    logic [1:0] s_op;
 
    logic [BITS-1:0] s_a;
    logic [BITS-1:0] s_b;
    
    subtract     #(.N(BITS))   sub    (.i_a(s_a), .i_b(s_b), .i_clk(i_clk), .i_rst(i_rst), .o_out(s_out_sub), .o_carry(s_carry_sub));
    comparator     #(.N(BITS))   comp    (.i_a(s_a), .i_b(s_b), .i_clk(i_clk), .i_rst(i_rst), .o_out(s_out_comp));
    shifter         #(.N(BITS))  shl      (.i_a(s_a), .i_b(s_b), .i_clk(i_clk), .i_rst(i_rst), .o_out(s_out_shl), .o_ERR(s_ERR_shl), .o_ovf(s_ovf_shl));
    changer         #(.N(BITS))  chg      (.i_a(s_a), .i_b(s_b), .i_clk(i_clk), .i_rst(i_rst), .o_out(s_out_chg), .o_ERR(s_ERR_chg));
    zero_cnt    #(.N(BITS))     zcnt    (.i_byte(o_out), .i_carry(s_carry_sub), .i_ovf(s_ovf_shl), .i_ERR_shl(s_ERR_shl), .i_ERR_chg(s_ERR_chg), .i_op(i_op), .o_status(o_status));
    
    always_ff @ (posedge i_clk) begin
        if(!i_rst) begin
            s_a = '0;
            s_b = '0;
            s_op = '0;
        end
        else begin
            s_a = i_a;
            s_b = i_b;
            s_op = i_op;
        end
    end

    always_comb begin
        case (s_op)
            2'b00:  begin   //Subtraktor
                o_out = s_out_sub;
            end
            2'b01:  begin   // Komparator
                o_out = '0 | s_out_comp;
            end
            2'b10:  begin   // Shifter
                o_out = s_out_shl;  
            end
            2'b11:  begin   // Zmieniacz bitu
                o_out = s_out_chg;
            end
        endcase
    end

endmodule