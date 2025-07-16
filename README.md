# RAM-DESIGN
COMPANY: CODTECH IT SOLUTIONS
NAME: GURRAM ROBIN
INTERN ID:CT06DF2485
DOMAIN:VLSI
DURATION: 6 WEEKS
MENTOR: NEELA SANTHOSH

# 🧠 Synchronous RAM (Sync RAM) – Verilog Project

This project implements a simple **Synchronous Random Access Memory (Sync RAM)** module using Verilog HDL. Synchronous RAM is a fundamental building block in digital systems, used to store and retrieve data during program execution. It operates in synchronization with a system clock, ensuring all read and write operations occur at defined clock edges for predictable timing behavior.

The module accepts an address, data input, write enable signal, and a clock. On every rising edge of the clock:
- If `we` (write enable) is high, the input data is written to the specified address.
- Simultaneously, the value at the given address is read and assigned to the output port.

This dual-purpose functionality (write and read at the same time) mimics the behavior of a basic single-port synchronous memory block, commonly used in FPGA-based and processor designs.

The project includes:
- `sync_ram.v`: The Verilog module that defines the memory behavior.
- `sync_ram_tb.v`: A testbench that simulates read and write operations on the RAM module.

The testbench initializes clock signals, writes known values into memory locations, and reads back the stored data. The simulation can be run using tools such as **ModelSim**, **Vivado**, or **Icarus Verilog**, and waveforms can be viewed using **GTKWave** to confirm the correct timing and memory behavior.

### Key Features:
- 8-bit data width
- 4-bit address width (16 memory locations)
- Synchronous read and write using a single clock signal
- Testbench validates correct storage and retrieval of data

This project is ideal for students, beginners, or hardware design engineers looking to understand the behavior of synchronous memory modules and how to simulate memory components using Verilog. It also provides a foundation for building more advanced memory architectures like dual-port RAM, FIFO buffers, or cache memory.

---

Feel free to clone the repository, run simulations, and adapt the RAM for larger address spaces or additional control logic such as chip enable or byte selection.
