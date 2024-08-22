
`timescale 1ns / 1ps

module basic_gates_tb;

  // Inputs
  reg a;
  reg b;

  // Outputs
  wire and_out;
  wire or_out;
  wire not_out;
  wire nand_out;
  wire nor_out;
  wire xor_out;
  wire xnor_out;

  // Instantiate the Unit Under Test (UUT)
  basic_gates uut (
    .a(a), 
    .b(b), 
    .and_out(and_out), 
    .or_out(or_out), 
    .not_out(not_out), 
    .nand_out(nand_out), 
    .nor_out(nor_out), 
    .xor_out(xor_out), 
    .xnor_out(xnor_out)
  );

  initial begin
    // Initialize Inputs
    a = 0;
    b = 0;

    // Wait for global reset to finish
    #10;
    
    // Test all possible input combinations
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    // Finish simulation
    $stop;
  end

  initial begin
    $monitor("At time %t: a = %b, b = %b | AND = %b, OR = %b, NOT = %b, NAND = %b, NOR = %b, XOR = %b, XNOR = %b", 
             $time, a, b, and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);
  end

  // Dumping the waveform
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars(0, basic_gates_tb);
  end

endmodule
