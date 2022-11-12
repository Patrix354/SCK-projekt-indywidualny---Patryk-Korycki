`define ERROR_BIT 0
`define EVEN_BIT 1
`define OVF_BIT 2
`define SINGLE_BIT 3

module zero_cnt(i_byte, i_carry, i_ERR_shl, i_ERR_chg, i_ovf, i_op, o_status);

    parameter N = 8;
    input logic [N-1:0] i_byte;
    output logic [3:0] o_status;
    input logic [1:0] i_op;
    input logic i_ovf;
    input logic i_ERR_chg;
    input logic i_ERR_shl;
    input logic i_carry;

    int zeros;
    always_comb begin 
        case (i_op)
            2'b00:  begin   //Subtraktor
                o_status[`OVF_BIT] = i_carry;
                o_status[`ERROR_BIT] = '0;
            end
            2'b01:  begin   // Komparator
                o_status[`OVF_BIT] = '0;
                o_status[`ERROR_BIT] = '0; 
            end
            2'b10:  begin   // Shifter
                o_status[`OVF_BIT] = i_ovf;
                o_status[`ERROR_BIT] = i_ERR_shl;   
            end
            2'b11:  begin   // Zmieniacz bitu
                o_status[`ERROR_BIT] = i_ERR_chg;
                o_status[`OVF_BIT] = '0;
            end
        endcase

        zeros = 0;

        for(int i = 0; i < N; i = i + 1) begin
            zeros = zeros + (1'b1 & ~i_byte[i]);
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