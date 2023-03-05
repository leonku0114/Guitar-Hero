module testbench_1();
timeunit 10ns;

timeprecision 1ns;

//	logic [9:0] SW;
//	logic	Clk, Run, Continue;
//	logic [9:0] LED;
//	logic [6:0] HEX0, HEX1, HEX2, HEX3;
		logic     MAX10_CLK1_50; 

      ///////// KEY /////////
      logic    [ 1: 0]   KEY;

      ///////// SW /////////
      logic    [ 9: 0]   SW;

      ///////// LEDR /////////
      logic   [ 9: 0]   LEDR;

      ///////// HEX /////////
      logic   [ 7: 0]   HEX0;
      logic   [ 7: 0]   HEX1;
      logic   [ 7: 0]   HEX2;
      logic   [ 7: 0]   HEX3;
      logic   [ 7: 0]   HEX4;
      logic   [ 7: 0]   HEX5;

      ///////// SDRAM /////////
      logic             DRAM_CLK;
      logic             DRAM_CKE;
      logic   [12: 0]   DRAM_ADDR;
      logic   [ 1: 0]   DRAM_BA;
      logic    [15: 0]   DRAM_DQ;
      logic             DRAM_LDQM;
      logic             DRAM_UDQM;
      logic             DRAM_CS_N;
      logic             DRAM_WE_N;
      logic             DRAM_CAS_N;
      logic             DRAM_RAS_N;

      ///////// VGA /////////
      logic             VGA_HS;
      logic             VGA_VS;
      logic   [ 3: 0]   VGA_R;
      logic   [ 3: 0]   VGA_G;
      logic   [ 3: 0]   VGA_B;


      ///////// ARDUINO /////////
      logic    [15: 0]   ARDUINO_IO;
      logic              ARDUINO_RESET_N;
	
	lab62 testtop(.*);
	
	
	always begin : CLOCK_GENERATION
		#1 MAX10_CLK1_50 = ~MAX10_CLK1_50;
	end


	initial begin: CLOCK_INITIALIZATION
		MAX10_CLK1_50 = 0;
	end  
	
	initial begin: TEST_VECTORS
//	Run = 0;
//	Continue = 0;
//	
//	
//	#2 Run = 1;
//	#2 Continue = 1;
//	
	

//		// Basic I/O Test 1		
//	
//	#2 Run = 0;
//	   SW = 16'h0003;
//	#3 Run = 1;
//	// change switch values to see if hex display is correct
//	#100 SW = 16'hFFFF;
//   #100 SW = 16'h0000;	
//	// reset program
//	
//	#100 Run = 0;
//		  Continue = 0;
//	
//	
//	#2 Run = 1;
//	#2 Continue = 1;

// //Basic I/O Test 2
//	
//   #10 Run = 0;
//	   SW = 16'h0006;
//	#3 Run = 1;
////	// see if the hex displays values after continue is hit
//   #95 Continue = 0;
//	
////	// hit continue
//  #2 Continue = 1;
//	#10 Continue = 0;
//	#2 Continue = 1;
//	
//
//#95 Continue = 0;
//	
////	// hit continue
//  #2 Continue = 1;
//	#10 Continue = 0;
//	#2 Continue = 1;



////basic io test3
//   #10 Run = 0;
//	   SW = 16'h000b;
//	#3 Run = 1;
////	// see if the hex displays values after continue is hit
//   #95 Continue = 0;
//	
////	// hit continue
//  #2 Continue = 1;
//	#10 Continue = 0;
//	#2 Continue = 1;
//	
//
//#100 Continue = 0;
//	
////	// hit continue
//  #2 Continue = 1;
//	#10 Continue = 0;
//	#2 Continue = 1;




//xor test
//   #10 Run = 0;
//	   SW = 16'h0014;
//	#3 Run = 1;
////	// see if the hex displays values after continue is hit
//   #100 Continue = 0;
//	
////	// hit continue
//  #2 Continue = 1;
//	#10 Continue = 0;
//	#2 Continue = 1;
//	
//
//#100 Continue = 0;
//	SW = 16'h000b;
//	
////	// hit continue
//  #2 Continue = 1;
//	#10 Continue = 0;
//	#2 Continue = 1;
//
//#300 Continue = 0;
////	
//////	// hit continue
//  #2 Continue = 1;
//	#10 Continue = 0;
//	#2 Continue = 1;
//	
	end

endmodule