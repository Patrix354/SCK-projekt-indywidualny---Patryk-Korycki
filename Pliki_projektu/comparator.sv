`define ZNAK_A i_a[N-1]
`define ZNAK_B i_b[N-1]

`define MODUL_A i_a[N-2:0]
`define MODUL_B i_b[N-2:0]

module comparator(i_a, i_b, o_out);

    parameter N = 8;
    input logic [N-1:0] i_a;
    input logic [N-1:0] i_b;

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