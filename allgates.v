
module basic_gates (
    input wire a,    // First input
    input wire b,    // Second input
    output wire and_out,  // Output of AND gate
    output wire or_out,   // Output of OR gate
    output wire not_out,  // Output of NOT gate (only for input 'a')
    output wire nand_out, // Output of NAND gate
    output wire nor_out,  // Output of NOR gate
    output wire xor_out,  // Output of XOR gate
    output wire xnor_out  // Output of XNOR gate
);

    // AND gate
    assign and_out = a & b;
    
    // OR gate
    assign or_out = a | b;
    
    // NOT gate (only for input 'a')
    assign not_out = ~a;
    
    // NAND gate
    assign nand_out = ~(a & b);
    
    // NOR gate
    assign nor_out = ~(a | b);
    
    // XOR gate
    assign xor_out = a ^ b;
    
    // XNOR gate
    assign xnor_out = ~(a ^ b);
// Dumping the waveform
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars(0, basic_gates);
  end

endmodule
