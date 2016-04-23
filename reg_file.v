module reg_file(
  raddr0,
  raddr1,
  waddr,
  wdata,
  wren,
  rdata0,
  rdata1);

  input [1:0] raddr0;
  input [1:0] raddr1;
  input [1:0] waddr;
  input [7:0] wdata;
  input wren;
  
  output [7:0] rdata0;
  output [7:0] rdata1;

  reg [3:0] reg_file [7:0];
  
  assign rdata0 = reg_file[raddr0];
  assign rdata1 = reg_file[raddr1];
  
  integer i;
  
  initial
  begin                     //initializing the regfile bits to 0
    for (i=0; i<8; i=i+1)
      begin
      reg_file[i] = 0;
      end
  end

  always                    //always condition for when write enable is 1
  begin
  if (wren) begin
    reg_file[waddr] <= wdata;
  end

endmodule