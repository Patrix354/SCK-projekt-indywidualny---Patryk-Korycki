`timescale 1ns/1ps     
`include "ALU.sv"

module testbench;
    parameter BITS = 8;

    logic [BITS-1:0] s_a;
    logic [BITS-1:0] s_b;


    logic [BITS-1:0] s_out_model;
    logic [BITS-1:0] s_out_synth;

    logic s_carry_in;
    logic s_carry_out_synth;
    logic s_carry_out_model;

    logic s_ERR_model;
    logic s_ERR_synth;

    logic [1:0] s_op;


    ALU     #(.BITS(BITS))   sub_model    (.i_a(s_a), .i_b(s_b), .i_carry(s_carry_in), .o_out(s_out_model), .o_carry(s_carry_out_model), .o_ERR(s_ERR_model), 
                                            .i_op(s_op));    // model oryginalny
    ALU_rtl               sub_synth    (.i_a(s_a), .i_b(s_b), .i_carry(s_carry_in), .o_out(s_out_synth), .o_carry(s_carry_out_synth), .o_ERR(s_ERR_synth),
                                        .i_op(s_op));    // model po syntezie

    initial begin
                $dumpfile("signals.vcd");
                $dumpvars(0,testbench);

            $display("start");
                s_carry_in = '0;

                s_op = 2'b010;
                s_a = 8'd10;
                s_b = 8'd5;
            #1  
                s_a = 8'd8;
                s_b = 8'd10;
            #1  
                s_a = 8'd15;
                s_b = 8'd8;
            
            #1
                s_a = 8'b00000001;
                s_b = 8'b10000010;
            #1
            s_op = 2'b00;                
            
                s_a = 8'd10;
                s_b = 8'd5;
            #1  
                s_a = 8'd8;
                s_b = 8'd10;
            #1  
                s_a = 8'd15;
                s_b = 8'd8;
            
            #1
                s_a = 8'd1;
                s_b = 8'd3;
            #1
                s_a = 8'b00000001;
                s_b = 8'b10000010;
            #1


            $display("Done");
            $finish;
        end

endmodule