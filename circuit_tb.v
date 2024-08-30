`timescale 1ns/1ns
// import circuit code
`include "circuit.v"

module sample_tb;

// declare inputs as registers
reg A;
reg B;
reg C;

// declare outputs as wires
wire D;
wire E;

// initialize circuit module
test_circuit uut(A, B, C, D, E);

// this block will only run in simulation and cannot be mapped to hardware
initial begin
    // create dump file
    $dumpfile("circuit_tb.vcd");
    $dumpvars(0, sample_tb);

    // start writing values
    {A, B, C} = 3'b000;
    #10; 

    {A, B, C} = 3'b001;
    #10;

    {A, B, C} = 3'b010;
    #10;

    {A, B, C} = 3'b011;
    #10;

    {A, B, C} = 3'b100;
    #10;

    {A, B, C} = 3'b101;
    #10;

    {A, B, C} = 3'b110;
    #10;

    {A, B, C} = 3'b111;
    #10;

    $display("Test complete! Hell yeah MF");
end

endmodule