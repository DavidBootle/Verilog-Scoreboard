module test_circuit (
    input A,
    input B,
    input C,
    output D,
    output E );

    wire w1;

    assign w1 = A & B;
    assign E = ~C;
    assign D = w1 | E;

    

endmodule