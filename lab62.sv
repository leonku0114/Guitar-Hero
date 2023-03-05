//-------------------------------------------------------------------------
//                                                                       --
//                                                                       --
//      For use with ECE 385 Lab 62                                       --
//      UIUC ECE Department                                              --
//-------------------------------------------------------------------------


module lab62 (

      ///////// Clocks /////////
      input     MAX10_CLK1_50, 

      ///////// KEY /////////
      input    [ 1: 0]   KEY,

      ///////// SW /////////
      input    [ 9: 0]   SW,

      ///////// LEDR /////////
      output   [ 9: 0]   LEDR,

      ///////// HEX /////////
      output   [ 7: 0]   HEX0,
      output   [ 7: 0]   HEX1,
      output   [ 7: 0]   HEX2,
      output   [ 7: 0]   HEX3,
      output   [ 7: 0]   HEX4,
      output   [ 7: 0]   HEX5,

      ///////// SDRAM /////////
      output             DRAM_CLK,
      output             DRAM_CKE,
      output   [12: 0]   DRAM_ADDR,
      output   [ 1: 0]   DRAM_BA,
      inout    [15: 0]   DRAM_DQ,
      output             DRAM_LDQM,
      output             DRAM_UDQM,
      output             DRAM_CS_N,
      output             DRAM_WE_N,
      output             DRAM_CAS_N,
      output             DRAM_RAS_N,

      ///////// VGA /////////
      output             VGA_HS,
      output             VGA_VS,
      output   [ 3: 0]   VGA_R,
      output   [ 3: 0]   VGA_G,
      output   [ 3: 0]   VGA_B,


      ///////// ARDUINO /////////
      inout    [15: 0]   ARDUINO_IO,
      inout              ARDUINO_RESET_N 

);




logic Reset_h, vssig, blank, sync, VGA_Clk;


//=======================================================
//  REG/WIRE declarations
//=======================================================
	logic SPI0_CS_N, SPI0_SCLK, SPI0_MISO, SPI0_MOSI, USB_GPX, USB_IRQ, USB_RST;
	logic [3:0] hex_num_4, hex_num_3, hex_num_1, hex_num_0; //4 bit input hex digits
	logic [1:0] signs;
	logic [1:0] hundreds;
	logic [9:0] drawxsig, drawysig, ballxsig, ballysig, ballsizesig;
	logic [7:0] Red, Blue, Green;
	logic [7:0] keycode;
	logic [9:0] background_xsig, background_ssig, background_x2sig, background_x3sig, background_x4sig, background_x5sig;
	logic [9:0] hitX1sig, hitX2sig, hitX3sig, hitX4sig, hitYsig, hitSsig;
	logic hit1sig, hit2sig, hit3sig, hit4sig;
	logic [19:0] trig1sig, trig2sig, trig3sig, trig4sig;
	
	
	logic [9:0] noteX1_1, noteX1_2, noteX1_3, noteX1_4, noteX1_5, noteX1_6, noteX1_7, noteX1_8, noteX1_9, noteX1_10, 
					noteX1_11, noteX1_12, noteX1_13, noteX1_14, noteX1_15, noteX1_16, noteX1_17, noteX1_18, noteX1_19, noteX1_20,
									  
					noteY1_1, noteY1_2, noteY1_3, noteY1_4, noteY1_5, noteY1_6, noteY1_7, noteY1_8, noteY1_9, noteY1_10,
					noteY1_11, noteY1_12, noteY1_13, noteY1_14, noteY1_15, noteY1_16, noteY1_17, noteY1_18, noteY1_19, noteY1_20,
														
														
					noteX2_1, noteX2_2, noteX2_3, noteX2_4, noteX2_5, noteX2_6, noteX2_7, noteX2_8, noteX2_9, noteX2_10, 
					noteX2_11, noteX2_12, noteX2_13, noteX2_14, noteX2_15, noteX2_16, noteX2_17, noteX2_18, noteX2_19, noteX2_20,
									  
					noteY2_1, noteY2_2, noteY2_3, noteY2_4, noteY2_5, noteY2_6, noteY2_7, noteY2_8, noteY2_9, noteY2_10,
					noteY2_11, noteY2_12, noteY2_13, noteY2_14, noteY2_15, noteY2_16, noteY2_17, noteY2_18, noteY2_19, noteY2_20,
														
														
					noteX3_1, noteX3_2, noteX3_3, noteX3_4, noteX3_5, noteX3_6, noteX3_7, noteX3_8, noteX3_9, noteX3_10, 
					noteX3_11, noteX3_12, noteX3_13, noteX3_14, noteX3_15, noteX3_16, noteX3_17, noteX3_18, noteX3_19, noteX3_20,
									  
					noteY3_1, noteY3_2, noteY3_3, noteY3_4, noteY3_5, noteY3_6, noteY3_7, noteY3_8, noteY3_9, noteY3_10,
					noteY3_11, noteY3_12, noteY3_13, noteY3_14, noteY3_15, noteY3_16, noteY3_17, noteY3_18, noteY3_19, noteY3_20,
														
														
					noteX4_1, noteX4_2, noteX4_3, noteX4_4, noteX4_5, noteX4_6, noteX4_7, noteX4_8, noteX4_9, noteX4_10, 
					noteX4_11, noteX4_12, noteX4_13, noteX4_14, noteX4_15, noteX4_16, noteX4_17, noteX4_18, noteX4_19, noteX4_20,
									  
					noteY4_1, noteY4_2, noteY4_3, noteY4_4, noteY4_5, noteY4_6, noteY4_7, noteY4_8, noteY4_9, noteY4_10,
					noteY4_11, noteY4_12, noteY4_13, noteY4_14, noteY4_15, noteY4_16, noteY4_17, noteY4_18, noteY4_19, noteY4_20;
	
	logic [9:0] noteS;
					
	logic shiftsig, spacesig, onesig, twosig;
	
	logic    	
								trigger1_1, trigger1_2, trigger1_3, trigger1_4, trigger1_5, trigger1_6, trigger1_7,
								trigger1_8, trigger1_9, trigger1_10, trigger1_11, trigger1_12, trigger1_13, trigger1_14,
							   trigger1_15, trigger1_16, trigger1_17, trigger1_18, trigger1_19, trigger1_20,
									
								trigger2_1, trigger2_2, trigger2_3, trigger2_4, trigger2_5, trigger2_6, trigger2_7,
								trigger2_8, trigger2_9, trigger2_10, trigger2_11, trigger2_12, trigger2_13, trigger2_14,
							   trigger2_15, trigger2_16, trigger2_17, trigger2_18, trigger2_19, trigger2_20,
								
								trigger3_1, trigger3_2, trigger3_3, trigger3_4, trigger3_5, trigger3_6, trigger3_7,
								trigger3_8, trigger3_9, trigger3_10, trigger3_11, trigger3_12, trigger3_13, trigger3_14,
							   trigger3_15, trigger3_16, trigger3_17, trigger3_18, trigger3_19, trigger3_20,
								
								trigger4_1, trigger4_2, trigger4_3, trigger4_4, trigger4_5, trigger4_6, trigger4_7,
								trigger4_8, trigger4_9, trigger4_10, trigger4_11, trigger4_12, trigger4_13, trigger4_14,
							   trigger4_15, trigger4_16, trigger4_17, trigger4_18, trigger4_19, trigger4_20,
								
								endsig, startsig, startsig1, startsigs;
	logic [9:0] note1_xcenter, note2_xcenter, note3_xcenter, note4_xcenter;
