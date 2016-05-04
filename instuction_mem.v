module instruction_mem (
instruction_address,
instruction_data);

input [7:0] instruction_address;
output [7:0] instruction_data;  


<<<<<<< HEAD
reg [7:0] instruction_mem;

=======
reg [7:0] instruction_mem [0:255];
  
>>>>>>> e173e9dbc4fff43a0feb9356f30030db626fec59
assign instruction_data = instruction_mem[instruction_address];
  
endmodule

//Loading into Memory Module
module  memory();
<<<<<<< HEAD
  reg [1:0] instruction_memory [1:0];
=======
  reg [7:0] instruction_memory [0:255];
>>>>>>> e173e9dbc4fff43a0feb9356f30030db626fec59

initial begin
  $readmemb("CompiledBinary.bin", instruction_memory);
end
endmodule

//Testbench
module test();
  reg [7:0] instruction_address;
  wire [7:0] instruction_data;
  
  instruction_mem INSTRUCTION_MEM(
    .instruction_address(instruction_address),
    .instruction_data(instruction_data));
 
  initial begin
	instruction_address = 8'b0;
    $display("instruction_address=%b,instruction_data=%b",instruction_address, instruction_data);

$monitor("instruction_address=%b,instruction_data=%b",instruction_address, instruction_data);
  end

endmodule
