`include "../INCLUDE/macros.hv"

module comparator(in_a, in_b, o_out);

    parameter N = 8;
    input logic [N-1:0] in_a;
    input logic [N-1:0] in_b;

    output logic o_out;

    always_comb begin
        if( (`ZNAK_A ^ `ZNAK_B) && !`ZNAK_A) begin   // Gdy znaki się różnią i znak A jest na plusie wyjście ma zawsze 1
            o_out = 1'b1;
        end
        else if( (`ZNAK_A ^ `ZNAK_B) && `ZNAK_A) begin // Gdy znaki się różnią i znak A jest na minusie wyjście ma zawsze 0
            o_out = 1'b0;
        end
        else if(!`ZNAK_A && (`MODUL_A >= `MODUL_B)) begin   // Gdy A jest z plusem porównujemy moduły
            o_out = 1'b1;
        end
        else if (`ZNAK_A && (`MODUL_A <= `MODUL_B)) begin    // Gdy A jest z minusem to zmieniamy znak porównania
            o_out = 1'b1;
        end
        else begin  // W innym przypadku wyjście ma 0
            o_out = 1'b0;
        end
    end

endmodule