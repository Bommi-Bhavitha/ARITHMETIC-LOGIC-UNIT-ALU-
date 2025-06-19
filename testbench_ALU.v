module testbench_ALU();

// Instantiate the ALU module
ALU_4bit ALU_inst (
.A(4'b0010), // Input A (Example value: 2)
.B(4'b0101), // Input B (Example value: 5)
.OP(3'b000), // Set the operation (Example: 000 for addition)
.Result() // Output of the ALU
);

// Clock generation
reg clk = 0;
always #5 clk = ~clk;

// Initializations
reg [3:0] A_init;
reg [3:0] B_init;
reg [2:0] OP_init;

reg [3:0] A; // 4-bit input A
reg [3:0] B; // 4-bit input B
reg [2:0] OP;// 3-bit control

initial begin
$display("Time\tA\tB\tOP\tResult");
$display(" - - - - - - - - - - - - - - -");

// Test Case 1: Addition
A_init = 4'b0010;
B_init = 4'b0101;
OP_init = 3'b000;

$monitor("%t\t%b\t%b\t%b\t%b", $time, A_init, B_init, OP_init, ALU_inst.Result);
A = A_init;
B = B_init;
OP = OP_init;

// Test Case 2: Subtraction
A_init = 4'b0101;
B_init = 4'b0010;
OP_init = 3'b001;

$monitor("%t\t%b\t%b\t%b\t%b", $time, A_init, B_init, OP_init, ALU_inst.Result);
A = A_init;
B = B_init;
OP = OP_init;

// Additional test cases can be added here

end

initial begin
$dumpvars;
$dumpfile("dump.vcd");
end

endmodule