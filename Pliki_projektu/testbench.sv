`timescale 1ns/1ps     

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

    ALU     #(.BITS(BITS))   alu_model    (.i_a(s_a), .i_b(s_b), .i_op(s_op), .i_clk(s_clk), .i_rst(s_rst), .o_out(s_out_model), .o_status(s_status_model));    // model oryginalny
    ALU_rtl               alu_synth    (.i_a(s_a), .i_b(s_b), .i_op(s_op), .i_clk(s_clk), .i_rst(s_rst), .o_out(s_out_synth), .o_status(s_status_synth));    // model po syntezie

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
            s_op = 2'b00;   //Subtraktor  
            s_a = 8'b11010010; //-82
            s_b = 8'b11010101;  //-85
            #5
            s_a = 8'b10101001; //-41
            s_b = 8'b10011010;  //-26
            #5
            s_a = 8'b00000111;  //7
            s_b = 8'b01000000;  //64
            #5
            s_a = 8'b01101111;  //111
            s_b = 8'b00011000;  //24
            #5
            s_a = 8'b01101111;  //111
            s_b = 8'b00011000;  //24

        #5
            s_op = 2'b01;   // Komparator
        
        #5
            s_op = 2'b10;  // Shifter      
            s_a = 8'b10000010;
            s_b = 8'b00000010;
            #5
            s_a = 8'b00000011;
            s_b = 8'b10000001;
            #5
            s_a = 8'b00000011;
            s_b = 8'b00000011;
            #5
            s_a = 8'b01000011;
            s_b = 8'b00000100;
            #5
            s_a = 8'b11000000;
            s_b = 8'b00000001;
        
        #5
            s_op = 2'b11;   // Zmieniacz bitu

            s_a = 8'b10101010;
            s_b = 8'b10000001;
            #5
            s_a = 8'b10101010;
            s_b = 8'b00000001;
            #5
            s_rst = '0;
            s_a = 8'b10101010;
            s_b = 8'b00000111;
            #5
            s_a = 8'b10101010;
            s_b = 8'b00000011;
            #5
            s_a = 8'b11111111;
            s_b = 8'b00000001;
        
        #5
            $display("Done");
            $finish;
        end

endmodule