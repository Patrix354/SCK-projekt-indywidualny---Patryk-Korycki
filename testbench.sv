`timescale 1ns/1ps     
`include "ALU.sv"

module testbench;
    parameter BITS = 8;

    logic [BITS-1:0] s_a;
    logic [BITS-1:0] s_b;

    logic [BITS-1:0] s_out_model;
    logic [BITS-1:0] s_out_synth;

    logic s_carry_out_synth;
    logic s_carry_out_model;

    logic s_ERR_model;
    logic s_ERR_synth;

    logic s_even_model;
    logic s_even_synth;

    logic s_single_model;
    logic s_single_synth;

    logic [1:0] s_op;

    ALU     #(.BITS(BITS))   alu_model    (.i_a(s_a), .i_b(s_b), .o_out(s_out_model), .o_carry(s_carry_out_model), .o_ERR(s_ERR_model), 
                                            .i_op(s_op), .o_even(s_even_model), .o_single(s_single_model));    // model oryginalny
    ALU_rtl               alu_synth    (.i_a(s_a), .i_b(s_b), .o_out(s_out_synth), .o_carry(s_carry_out_synth), .o_ERR(s_ERR_synth),
                                        .i_op(s_op), .o_even(s_even_synth), .o_single(s_single_synth));    // model po syntezie

    initial begin
            $dumpfile("signals.vcd");
            $dumpvars(0,testbench);

            $display("start");
            s_op = 2'b00;   //Subtraktor  
        
        #1
            s_op = 2'b01;   // Komparator
        
        #1
            s_op = 2'b10;  // Shifter              
        
        #1
            s_op = 2'b11;   // Zmieniacz bitu

            s_a = 8'b10101010;
            s_b = 8'b10000001;
            #1
            s_a = 8'b10101010;
            s_b = 8'b00000001;
            #1
            s_a = 8'b10101010;
            s_b = 8'b00000111;
            #1
            s_a = 8'b10101010;
            s_b = 8'b00000011;
            #1
            s_a = 8'b11111111;
            s_b = 8'b00000001;
        
        #1
            $display("Done");
            $finish;
        end

endmodule