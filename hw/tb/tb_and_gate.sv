`timescale 1ns/1ps

module tb_and_gate;

    // Señales de prueba
    logic a;
    logic b;
    logic y;

    // Instancia de la compuerta AND
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Generación de estímulos
    initial begin
        $display("Time\t a b | y");
        $monitor("%0t\t %b %b | %b", $time, a, b, y);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule
