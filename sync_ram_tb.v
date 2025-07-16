module sync_ram_tb;

    reg clk;
    reg we;
    reg [3:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    // Instantiate the RAM
    sync_ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Clock Generation
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        $display("Time\tWE\tADDR\tDIN\tDOUT");
        $monitor("%g\t%b\t%h\t%h\t%h", $time, we, addr, din, dout);

        // Initialization
        clk = 0;
        we = 0;
        addr = 0;
        din = 0;

        // Write 0xAA to address 0x2
        #10; we = 1; addr = 4'h2; din = 8'hAA;

        // Disable write, keep address to read back
        #10; we = 0;

        // Wait to observe dout
        #10;

        // Write 0x55 to address 0x5
        #10; we = 1; addr = 4'h5; din = 8'h55;

        // Disable write and check read
        #10; we = 0;
        #10;

        // Read from addr 0x2 again
        addr = 4'h2;
        #10;

        // Read from addr 0x5 again
        addr = 4'h5;
        #10;

        $finish;
    end
endmodule