//=======================================================
//  Structural coding
//=======================================================
	assign note1_xcenter = 161;
	assign note2_xcenter = 266;
	assign note3_xcenter = 372;
	assign note4_xcenter = 480;
	assign noteS = 13;
	assign ARDUINO_IO[10] = SPI0_CS_N;
	assign ARDUINO_IO[13] = SPI0_SCLK;
	assign ARDUINO_IO[11] = SPI0_MOSI;
	assign ARDUINO_IO[12] = 1'bZ;
	assign SPI0_MISO = ARDUINO_IO[12];
	
	assign ARDUINO_IO[9] = 1'bZ; 
	assign USB_IRQ = ARDUINO_IO[9];
		
	//Assignments specific to Circuits At Home UHS_20
	assign ARDUINO_RESET_N = USB_RST;
	assign ARDUINO_IO[7] = USB_RST;//USB reset 
	assign ARDUINO_IO[8] = 1'bZ; //this is GPX (set to input)
	assign USB_GPX = 1'b0;//GPX is not needed for standard USB host - set to 0 to prevent interrupt
	
	//Assign uSD CS to '1' to prevent uSD card from interfering with USB Host (if uSD card is plugged in)
	assign ARDUINO_IO[6] = 1'b1;
	
	//HEX drivers to convert numbers to HEX output
	HexDriver hex_driver4 (hex_num_4, HEX4[6:0]);
	assign HEX4[7] = 1'b1;
	
	HexDriver hex_driver3 (hex_num_3, HEX3[6:0]);
	assign HEX3[7] = 1'b1;
	
	HexDriver hex_driver1 (hex_num_1, HEX1[6:0]);
	assign HEX1[7] = 1'b1;
	
	HexDriver hex_driver0 (hex_num_0, HEX0[6:0]);
	assign HEX0[7] = 1'b1;
	
	//fill in the hundreds digit as well as the negative sign
	assign HEX5 = {1'b1, ~signs[1], 3'b111, ~hundreds[1], ~hundreds[1], 1'b1};
	assign HEX2 = {1'b1, ~signs[0], 3'b111, ~hundreds[0], ~hundreds[0], 1'b1};
	
	
	//Assign one button to reset
	assign {Reset_h}=~ (KEY[0]);

	//Our A/D converter is only 12 bit
	assign VGA_R = Red[7:4];
	assign VGA_B = Blue[7:4];
	assign VGA_G = Green[7:4];
	
	
	lab62_soc u0 (
		.clk_clk                           (MAX10_CLK1_50),  //clk.clk
		.reset_reset_n                     (1'b1),           //reset.reset_n
		.altpll_0_locked_conduit_export    (),               //altpll_0_locked_conduit.export
		.altpll_0_phasedone_conduit_export (),               //altpll_0_phasedone_conduit.export
		.altpll_0_areset_conduit_export    (),               //altpll_0_areset_conduit.export
		.key_external_connection_export    (KEY),            //key_external_connection.export

		//SDRAM
		.sdram_clk_clk(DRAM_CLK),                            //clk_sdram.clk
		.sdram_wire_addr(DRAM_ADDR),                         //sdram_wire.addr
		.sdram_wire_ba(DRAM_BA),                             //.ba
		.sdram_wire_cas_n(DRAM_CAS_N),                       //.cas_n
		.sdram_wire_cke(DRAM_CKE),                           //.cke
		.sdram_wire_cs_n(DRAM_CS_N),                         //.cs_n
		.sdram_wire_dq(DRAM_DQ),                             //.dq
		.sdram_wire_dqm({DRAM_UDQM,DRAM_LDQM}),              //.dqm
		.sdram_wire_ras_n(DRAM_RAS_N),                       //.ras_n
		.sdram_wire_we_n(DRAM_WE_N),                         //.we_n

		//USB SPI	
		.spi0_SS_n(SPI0_CS_N),
		.spi0_MOSI(SPI0_MOSI),
		.spi0_MISO(SPI0_MISO),
		.spi0_SCLK(SPI0_SCLK),
		
		//USB GPIO
		.usb_rst_export(USB_RST),
		.usb_irq_export(USB_IRQ),
		.usb_gpx_export(USB_GPX),
		
		//LEDs and HEX
		.hex_digits_export({hex_num_4, hex_num_3, hex_num_1, hex_num_0}),
		.leds_export({hundreds, signs, LEDR}),
		.keycode_export(keycode)
		
	 );


//instantiate a vga_controller, ball, and color_mapper here with the ports.
ball b0(.Reset(Reset_h), 
		  .frame_clk(VGA_VS), 
		  .keycode(keycode), 
		  .BallX(ballxsig), 
		  .BallY(ballysig), 
		  .BallS(ballsizesig)
		  );

color_mapper c0(.clock(MAX10_CLK1_50),
					.reset(Reset_h),
				.BallX(ballxsig), 
				 .BallY(ballysig), 
				 .DrawX(drawxsig), 
				 .DrawY(drawysig), 
				 .Ball_size(ballsizesig),
				 .background_x(background_xsig),
				 .background_s(background_ssig),
				 .background_x2(background_x2sig),
				 .background_x3(background_x3sig),
				 .background_x4(background_x4sig),
				 .background_x5(background_x5sig),
				 .hitX1(hitX1sig), 
				 .hitX2(hitX2sig), 
				 .hitX3(hitX3sig), 
				 .hitX4(hitX4sig), 
				 .hitY(hitYsig), 
				 .hitS(hitSsig),
				 .hit1(hit1sig),
				 .hit2(hit2sig),
				 .hit3(hit3sig),
				 .hit4(hit4sig),
				 .noteX1_1(noteX1_1),
				 .noteX1_2(noteX1_2), 
				 .noteX1_3(noteX1_3), 
				 .noteX1_4(noteX1_4), 
				 .noteX1_5(noteX1_5), 
				 .noteX1_6(noteX1_6), 
				 .noteX1_7(noteX1_7), 
				 .noteX1_8(noteX1_8), 
				 .noteX1_9(noteX1_9), 
				 .noteX1_10(noteX1_10), 
				 .noteX1_11(noteX1_11), 
				 .noteX1_12(noteX1_12), 
				 .noteX1_13(noteX1_13), 
				 .noteX1_14(noteX1_14), 
				 .noteX1_15(noteX1_15), 
				 .noteX1_16(noteX1_16), 
				 .noteX1_17(noteX1_17), 
				 .noteX1_18(noteX1_18), 
				 .noteX1_19(noteX1_19), 
				 .noteX1_20(noteX1_20),
				 .noteY1_1(noteY1_1), 
				 .noteY1_2(noteY1_2), 
				 .noteY1_3(noteY1_3), 
				 .noteY1_4(noteY1_4), 
				 .noteY1_5(noteY1_5), 
				 .noteY1_6(noteY1_6), 
				 .noteY1_7(noteY1_7), 
				 .noteY1_8(noteY1_8), 
				 .noteY1_9(noteY1_9), 
				 .noteY1_10(noteY1_10),
				 .noteY1_11(noteY1_11), 
				 .noteY1_12(noteY1_12), 
				 .noteY1_13(noteY1_13), 
				 .noteY1_14(noteY1_14), 
				 .noteY1_15(noteY1_15), 
				 .noteY1_16(noteY1_16), 
				 .noteY1_17(noteY1_17), 
				 .noteY1_18(noteY1_18), 
				 .noteY1_19(noteY1_19), 
				 .noteY1_20(noteY1_20),
				 .noteX2_1(noteX2_1), 
				 .noteX2_2(noteX2_2), 
				 .noteX2_3(noteX2_3), 
				 .noteX2_4(noteX2_4), 
				 .noteX2_5(noteX2_5), 
				 .noteX2_6(noteX2_6), 
				 .noteX2_7(noteX2_7), 
				 .noteX2_8(noteX2_8), 
				 .noteX2_9(noteX2_9), 
				 .noteX2_10(noteX2_10), 
				 .noteX2_11(noteX2_11), 
				 .noteX2_12(noteX2_12), 
				 .noteX2_13(noteX2_13), 
				 .noteX2_14(noteX2_14), 
				 .noteX2_15(noteX2_15), 
				 .noteX2_16(noteX2_16), 
				 .noteX2_17(noteX2_17), 
				 .noteX2_18(noteX2_18), 
				 .noteX2_19(noteX2_19), 
				 .noteX2_20(noteX2_20),
				 .noteY2_1(noteY2_1), 
				 .noteY2_2(noteY2_2), 
				 .noteY2_3(noteY2_3), 
				 .noteY2_4(noteY2_4), 
				 .noteY2_5(noteY2_5), 
				 .noteY2_6(noteY2_6), 
				 .noteY2_7(noteY2_7), 
				 .noteY2_8(noteY2_8), 
				 .noteY2_9(noteY2_9), 
				 .noteY2_10(noteY2_10),
				 .noteY2_11(noteY2_11), 
				 .noteY2_12(noteY2_12), 
				 .noteY2_13(noteY2_13), 
				 .noteY2_14(noteY2_14), 
				 .noteY2_15(noteY2_15), 
				 .noteY2_16(noteY2_16), 
				 .noteY2_17(noteY2_17), 
				 .noteY2_18(noteY2_18), 
				 .noteY2_19(noteY2_19), 
				 .noteY2_20(noteY2_20),
				 .noteX3_1(noteX3_1), 
				 .noteX3_2(noteX3_2), 
				 .noteX3_3(noteX3_3), 
				 .noteX3_4(noteX3_4), 
				 .noteX3_5(noteX3_5), 
				 .noteX3_6(noteX3_6), 
				 .noteX3_7(noteX3_7), 
				 .noteX3_8(noteX3_8), 
				 .noteX3_9(noteX3_9), 
				 .noteX3_10(noteX3_10), 
				 .noteX3_11(noteX3_11), 
				 .noteX3_12(noteX3_12), 
				 .noteX3_13(noteX3_13), 
				 .noteX3_14(noteX3_14), 
				 .noteX3_15(noteX3_15), 
				 .noteX3_16(noteX3_16), 
				 .noteX3_17(noteX3_17), 
				 .noteX3_18(noteX3_18), 
				 .noteX3_19(noteX3_19), 
				 .noteX3_20(noteX3_20),
				 .noteY3_1(noteY3_1), 
				 .noteY3_2(noteY3_2), 
				 .noteY3_3(noteY3_3), 
				 .noteY3_4(noteY3_4), 
				 .noteY3_5(noteY3_5), 
				 .noteY3_6(noteY3_6), 
				 .noteY3_7(noteY3_7), 
				 .noteY3_8(noteY3_8), 
				 .noteY3_9(noteY3_9), 
				 .noteY3_10(noteY3_10),
				 .noteY3_11(noteY3_11), 
				 .noteY3_12(noteY3_12), 
				 .noteY3_13(noteY3_13), 
				 .noteY3_14(noteY3_14), 
				 .noteY3_15(noteY3_15), 
				 .noteY3_16(noteY3_16), 
				 .noteY3_17(noteY3_17), 
				 .noteY3_18(noteY3_18), 
				 .noteY3_19(noteY3_19), 
				 .noteY3_20(noteY3_20),
				 .noteX4_1(noteX4_1), 
				 .noteX4_2(noteX4_2), 
				 .noteX4_3(noteX4_3), 
				 .noteX4_4(noteX4_4), 
				 .noteX4_5(noteX4_5), 
				 .noteX4_6(noteX4_6), 
				 .noteX4_7(noteX4_7), 
				 .noteX4_8(noteX4_8), 
				 .noteX4_9(noteX4_9), 
				 .noteX4_10(noteX4_10), 
				 .noteX4_11(noteX4_11), 
				 .noteX4_12(noteX4_12), 
				 .noteX4_13(noteX4_13), 
				 .noteX4_14(noteX4_14), 
				 .noteX4_15(noteX4_15), 
				 .noteX4_16(noteX4_16), 
				 .noteX4_17(noteX4_17), 
				 .noteX4_18(noteX4_18), 
				 .noteX4_19(noteX4_19), 
				 .noteX4_20(noteX4_20),
				 .noteY4_1(noteY4_1), 
				 .noteY4_2(noteY4_2), 
				 .noteY4_3(noteY4_3), 
				 .noteY4_4(noteY4_4), 
				 .noteY4_5(noteY4_5), 
				 .noteY4_6(noteY4_6), 
				 .noteY4_7(noteY4_7), 
				 .noteY4_8(noteY4_8), 
				 .noteY4_9(noteY4_9), 
				 .noteY4_10(noteY4_10),
				 .noteY4_11(noteY4_11), 
				 .noteY4_12(noteY4_12), 
				 .noteY4_13(noteY4_13), 
				 .noteY4_14(noteY4_14), 
				 .noteY4_15(noteY4_15), 
				 .noteY4_16(noteY4_16), 
				 .noteY4_17(noteY4_17), 
				 .noteY4_18(noteY4_18), 
				 .noteY4_19(noteY4_19), 
				 .noteY4_20(noteY4_20),
				 .noteS(noteS),
				 .end_(endsig),
				 .start_(startsig),
				 .start_1(startsig1),
				 .Red(Red), 
				 .Green(Green), 
				 .Blue(Blue),
				 .starts(startsigs)
				 );

vga_controller v0(.Clk(MAX10_CLK1_50), 
					.Reset(Reset_h), 
					.hs(VGA_HS), 
					.vs(VGA_VS), 
					.pixel_clk(VGA_Clk), 
					.blank(blank), 
					.sync(sync), 
					.DrawX(drawxsig), 
					.DrawY(drawysig)
					);

background back0(
						.Reset(Reset_h), 
						.frame_clk(VGA_VS), 
						.keycode(keycode),
						.background_x(background_xsig), 
						.background_s(background_ssig),
						.background_x2(background_x2sig), 
						.background_x3(background_x3sig), 
						.background_x4(background_x4sig), 
						.background_x5(background_x5sig)
						);
hit h0(
			.Reset(Reset_h), 
			.frame_clk(VGA_VS), 
			.keycode(keycode),
			.hitX1(hitX1sig), 
			.hitX2(hitX2sig), 
			.hitX3(hitX3sig), 
			.hitX4(hitX4sig), 
			.hitY(hitYsig), 
			.hitS(hitSsig),
			.hit1(hit1sig),
			.hit2(hit2sig),
			.hit3(hit3sig),
			.hit4(hit4sig)
			);

			
note1 n1(
			 .frame_clk(VGA_VS),
			 .Clk(MAX10_CLK1_50),
			 .Reset(Reset_h),
			 .note_X_Center(note1_xcenter),
			 .trigger1_1(trigger1_1), 
			.trigger1_2(trigger1_2), 
			.trigger1_3(trigger1_3), 
			.trigger1_4(trigger1_4),
			.trigger1_5(trigger1_5),
			.trigger1_6(trigger1_6), 
			.trigger1_7(trigger1_7),
			.trigger1_8(trigger1_8), 
			.trigger1_9(trigger1_9), 
			.trigger1_10(trigger1_10), 
			.trigger1_11(trigger1_11), 
			.trigger1_12(trigger1_12), 
			.trigger1_13(trigger1_13), 
			.trigger1_14(trigger1_14),
			.trigger1_15(trigger1_15), 
			.trigger1_16(trigger1_16), 
			.trigger1_17(trigger1_17), 
			.trigger1_18(trigger1_18), 
			.trigger1_19(trigger1_19), 
			.trigger1_20(trigger1_20),
			 .noteX1(noteX1_1), 
			 .noteX2(noteX1_2), 
			 .noteX3(noteX1_3), 
			 .noteX4(noteX1_4), 
			 .noteX5(noteX1_5), 
			 .noteX6(noteX1_6), 
			 .noteX7(noteX1_7), 
			 .noteX8(noteX1_8), 
			 .noteX9(noteX1_9), 
			 .noteX10(noteX1_10), 
			 .noteX11(noteX1_11),
			 .noteX12(noteX1_12), 
			 .noteX13(noteX1_13), 
			 .noteX14(noteX1_14), 
			 .noteX15(noteX1_15), 
			 .noteX16(noteX1_16), 
			 .noteX17(noteX1_17), 
			 .noteX18(noteX1_18), 
			 .noteX19(noteX1_19), 
			 .noteX20(noteX1_20),
			 .noteY1(noteY1_1), 
			 .noteY2(noteY1_2), 
			 .noteY3(noteY1_3), 
			 .noteY4(noteY1_4), 
			 .noteY5(noteY1_5), 
			 .noteY6(noteY1_6), 
			 .noteY7(noteY1_7), 
			 .noteY8(noteY1_8), 
			 .noteY9(noteY1_9), 
			 .noteY10(noteY1_10),
			 .noteY11(noteY1_11), 
			 .noteY12(noteY1_12), 
			 .noteY13(noteY1_13), 
			 .noteY14(noteY1_14), 
			 .noteY15(noteY1_15), 
			 .noteY16(noteY1_16), 
			 .noteY17(noteY1_17), 
			 .noteY18(noteY1_18), 
			 .noteY19(noteY1_19), 
			 .noteY20(noteY1_20)
			 //.noteS(noteS)
			);


note1 n2(
			 .frame_clk(VGA_VS),
			 .Clk(MAX10_CLK1_50),
			 .Reset(Reset_h),
			 .note_X_Center(note2_xcenter),
			 .trigger1_1(trigger2_1), 
			.trigger1_2(trigger2_2), 
			.trigger1_3(trigger2_3), 
			.trigger1_4(trigger2_4),
			.trigger1_5(trigger2_5),
			.trigger1_6(trigger2_6), 
			.trigger1_7(trigger2_7),
			.trigger1_8(trigger2_8), 
			.trigger1_9(trigger2_9), 
			.trigger1_10(trigger2_10), 
			.trigger1_11(trigger2_11), 
			.trigger1_12(trigger2_12), 
			.trigger1_13(trigger2_13), 
			.trigger1_14(trigger2_14),
			.trigger1_15(trigger2_15), 
			.trigger1_16(trigger2_16), 
			.trigger1_17(trigger2_17), 
			.trigger1_18(trigger2_18), 
			.trigger1_19(trigger2_19), 
			.trigger1_20(trigger2_20),
			 .noteX1(noteX2_1), 
			 .noteX2(noteX2_2), 
			 .noteX3(noteX2_3), 
			 .noteX4(noteX2_4), 
			 .noteX5(noteX2_5), 
			 .noteX6(noteX2_6), 
			 .noteX7(noteX2_7), 
			 .noteX8(noteX2_8), 
			 .noteX9(noteX2_9), 
			 .noteX10(noteX2_10), 
			 .noteX11(noteX2_11),
			 .noteX12(noteX2_12), 
			 .noteX13(noteX2_13), 
			 .noteX14(noteX2_14), 
			 .noteX15(noteX2_15), 
			 .noteX16(noteX2_16), 
			 .noteX17(noteX2_17), 
			 .noteX18(noteX2_18), 
			 .noteX19(noteX2_19), 
			 .noteX20(noteX2_20),
			 .noteY1(noteY2_1), 
			 .noteY2(noteY2_2), 
			 .noteY3(noteY2_3), 
			 .noteY4(noteY2_4), 
			 .noteY5(noteY2_5), 
			 .noteY6(noteY2_6), 
			 .noteY7(noteY2_7), 
			 .noteY8(noteY2_8), 
			 .noteY9(noteY2_9), 
			 .noteY10(noteY2_10),
			 .noteY11(noteY2_11), 
			 .noteY12(noteY2_12), 
			 .noteY13(noteY2_13), 
			 .noteY14(noteY2_14), 
			 .noteY15(noteY2_15), 
			 .noteY16(noteY2_16), 
			 .noteY17(noteY2_17), 
			 .noteY18(noteY2_18), 
			 .noteY19(noteY2_19), 
			 .noteY20(noteY2_20)
			);			

			

note1 n3(
			 .frame_clk(VGA_VS),
			 .Clk(MAX10_CLK1_50),
			 .Reset(Reset_h),
			 .note_X_Center(note3_xcenter),
			 .trigger1_1(trigger3_1), 
			.trigger1_2(trigger3_2), 
			.trigger1_3(trigger3_3), 
			.trigger1_4(trigger3_4),
			.trigger1_5(trigger3_5),
			.trigger1_6(trigger3_6), 
			.trigger1_7(trigger3_7),
			.trigger1_8(trigger3_8), 
			.trigger1_9(trigger3_9), 
			.trigger1_10(trigger3_10), 
			.trigger1_11(trigger3_11), 
			.trigger1_12(trigger3_12), 
			.trigger1_13(trigger3_13), 
			.trigger1_14(trigger3_14),
			.trigger1_15(trigger3_15), 
			.trigger1_16(trigger3_16), 
			.trigger1_17(trigger3_17), 
			.trigger1_18(trigger3_18), 
			.trigger1_19(trigger3_19), 
			.trigger1_20(trigger3_20),
			 .noteX1(noteX3_1), 
			 .noteX2(noteX3_2), 
			 .noteX3(noteX3_3), 
			 .noteX4(noteX3_4), 
			 .noteX5(noteX3_5), 
			 .noteX6(noteX3_6), 
			 .noteX7(noteX3_7), 
			 .noteX8(noteX3_8), 
			 .noteX9(noteX3_9), 
			 .noteX10(noteX3_10), 
			 .noteX11(noteX3_11),
			 .noteX12(noteX3_12), 
			 .noteX13(noteX3_13), 
			 .noteX14(noteX3_14), 
			 .noteX15(noteX3_15), 
			 .noteX16(noteX3_16), 
			 .noteX17(noteX3_17), 
			 .noteX18(noteX3_18), 
			 .noteX19(noteX3_19), 
			 .noteX20(noteX3_20),
			 .noteY1(noteY3_1), 
			 .noteY2(noteY3_2), 
			 .noteY3(noteY3_3), 
			 .noteY4(noteY3_4), 
			 .noteY5(noteY3_5), 
			 .noteY6(noteY3_6), 
			 .noteY7(noteY3_7), 
			 .noteY8(noteY3_8), 
			 .noteY9(noteY3_9), 
			 .noteY10(noteY3_10),
			 .noteY11(noteY3_11), 
			 .noteY12(noteY3_12), 
			 .noteY13(noteY3_13), 
			 .noteY14(noteY3_14), 
			 .noteY15(noteY3_15), 
			 .noteY16(noteY3_16), 
			 .noteY17(noteY3_17), 
			 .noteY18(noteY3_18), 
			 .noteY19(noteY3_19), 
			 .noteY20(noteY3_20)
			 
			);			

			
note1 n4(
			 .frame_clk(VGA_VS),
			 .Clk(MAX10_CLK1_50),
			 .Reset(Reset_h),
			 .note_X_Center(note4_xcenter),
			 .trigger1_1(trigger4_1), 
			.trigger1_2(trigger4_2), 
			.trigger1_3(trigger4_3), 
			.trigger1_4(trigger4_4),
			.trigger1_5(trigger4_5),
			.trigger1_6(trigger4_6), 
			.trigger1_7(trigger4_7),
			.trigger1_8(trigger4_8), 
			.trigger1_9(trigger4_9), 
			.trigger1_10(trigger4_10), 
			.trigger1_11(trigger4_11), 
			.trigger1_12(trigger4_12), 
			.trigger1_13(trigger4_13), 
			.trigger1_14(trigger4_14),
			.trigger1_15(trigger4_15), 
			.trigger1_16(trigger4_16), 
			.trigger1_17(trigger4_17), 
			.trigger1_18(trigger4_18), 
			.trigger1_19(trigger4_19), 
			.trigger1_20(trigger4_20),
			 			 .noteX1(noteX4_1), 
			 .noteX2(noteX4_2), 
			 .noteX3(noteX4_3), 
			 .noteX4(noteX4_4), 
			 .noteX5(noteX4_5), 
			 .noteX6(noteX4_6), 
			 .noteX7(noteX4_7), 
			 .noteX8(noteX4_8), 
			 .noteX9(noteX4_9), 
			 .noteX10(noteX4_10), 
			 .noteX11(noteX4_11),
			 .noteX12(noteX4_12), 
			 .noteX13(noteX4_13), 
			 .noteX14(noteX4_14), 
			 .noteX15(noteX4_15), 
			 .noteX16(noteX4_16), 
			 .noteX17(noteX4_17), 
			 .noteX18(noteX4_18), 
			 .noteX19(noteX4_19), 
			 .noteX20(noteX4_20),
			 .noteY1(noteY4_1), 
			 .noteY2(noteY4_2), 
			 .noteY3(noteY4_3), 
			 .noteY4(noteY4_4), 
			 .noteY5(noteY4_5), 
			 .noteY6(noteY4_6), 
			 .noteY7(noteY4_7), 
			 .noteY8(noteY4_8), 
			 .noteY9(noteY4_9), 
			 .noteY10(noteY4_10),
			 .noteY11(noteY4_11), 
			 .noteY12(noteY4_12), 
			 .noteY13(noteY4_13), 
			 .noteY14(noteY4_14), 
			 .noteY15(noteY4_15), 
			 .noteY16(noteY4_16), 
			 .noteY17(noteY4_17), 
			 .noteY18(noteY4_18), 
			 .noteY19(noteY4_19), 
			 .noteY20(noteY4_20)
			 
			);			


shift s0(
			.Clk(MAX10_CLK1_50),
			.start_(startsig), 
			.end_(endsig),
			.keycode(keycode),
			.shift(shiftsig), 
			.space(spacesig),
			.one(onesig),
			.two(twosig)
			);

ISDU i0(
			.Clk(MAX10_CLK1_50), 
			.Reset(Reset_h),
			.shift(shiftsig), 
			.space(spacesig),
			.one(onesig), 
			.two(twosig),
			.trigger1_1(trigger1_1), 
			.trigger1_2(trigger1_2), 
			.trigger1_3(trigger1_3), 
			.trigger1_4(trigger1_4),
			.trigger1_5(trigger1_5),
			.trigger1_6(trigger1_6), 
			.trigger1_7(trigger1_7),
			.trigger1_8(trigger1_8), 
			.trigger1_9(trigger1_9), 
			.trigger1_10(trigger1_10), 
			.trigger1_11(trigger1_11), 
			.trigger1_12(trigger1_12), 
			.trigger1_13(trigger1_13), 
			.trigger1_14(trigger1_14),
			.trigger1_15(trigger1_15), 
			.trigger1_16(trigger1_16), 
			.trigger1_17(trigger1_17), 
			.trigger1_18(trigger1_18), 
			.trigger1_19(trigger1_19), 
			.trigger1_20(trigger1_20),
			.trigger2_1(trigger2_1), 
			.trigger2_2(trigger2_2), 
			.trigger2_3(trigger2_3), 
			.trigger2_4(trigger2_4), 
			.trigger2_5(trigger2_5), 
			.trigger2_6(trigger2_6), 
			.trigger2_7(trigger2_7),
			.trigger2_8(trigger2_8), 
			.trigger2_9(trigger2_9), 
			.trigger2_10(trigger2_10), 
			.trigger2_11(trigger2_11), 
			.trigger2_12(trigger2_12),
			.trigger2_13(trigger2_13), 
			.trigger2_14(trigger2_14),
			.trigger2_15(trigger2_15), 
			.trigger2_16(trigger2_16), 
			.trigger2_17(trigger2_17), 
			.trigger2_18(trigger2_18), 
			.trigger2_19(trigger2_19), 
			.trigger2_20(trigger2_20),
			.trigger3_1(trigger3_1), 
			.trigger3_2(trigger3_2), 
			.trigger3_3(trigger3_3), 
			.trigger3_4(trigger3_4), 
			.trigger3_5(trigger3_5), 
			.trigger3_6(trigger3_6), 
			.trigger3_7(trigger3_7),
			.trigger3_8(trigger3_8), 
			.trigger3_9(trigger3_9), 
			.trigger3_10(trigger3_10), 
			.trigger3_11(trigger3_11), 
			.trigger3_12(trigger3_12),
			.trigger3_13(trigger3_13),
			.trigger3_14(trigger3_14),
			.trigger3_15(trigger3_15), 
			.trigger3_16(trigger3_16), 
			.trigger3_17(trigger3_17), 
			.trigger3_18(trigger3_18), 
			.trigger3_19(trigger3_19), 
			.trigger3_20(trigger3_20),
			.trigger4_1(trigger4_1), 
			.trigger4_2(trigger4_2), 
			.trigger4_3(trigger4_3), 
			.trigger4_4(trigger4_4), 
			.trigger4_5(trigger4_5), 
			.trigger4_6(trigger4_6), 
			.trigger4_7(trigger4_7),
			.trigger4_8(trigger4_8), 
			.trigger4_9(trigger4_9), 
			.trigger4_10(trigger4_10), 
			.trigger4_11(trigger4_11), 
			.trigger4_12(trigger4_12), 
			.trigger4_13(trigger4_13), 
			.trigger4_14(trigger4_14),
			.trigger4_15(trigger4_15), 
			.trigger4_16(trigger4_16), 
			.trigger4_17(trigger4_17), 
			.trigger4_18(trigger4_18), 
			.trigger4_19(trigger4_19), 
			.trigger4_20(trigger4_20),
			.end_(endsig),
			.start_(startsig),
			.start_1(startsig1),
			.starts(startsigs)
		 );
endmodule

