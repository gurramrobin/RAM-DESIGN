module sync_ram #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4   // 2^4 = 16 locations
)(
    input wire clk,
    input wire we,                            // Write Enable
    input wire [ADDR_WIDTH-1:0] addr,         // Address
    input wire [DATA_WIDTH-1:0] din,          // Data input
    output reg [DATA_WIDTH-1:0] dout          // Data output
);

    // Declare memory array
    reg [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];

    // Synchronous read/write
    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;     // Write operation
        dout <= mem[addr];        // Read (synchronous)
    end

endmodule