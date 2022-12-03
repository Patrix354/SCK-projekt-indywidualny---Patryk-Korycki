`timescale 1ns/1ps     

`define MINUS (1<<(BITS-1)) |

module testbench;
    parameter BITS = 8;

    logic [BITS-1:0] s_a;
    logic [BITS-1:0] s_b;
    logic s_clk;
    logic s_rst;

    logic [BITS-1:0] s_out_model;
    logic [BITS-1:0] s_out_synth;

    logic [3:0] s_status_synth;
    logic [3:0] s_status_model;

    logic [1:0] s_op;

    exe_unit_w6     #(.BITS(BITS))   exe_unit_w6_model    (.in_a(s_a), .in_b(s_b), .i_op(s_op), .i_clk(s_clk), .i_rst(s_rst), .o_out(s_out_model), .o_status(s_status_model));    // model oryginalny
    exe_unit_w6_rtl               exe_unit_w6_synth    (.in_a(s_a), .in_b(s_b), .i_op(s_op), .i_clk(s_clk), .i_rst(s_rst), .o_out(s_out_synth), .o_status(s_status_synth));    // model po syntezie

    initial begin 
        s_clk = '0;
        forever begin
            #0.5 s_clk = ~s_clk;
        end 
    end

    initial begin
            $dumpfile("signals.vcd");
            $dumpvars(0,testbench);

            $display("start");
            s_rst = '1;
//////////////////////////////////////////////////////////
            // s_op = 2'b00;   //Subtraktor 
            // s_a = `MINUS 8'd127;  // -127 - 1 = 128 (przepełnienie)
            // s_b = 8'd1;
        // #2
            // s_a = 8'd127;  // 127 - (-1) = 128 (przepełnienie)
            // s_b = 8'd1;
        // #2
            // s_a = `MINUS 8'd120;  // -120 - 9 = -111 (flaga SINGLE)
            // s_b = 8'd9;
        // #2
            // s_a = 8'd91;
            // s_b = 8'd41;
        // #2
            // s_rst = '0;
        // #2
///////////////////////////////////////////////
        //     s_op = 2'b01;   // Komparator
        //     s_a = `MINUS 8'd50;
        //     s_b = 8'd4;
        // #2
        //     s_a = 8'd90;
        //     s_b = 8'd40;
        // #2
        //     s_rst = '0;
        // #2
////////////////////////////////////////////////
        //     s_op = 2'b10;  // Shifter 
             
        //     s_a = 8'b11000001;  //Flaga ERR
        //     s_b = 8'b10000001;
        // #2
        //     s_a = 8'b00001001;  //Obl testowe
        //     s_b = 8'b00000001;
        // #2
        //     s_a = 8'b11111111;  // Przepełnienie + flaga single
        //     s_b = 8'b00000001;
        // #2
        //     s_a = 8'b00000110;  //Przepełnienie + zachowanie znaku
        //     s_b = 8'b00000101;
        // #2
        //     s_a = 8'b10000001;  // Zachowanie znaku (+ przepełnienie ?)
        //     s_b = 8'b00000010;
        // #2
        //     s_rst = '0;
        // #2
/////////////////////////////////////////////
            s_op = 2'b11;   // Zmieniacz bitu

            s_a = 8'b00000000;  //ERR
            s_b = 8'b10000001;
        #2
            s_a = 8'b00000000;  //ERR
            s_b = 8'b01110000;
        #2
            s_a = 8'b10110000;  //EVEN
            s_b = 8'b00000000;
        #2
            s_a = 8'b11111100;  //SINGLE
            s_b = 8'b00000001;
        #2
            s_a = 8'b01100110;   //-
            s_b = 8'b00000011;
        #2
            s_rst = '0;
        #2
            $display("Done");
            $finish;
        end

endmodule