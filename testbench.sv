`timescale 1ns/1ps     
`include "ALU.sv"

module testbench;
    parameter BITS = 8;

    logic [BITS-1:0] s_a;
    logic [BITS-1:0] s_b;
    logic [BITS-1:0] s_out_sub_model;
    logic [BITS-1:0] s_out_sub_synth;
    logic s_out_comp_model;
    logic s_out_comp_synth;


    logic s_carry_in;
    logic s_carry_out_synth;
    logic s_carry_outh_model;

    ALU     #(.BITS(BITS))   sub_model    (.i_a(s_a), .i_b(s_b), .i_carry(s_carry_in), .o_out_sub(s_out_sub_model), .o_carry(s_carry_out_model), 
                                            .o_out_comp(s_out_comp_model));    // model oryginalny
    ALU_rtl               sub_synth    (.i_a(s_a), .i_b(s_b), .i_carry(s_carry_in), .o_out_sub(s_out_sub_synth), .o_carry(s_carry_out_synth),
                                        .o_out_comp(s_out_comp_synth));    // model po syntezie

    initial
        begin
                $dumpfile("signals.vcd");
                $dumpvars(0,testbench);

                s_carry_in = '0;
                s_a = 8'd10;
                s_b = 8'd5;
            #1  
                s_a = 8'd8;
                s_b = 8'd10;
            #1  
                s_a = 8'd15;
                s_b = 8'd8;
            
            #1
                s_a = 8'b11111110;
                s_b = 8'b11111100;
            #1
                s_a = 8'b11111100;
                s_b = 8'b11111110;
            #1
            $finish;
        end

endmodule