//-------------------------------------------------------------------------
//    Color_Mapper.sv                                                    --
//    Stephen Kempf                                                      --
//    3-1-06                                                             --
//                                                                       --
//    Modified by David Kesler  07-16-2008                               --
//    Translated by Joe Meng    07-07-2013                               --
//                                                                       --
//    Fall 2014 Distribution                                             --
//                                                                       --
//    For use with ECE 385 Lab 7                                         --
//    University of Illinois ECE Department                              --
//-------------------------------------------------------------------------


module  color_mapper ( input        [9:0] BallX, BallY, DrawX, DrawY, Ball_size, background_x, background_s, background_x2, background_x3,background_x4, background_x5,
														hitX1, hitX2, hitX3, hitX4, hitY, hitS,
							  input        hit1, hit2, hit3, hit4, clock, reset,
							  
							  input 			[9:0] noteX1_1, noteX1_2, noteX1_3, noteX1_4, noteX1_5, noteX1_6, noteX1_7, noteX1_8, noteX1_9, noteX1_10, 
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
														noteY4_11, noteY4_12, noteY4_13, noteY4_14, noteY4_15, noteY4_16, noteY4_17, noteY4_18, noteY4_19, noteY4_20,
														
														
							  input 			[9:0]	noteS,
							  
							  input			 end_,start_, start_1, starts,
							  output logic [7:0]  Red, Green, Blue );
    
    logic ball_on,on, on2, onp1, one, onl0, onl1, onl2, onl3, onl4, onl5, onl6, onl7, onl8, onl9, onl10, onl11, onl12, onl13,onl0_, onl1_, onl2_, onl3_, onl4_, onl5_, onl6_, onl7_, onl8_, onl9_, onl10_, onl11_, onl12_, onl13_;
	 logic background_on;
	 logic hit_on1, hit_on2, hit_on3, hit_on4;
	 logic note_on1_1, note_on1_2, note_on1_3, note_on1_4, note_on1_5, note_on1_6, note_on1_7, note_on1_8, note_on1_9, note_on1_10, 
			 note_on1_11, note_on1_12, note_on1_13, note_on1_14, note_on1_15, note_on1_16, note_on1_17, note_on1_18, note_on1_19, note_on1_20,
			 
			 note_on2_1, note_on2_2, note_on2_3, note_on2_4, note_on2_5, note_on2_6, note_on2_7, note_on2_8, note_on2_9, note_on2_10, 
			 note_on2_11, note_on2_12, note_on2_13, note_on2_14, note_on2_15, note_on2_16, note_on2_17, note_on2_18, note_on2_19, note_on2_20,
			 
			 note_on3_1, note_on3_2, note_on3_3, note_on3_4, note_on3_5, note_on3_6, note_on3_7, note_on3_8, note_on3_9, note_on3_10, 
			 note_on3_11, note_on3_12, note_on3_13, note_on3_14, note_on3_15, note_on3_16, note_on3_17, note_on3_18, note_on3_19, note_on3_20,
			 
			 note_on4_1, note_on4_2, note_on4_3, note_on4_4, note_on4_5, note_on4_6, note_on4_7, note_on4_8, note_on4_9, note_on4_10, 
			 note_on4_11, note_on4_12, note_on4_13, note_on4_14, note_on4_15, note_on4_16, note_on4_17, note_on4_18, note_on4_19, note_on4_20;
	 
	 logic floor_on;
	 
 /* Old Ball: Generated square box by checking if the current pixel is within a square of length
    2*Ball_Size, centered at (BallX, BallY).  Note that this requires unsigned comparisons.
	 
    if ((DrawX >= BallX - Ball_size) &&
       (DrawX <= BallX + Ball_size) &&
       (DrawY >= BallY - Ball_size) &&
       (DrawY <= BallY + Ball_size))

     New Ball: Generates (pixelated) circle by using the standard circle formula.  Note that while 
     this single line is quite powerful descriptively, it causes the synthesis tool to use up three
     of the 12 available multipliers on the chip!  Since the multiplicants are required to be signed,
	  we have to first cast them from logic to int (signed by default) before they are multiplied). */
	  
	  //floor
	  int f_distx;
	  parameter [9:0] X_Center=320;
	  
	 assign f_distx = DrawX - X_Center;
	 
	  always_comb
	 begin
		if(f_distx <= 215) 
			floor_on = 1'b1;
		else
			floor_on = 1'b0;
			
	 end
	  
	  
	  
	   
			
	 
	  text tx(.drawx(DrawX), .drawy(DrawY), .on(on), .on2(on2), .one(one), .onp1(onp1), .onl0(onl0), .onl1(onl1), .onl2(onl2), .onl3(onl3), .onl4(onl4), .onl5(onl5), .onl6(onl6), .onl7(onl7), .onl8(onl8), .onl9(onl9), .onl10(onl10), .onl11(onl11), .onl12(onl12), .onl13(onl13), .onl0_(onl0_), .onl1_(onl1_), .onl2_(onl2_), .onl3_(onl3_), .onl4_(onl4_), .onl5_(onl5_), .onl6_(onl6_), .onl7_(onl7_), .onl8_(onl8_), .onl9_(onl9_), .onl10_(onl10_), .onl11_(onl11_), .onl12_(onl12_), .onl13_(onl13_));
	  
	  
	  //note1
	  int n_distX1_1, n_distY1_1, 
			n_distX1_2, n_distY1_2,
			n_distX1_3, n_distY1_3,
			n_distX1_4, n_distY1_4,
			n_distX1_5, n_distY1_5,
			n_distX1_6, n_distY1_6,
			n_distX1_7, n_distY1_7,
			n_distX1_8, n_distY1_8,
			n_distX1_9, n_distY1_9,
			n_distX1_10, n_distY1_10,
			n_distX1_11, n_distY1_11,
			n_distX1_12, n_distY1_12,
			n_distX1_13, n_distY1_13,
			n_distX1_14, n_distY1_14,
			n_distX1_15, n_distY1_15,
			n_distX1_16, n_distY1_16,
			n_distX1_17, n_distY1_17,
			n_distX1_18, n_distY1_18,
			n_distX1_19, n_distY1_19,
			n_distX1_20, n_distY1_20
			;
	  always_comb
	 begin
			n_distX1_1 = DrawX - noteX1_1;
			n_distY1_1 = DrawY - noteY1_1;
			n_distX1_2 = DrawX - noteX1_2;
			n_distY1_2 = DrawY - noteY1_2;
			n_distX1_3 = DrawX - noteX1_3;
			n_distY1_3 = DrawY - noteY1_3;
			n_distX1_4 = DrawX - noteX1_4;
			n_distY1_4 = DrawY - noteY1_4;
			n_distX1_5 = DrawX - noteX1_5;
			n_distY1_5 = DrawY - noteY1_5;
			n_distX1_6 = DrawX - noteX1_6;
			n_distY1_6 = DrawY - noteY1_6;
			n_distX1_7 = DrawX - noteX1_7;
			n_distY1_7 = DrawY - noteY1_7;
			n_distX1_8 = DrawX - noteX1_8;
			n_distY1_8 = DrawY - noteY1_8;
			n_distX1_9 = DrawX - noteX1_9;
			n_distY1_9 = DrawY - noteY1_9;
			n_distX1_10 = DrawX - noteX1_10;
			n_distY1_10 = DrawY - noteY1_10;
			n_distX1_11 = DrawX - noteX1_11;
			n_distY1_11 = DrawY - noteY1_11;
			n_distX1_12 = DrawX - noteX1_12;
			n_distY1_12 = DrawY - noteY1_12;
			n_distX1_13 = DrawX - noteX1_13;
			n_distY1_13 = DrawY - noteY1_13;
			n_distX1_14 = DrawX - noteX1_14;
			n_distY1_14 = DrawY - noteY1_14;
			n_distX1_15 = DrawX - noteX1_15;
			n_distY1_15 = DrawY - noteY1_15;
			n_distX1_16 = DrawX - noteX1_16;
			n_distY1_16 = DrawY - noteY1_16;
			n_distX1_17 = DrawX - noteX1_17;
			n_distY1_17 = DrawY - noteY1_17;
			n_distX1_18 = DrawX - noteX1_18;
			n_distY1_18 = DrawY - noteY1_18;
			n_distX1_19 = DrawX - noteX1_19;
			n_distY1_19 = DrawY - noteY1_19;
			n_distX1_20 = DrawX - noteX1_20;
			n_distY1_20 = DrawY - noteY1_20;
	 end 
	 
	 
	 
	 
	 always_comb
    begin:note1_on_proc
        if (( ( n_distX1_1*n_distX1_1 + n_distY1_1*n_distY1_1) <= (noteS * noteS) )) //)
            note_on1_1 = 1'b1;
        else 
            note_on1_1 = 1'b0;
				
		  
		  if (( ( n_distX1_2*n_distX1_2 + n_distY1_2*n_distY1_2) <= (noteS * noteS) )) //&& (noteY1_2 < 479))
            note_on1_2 = 1'b1;
        else 
            note_on1_2 = 1'b0;
		  
		  if (( ( n_distX1_3*n_distX1_3 + n_distY1_3*n_distY1_3) <= (noteS * noteS) )) //&& (noteY1_3 < 479)) 
            note_on1_3 = 1'b1;
        else 
            note_on1_3 = 1'b0;
				
			if (( ( n_distX1_4*n_distX1_4 + n_distY1_4*n_distY1_4) <= (noteS * noteS) )) //&& (noteY1_4 < 479))
            note_on1_4 = 1'b1;
        else 
            note_on1_4 = 1'b0;
			
			if (( ( n_distX1_5*n_distX1_5 + n_distY1_5*n_distY1_5) <= (noteS * noteS) )) //&& (noteY1_5 < 479))
            note_on1_5 = 1'b1;
        else 
            note_on1_5 = 1'b0;
				
			if (( ( n_distX1_6*n_distX1_6 + n_distY1_6*n_distY1_6) <= (noteS * noteS) )) //&& (noteY1_6 < 479))
            note_on1_6 = 1'b1;
        else 
            note_on1_6 = 1'b0;
				
			if (( ( n_distX1_7*n_distX1_7 + n_distY1_7*n_distY1_7) <= (noteS * noteS) )) //&& (noteY1_7 < 479))
            note_on1_7 = 1'b1;
        else 
            note_on1_7 = 1'b0;
				
			if (( ( n_distX1_8*n_distX1_8 + n_distY1_8*n_distY1_8) <= (noteS * noteS) )) //&& (noteY1_8 < 479))
            note_on1_8 = 1'b1;
        else 
            note_on1_8 = 1'b0;
				
			if (( ( n_distX1_9*n_distX1_9 + n_distY1_9*n_distY1_9) <= (noteS * noteS) )) //&& (noteY1_9 < 479))
            note_on1_9 = 1'b1;
        else 
            note_on1_9 = 1'b0;
			
			if (( ( n_distX1_10*n_distX1_10 + n_distY1_10*n_distY1_10) <= (noteS * noteS) ))  //&& (noteY1_10 < 479))
            note_on1_10 = 1'b1;
        else 
            note_on1_10 = 1'b0;
			
			if (( ( n_distX1_11*n_distX1_11 + n_distY1_11*n_distY1_11) <= (noteS * noteS) )) //&& (noteY1_11 < 479))
            note_on1_11 = 1'b1;
        else 
            note_on1_11 = 1'b0;
				
			if (( ( n_distX1_12*n_distX1_12 + n_distY1_12*n_distY1_12) <= (noteS * noteS) )) //&& (noteY1_12 < 479))
            note_on1_12 = 1'b1;
        else 
            note_on1_12 = 1'b0;
				
			if (( ( n_distX1_13*n_distX1_13 + n_distY1_13*n_distY1_13) <= (noteS * noteS) )) //&& (noteY1_13 < 479))
            note_on1_13 = 1'b1;
        else 
            note_on1_13 = 1'b0;
			
			if (( ( n_distX1_14*n_distX1_14 + n_distY1_14*n_distY1_14) <= (noteS * noteS) )) //&& (noteY1_14 < 479))
            note_on1_14 = 1'b1;
        else 
            note_on1_14 = 1'b0;
				
			if (( ( n_distX1_15*n_distX1_15 + n_distY1_15*n_distY1_15) <= (noteS * noteS) )) //&& (noteY1_15 < 479))
            note_on1_15 = 1'b1;
        else 
            note_on1_15 = 1'b0;
				
			if (( ( n_distX1_16*n_distX1_16 + n_distY1_16*n_distY1_16) <= (noteS * noteS) )) //&& (noteY1_16 < 479))
            note_on1_16 = 1'b1;
        else 
            note_on1_16 = 1'b0;
				
			if (( ( n_distX1_17*n_distX1_17 + n_distY1_17*n_distY1_17) <= (noteS * noteS) )) //&& (noteY1_17 < 479))
            note_on1_17 = 1'b1;
        else 
            note_on1_17 = 1'b0;
			
			if (( ( n_distX1_18*n_distX1_18 + n_distY1_18*n_distY1_18) <= (noteS * noteS) )) //&& (noteY1_18 < 479))
            note_on1_18 = 1'b1;
        else 
            note_on1_18 = 1'b0;
			
			if (( ( n_distX1_19*n_distX1_19 + n_distY1_19*n_distY1_19) <= (noteS * noteS) )) //&& (noteY1_19 < 479))
            note_on1_19 = 1'b1;
        else 
            note_on1_19 = 1'b0;
			
			if (( ( n_distX1_20*n_distX1_20 + n_distY1_20*n_distY1_20) <= (noteS * noteS) )) //&& (noteY1_20 < 479))
            note_on1_20 = 1'b1;
        else 
            note_on1_20 = 1'b0;
     end 
	 
	 //note2
	 int n_distX2_1, n_distY2_1, 
			n_distX2_2, n_distY2_2,
			n_distX2_3, n_distY2_3,
			n_distX2_4, n_distY2_4,
			n_distX2_5, n_distY2_5,
			n_distX2_6, n_distY2_6,
			n_distX2_7, n_distY2_7,
			n_distX2_8, n_distY2_8,
			n_distX2_9, n_distY2_9,
			n_distX2_10, n_distY2_10,
			n_distX2_11, n_distY2_11,
			n_distX2_12, n_distY2_12,
			n_distX2_13, n_distY2_13,
			n_distX2_14, n_distY2_14,
			n_distX2_15, n_distY2_15,
			n_distX2_16, n_distY2_16,
			n_distX2_17, n_distY2_17,
			n_distX2_18, n_distY2_18,
			n_distX2_19, n_distY2_19,
			n_distX2_20, n_distY2_20;
	  always_comb
	 begin
			n_distX2_1 = DrawX - noteX2_1;
			n_distY2_1 = DrawY - noteY2_1;
			n_distX2_2 = DrawX - noteX2_2;
			n_distY2_2 = DrawY - noteY2_2;
			n_distX2_3 = DrawX - noteX2_3;
			n_distY2_3 = DrawY - noteY2_3;
			n_distX2_4 = DrawX - noteX2_4;
			n_distY2_4 = DrawY - noteY2_4;
			n_distX2_5 = DrawX - noteX2_5;
			n_distY2_5 = DrawY - noteY2_5;
			n_distX2_6 = DrawX - noteX2_6;
			n_distY2_6 = DrawY - noteY2_6;
			n_distX2_7 = DrawX - noteX2_7;
			n_distY2_7 = DrawY - noteY2_7;
			n_distX2_8 = DrawX - noteX2_8;
			n_distY2_8 = DrawY - noteY2_8;
			n_distX2_9 = DrawX - noteX2_9;
			n_distY2_9 = DrawY - noteY2_9;
			n_distX2_10 = DrawX - noteX2_10;
			n_distY2_10 = DrawY - noteY2_10;
			n_distX2_11 = DrawX - noteX2_11;
			n_distY2_11 = DrawY - noteY2_11;
			n_distX2_12 = DrawX - noteX2_12;
			n_distY2_12 = DrawY - noteY2_12;
			n_distX2_13 = DrawX - noteX2_13;
			n_distY2_13 = DrawY - noteY2_13;
			n_distX2_14 = DrawX - noteX2_14;
			n_distY2_14 = DrawY - noteY2_14;
			n_distX2_15 = DrawX - noteX2_15;
			n_distY2_15 = DrawY - noteY2_15;
			n_distX2_16 = DrawX - noteX2_16;
			n_distY2_16 = DrawY - noteY2_16;
			n_distX2_17 = DrawX - noteX2_17;
			n_distY2_17 = DrawY - noteY2_17;
			n_distX2_18 = DrawX - noteX2_18;
			n_distY2_18 = DrawY - noteY2_18;
			n_distX2_19 = DrawX - noteX2_19;
			n_distY2_19 = DrawY - noteY2_19;
			n_distX2_20 = DrawX - noteX2_20;
			n_distY2_20 = DrawY - noteY2_20;
	 end 
	 
	 always_comb
    begin:note2_on_proc
        if ( ( n_distX2_1*n_distX2_1 + n_distY2_1*n_distY2_1) <= (noteS * noteS) ) 
            note_on2_1 = 1'b1;
        else 
            note_on2_1 = 1'b0;
				
		  
		  if ( ( n_distX2_2*n_distX2_2 + n_distY2_2*n_distY2_2) <= (noteS * noteS) ) 
            note_on2_2 = 1'b1;
        else 
            note_on2_2 = 1'b0;
		  
		  if ( ( n_distX2_3*n_distX2_3 + n_distY2_3*n_distY2_3) <= (noteS * noteS) ) 
            note_on2_3 = 1'b1;
        else 
            note_on2_3 = 1'b0;
				
			if ( ( n_distX2_4*n_distX2_4 + n_distY2_4*n_distY2_4) <= (noteS * noteS) ) 
            note_on2_4 = 1'b1;
        else 
            note_on2_4 = 1'b0;
			
			if ( ( n_distX2_5*n_distX2_5 + n_distY2_5*n_distY2_5) <= (noteS * noteS) ) 
            note_on2_5 = 1'b1;
        else 
            note_on2_5 = 1'b0;
				
			if ( ( n_distX2_6*n_distX2_6 + n_distY2_6*n_distY2_6) <= (noteS * noteS) ) 
            note_on2_6 = 1'b1;
        else 
            note_on2_6 = 1'b0;
				
			if ( ( n_distX2_7*n_distX2_7 + n_distY2_7*n_distY2_7) <= (noteS * noteS) ) 
            note_on2_7 = 1'b1;
        else 
            note_on2_7 = 1'b0;
				
			if ( ( n_distX2_8*n_distX2_8 + n_distY2_8*n_distY2_8) <= (noteS * noteS) ) 
            note_on2_8 = 1'b1;
        else 
            note_on2_8 = 1'b0;
				
			if ( ( n_distX2_9*n_distX2_9 + n_distY2_9*n_distY2_9) <= (noteS * noteS) ) 
            note_on2_9 = 1'b1;
        else 
            note_on2_9 = 1'b0;
			
			if ( ( n_distX2_10*n_distX2_10 + n_distY2_10*n_distY2_10) <= (noteS * noteS) ) 
            note_on2_10 = 1'b1;
        else 
            note_on2_10 = 1'b0;
			
			if ( ( n_distX2_11*n_distX2_11 + n_distY2_11*n_distY2_11) <= (noteS * noteS) ) 
            note_on2_11 = 1'b1;
        else 
            note_on2_11 = 1'b0;
				
			if ( ( n_distX2_12*n_distX2_12 + n_distY2_12*n_distY2_12) <= (noteS * noteS) ) 
            note_on2_12 = 1'b1;
        else 
            note_on2_12 = 1'b0;
				
			if ( ( n_distX2_13*n_distX2_13 + n_distY2_13*n_distY2_13) <= (noteS * noteS) ) 
            note_on2_13 = 1'b1;
        else 
            note_on2_13 = 1'b0;
			
			if ( ( n_distX2_14*n_distX2_14 + n_distY2_14*n_distY2_14) <= (noteS * noteS) ) 
            note_on2_14 = 1'b1;
        else 
            note_on2_14 = 1'b0;
				
			if ( ( n_distX2_15*n_distX2_15 + n_distY2_15*n_distY2_15) <= (noteS * noteS) ) 
            note_on2_15 = 1'b1;
        else 
            note_on2_15 = 1'b0;
				
			if ( ( n_distX2_16*n_distX2_16 + n_distY2_16*n_distY2_16) <= (noteS * noteS) ) 
            note_on2_16 = 1'b1;
        else 
            note_on2_16 = 1'b0;
				
			if ( ( n_distX2_17*n_distX2_17 + n_distY2_17*n_distY2_17) <= (noteS * noteS) ) 
            note_on2_17 = 1'b1;
        else 
            note_on2_17 = 1'b0;
			
			if ( ( n_distX2_18*n_distX2_18 + n_distY2_18*n_distY2_18) <= (noteS * noteS) ) 
            note_on2_18 = 1'b1;
        else 
            note_on2_18 = 1'b0;
			
			if ( ( n_distX2_19*n_distX2_19 + n_distY2_19*n_distY2_19) <= (noteS * noteS) ) 
            note_on2_19 = 1'b1;
        else 
            note_on2_19 = 1'b0;
			
			if ( ( n_distX2_20*n_distX2_20 + n_distY2_20*n_distY2_20) <= (noteS * noteS) ) 
            note_on2_20 = 1'b1;
        else 
            note_on2_20 = 1'b0;
     end
	 
	 //note3
	 int n_distX3_1, n_distY3_1, 
			n_distX3_2, n_distY3_2,
			n_distX3_3, n_distY3_3,
			n_distX3_4, n_distY3_4,
			n_distX3_5, n_distY3_5,
			n_distX3_6, n_distY3_6,
			n_distX3_7, n_distY3_7,
			n_distX3_8, n_distY3_8,
			n_distX3_9, n_distY3_9,
			n_distX3_10, n_distY3_10,
			n_distX3_11, n_distY3_11,
			n_distX3_12, n_distY3_12,
			n_distX3_13, n_distY3_13,
			n_distX3_14, n_distY3_14,
			n_distX3_15, n_distY3_15,
			n_distX3_16, n_distY3_16,
			n_distX3_17, n_distY3_17,
			n_distX3_18, n_distY3_18,
			n_distX3_19, n_distY3_19,
			n_distX3_20, n_distY3_20;
	  always_comb
	 begin
			n_distX3_1 = DrawX - noteX3_1;
			n_distY3_1 = DrawY - noteY3_1;
			n_distX3_2 = DrawX - noteX3_2;
			n_distY3_2 = DrawY - noteY3_2;
			n_distX3_3 = DrawX - noteX3_3;
			n_distY3_3 = DrawY - noteY3_3;
			n_distX3_4 = DrawX - noteX3_4;
			n_distY3_4 = DrawY - noteY3_4;
			n_distX3_5 = DrawX - noteX3_5;
			n_distY3_5 = DrawY - noteY3_5;
			n_distX3_6 = DrawX - noteX3_6;
			n_distY3_6 = DrawY - noteY3_6;
			n_distX3_7 = DrawX - noteX3_7;
			n_distY3_7 = DrawY - noteY3_7;
			n_distX3_8 = DrawX - noteX3_8;
			n_distY3_8 = DrawY - noteY3_8;
			n_distX3_9 = DrawX - noteX3_9;
			n_distY3_9 = DrawY - noteY3_9;
			n_distX3_10 = DrawX - noteX3_10;
			n_distY3_10 = DrawY - noteY3_10;
			n_distX3_11 = DrawX - noteX3_11;
			n_distY3_11 = DrawY - noteY3_11;
			n_distX3_12 = DrawX - noteX3_12;
			n_distY3_12 = DrawY - noteY3_12;
			n_distX3_13 = DrawX - noteX3_13;
			n_distY3_13 = DrawY - noteY3_13;
			n_distX3_14 = DrawX - noteX3_14;
			n_distY3_14 = DrawY - noteY3_14;
			n_distX3_15 = DrawX - noteX3_15;
			n_distY3_15 = DrawY - noteY3_15;
			n_distX3_16 = DrawX - noteX3_16;
			n_distY3_16 = DrawY - noteY3_16;
			n_distX3_17 = DrawX - noteX3_17;
			n_distY3_17 = DrawY - noteY3_17;
			n_distX3_18 = DrawX - noteX3_18;
			n_distY3_18 = DrawY - noteY3_18;
			n_distX3_19 = DrawX - noteX3_19;
			n_distY3_19 = DrawY - noteY3_19;
			n_distX3_20 = DrawX - noteX3_20;
			n_distY3_20 = DrawY - noteY3_20;
	 end 
	 
	 always_comb
    begin:note3_on_proc
        if ( ( n_distX3_1*n_distX3_1 + n_distY3_1*n_distY3_1) <= (noteS * noteS) ) 
            note_on3_1 = 1'b1;
        else 
            note_on3_1 = 1'b0;
				
		  
		  if ( ( n_distX3_2*n_distX3_2 + n_distY3_2*n_distY3_2) <= (noteS * noteS) ) 
            note_on3_2 = 1'b1;
        else 
            note_on3_2 = 1'b0;
		  
		  if ( ( n_distX3_3*n_distX3_3 + n_distY3_3*n_distY3_3) <= (noteS * noteS) ) 
            note_on3_3 = 1'b1;
        else 
            note_on3_3 = 1'b0;
				
			if ( ( n_distX3_4*n_distX3_4 + n_distY3_4*n_distY3_4) <= (noteS * noteS) ) 
            note_on3_4 = 1'b1;
        else 
            note_on3_4 = 1'b0;
			
			if ( ( n_distX3_5*n_distX3_5 + n_distY3_5*n_distY3_5) <= (noteS * noteS) ) 
            note_on3_5 = 1'b1;
        else 
            note_on3_5 = 1'b0;
				
			if ( ( n_distX3_6*n_distX3_6 + n_distY3_6*n_distY3_6) <= (noteS * noteS) ) 
            note_on3_6 = 1'b1;
        else 
            note_on3_6 = 1'b0;
				
			if ( ( n_distX3_7*n_distX3_7 + n_distY3_7*n_distY3_7) <= (noteS * noteS) ) 
            note_on3_7 = 1'b1;
        else 
            note_on3_7 = 1'b0;
				
			if ( ( n_distX3_8*n_distX3_8 + n_distY3_8*n_distY3_8) <= (noteS * noteS) ) 
            note_on3_8 = 1'b1;
        else 
            note_on3_8 = 1'b0;
				
			if ( ( n_distX3_9*n_distX3_9 + n_distY3_9*n_distY3_9) <= (noteS * noteS) ) 
            note_on3_9 = 1'b1;
        else 
            note_on3_9 = 1'b0;
			
			if ( ( n_distX3_10*n_distX3_10 + n_distY3_10*n_distY3_10) <= (noteS * noteS) ) 
            note_on3_10 = 1'b1;
        else 
            note_on3_10 = 1'b0;
			
			if ( ( n_distX3_11*n_distX3_11 + n_distY3_11*n_distY3_11) <= (noteS * noteS) ) 
            note_on3_11 = 1'b1;
        else 
            note_on3_11 = 1'b0;
				
			if ( ( n_distX3_12*n_distX3_12 + n_distY3_12*n_distY3_12) <= (noteS * noteS) ) 
            note_on3_12 = 1'b1;
        else 
            note_on3_12 = 1'b0;
				
			if ( ( n_distX3_13*n_distX3_13 + n_distY3_13*n_distY3_13) <= (noteS * noteS) ) 
            note_on3_13 = 1'b1;
        else 
            note_on3_13 = 1'b0;
			
			if ( ( n_distX3_14*n_distX3_14 + n_distY3_14*n_distY3_14) <= (noteS * noteS) ) 
            note_on3_14 = 1'b1;
        else 
            note_on3_14 = 1'b0;
				
			if ( ( n_distX3_15*n_distX3_15 + n_distY3_15*n_distY3_15) <= (noteS * noteS) ) 
            note_on3_15 = 1'b1;
        else 
            note_on3_15 = 1'b0;
				
			if ( ( n_distX3_16*n_distX3_16 + n_distY3_16*n_distY3_16) <= (noteS * noteS) ) 
            note_on3_16 = 1'b1;
        else 
            note_on3_16 = 1'b0;
				
			if ( ( n_distX3_17*n_distX3_17 + n_distY3_17*n_distY3_17) <= (noteS * noteS) ) 
            note_on3_17 = 1'b1;
        else 
            note_on3_17 = 1'b0;
			
			if ( ( n_distX3_18*n_distX3_18 + n_distY3_18*n_distY3_18) <= (noteS * noteS) ) 
            note_on3_18 = 1'b1;
        else 
            note_on3_18 = 1'b0;
			
			if ( ( n_distX3_19*n_distX3_19 + n_distY3_19*n_distY3_19) <= (noteS * noteS) ) 
            note_on3_19 = 1'b1;
        else 
            note_on3_19 = 1'b0;
			
			if ( ( n_distX3_20*n_distX3_20 + n_distY3_20*n_distY3_20) <= (noteS * noteS) ) 
            note_on3_20 = 1'b1;
        else 
            note_on3_20 = 1'b0;
     end
	 
	 //note4
	 int n_distX4_1, n_distY4_1, 
			n_distX4_2, n_distY4_2,
			n_distX4_3, n_distY4_3,
			n_distX4_4, n_distY4_4,
			n_distX4_5, n_distY4_5,
			n_distX4_6, n_distY4_6,
			n_distX4_7, n_distY4_7,
			n_distX4_8, n_distY4_8,
			n_distX4_9, n_distY4_9,
			n_distX4_10, n_distY4_10,
			n_distX4_11, n_distY4_11,
			n_distX4_12, n_distY4_12,
			n_distX4_13, n_distY4_13,
			n_distX4_14, n_distY4_14,
			n_distX4_15, n_distY4_15,
			n_distX4_16, n_distY4_16,
			n_distX4_17, n_distY4_17,
			n_distX4_18, n_distY4_18,
			n_distX4_19, n_distY4_19,
			n_distX4_20, n_distY4_20;
	  always_comb
	 begin
			n_distX4_1 = DrawX - noteX4_1;
			n_distY4_1 = DrawY - noteY4_1;
			n_distX4_2 = DrawX - noteX4_2;
			n_distY4_2 = DrawY - noteY4_2;
			n_distX4_3 = DrawX - noteX4_3;
			n_distY4_3 = DrawY - noteY4_3;
			n_distX4_4 = DrawX - noteX4_4;
			n_distY4_4 = DrawY - noteY4_4;
			n_distX4_5 = DrawX - noteX4_5;
			n_distY4_5 = DrawY - noteY4_5;
			n_distX4_6 = DrawX - noteX4_6;
			n_distY4_6 = DrawY - noteY4_6;
			n_distX4_7 = DrawX - noteX4_7;
			n_distY4_7 = DrawY - noteY4_7;
			n_distX4_8 = DrawX - noteX4_8;
			n_distY4_8 = DrawY - noteY4_8;
			n_distX4_9 = DrawX - noteX4_9;
			n_distY4_9 = DrawY - noteY4_9;
			n_distX4_10 = DrawX - noteX4_10;
			n_distY4_10 = DrawY - noteY4_10;
			n_distX4_11 = DrawX - noteX4_11;
			n_distY4_11 = DrawY - noteY4_11;
			n_distX4_12 = DrawX - noteX4_12;
			n_distY4_12 = DrawY - noteY4_12;
			n_distX4_13 = DrawX - noteX4_13;
			n_distY4_13 = DrawY - noteY4_13;
			n_distX4_14 = DrawX - noteX4_14;
			n_distY4_14 = DrawY - noteY4_14;
			n_distX4_15 = DrawX - noteX4_15;
			n_distY4_15 = DrawY - noteY4_15;
			n_distX4_16 = DrawX - noteX4_16;
			n_distY4_16 = DrawY - noteY4_16;
			n_distX4_17 = DrawX - noteX4_17;
			n_distY4_17 = DrawY - noteY4_17;
			n_distX4_18 = DrawX - noteX4_18;
			n_distY4_18 = DrawY - noteY4_18;
			n_distX4_19 = DrawX - noteX4_19;
			n_distY4_19 = DrawY - noteY4_19;
			n_distX4_20 = DrawX - noteX4_20;
			n_distY4_20 = DrawY - noteY4_20;
	 end 
	 
	 always_comb
    begin:note4_on_proc
        if ( ( n_distX4_1*n_distX4_1 + n_distY4_1*n_distY4_1) <= (noteS * noteS) ) 
            note_on4_1 = 1'b1;
        else 
            note_on4_1 = 1'b0;
				
		  
		  if ( ( n_distX4_2*n_distX4_2 + n_distY4_2*n_distY4_2) <= (noteS * noteS) ) 
            note_on4_2 = 1'b1;
        else 
            note_on4_2 = 1'b0;
		  
		  if ( ( n_distX4_3*n_distX4_3 + n_distY4_3*n_distY4_3) <= (noteS * noteS) ) 
            note_on4_3 = 1'b1;
        else 
            note_on4_3 = 1'b0;
				
			if ( ( n_distX4_4*n_distX4_4 + n_distY4_4*n_distY4_4) <= (noteS * noteS) ) 
            note_on4_4 = 1'b1;
        else 
            note_on4_4 = 1'b0;
			
			if ( ( n_distX4_5*n_distX4_5 + n_distY4_5*n_distY4_5) <= (noteS * noteS) ) 
            note_on4_5 = 1'b1;
        else 
            note_on4_5 = 1'b0;
				
			if ( ( n_distX4_6*n_distX4_6 + n_distY4_6*n_distY4_6) <= (noteS * noteS) ) 
            note_on4_6 = 1'b1;
        else 
            note_on4_6 = 1'b0;
				
			if ( ( n_distX4_7*n_distX4_7 + n_distY4_7*n_distY4_7) <= (noteS * noteS) ) 
            note_on4_7 = 1'b1;
        else 
            note_on4_7 = 1'b0;
				
			if ( ( n_distX4_8*n_distX4_8 + n_distY4_8*n_distY4_8) <= (noteS * noteS) ) 
            note_on4_8 = 1'b1;
        else 
            note_on4_8 = 1'b0;
				
			if ( ( n_distX4_9*n_distX4_9 + n_distY4_9*n_distY4_9) <= (noteS * noteS) ) 
            note_on4_9 = 1'b1;
        else 
            note_on4_9 = 1'b0;
			
			if ( ( n_distX4_10*n_distX4_10 + n_distY4_10*n_distY4_10) <= (noteS * noteS) ) 
            note_on4_10 = 1'b1;
        else 
            note_on4_10 = 1'b0;
			
			if ( ( n_distX4_11*n_distX4_11 + n_distY4_11*n_distY4_11) <= (noteS * noteS) ) 
            note_on4_11 = 1'b1;
        else 
            note_on4_11 = 1'b0;
				
			if ( ( n_distX4_12*n_distX4_12 + n_distY4_12*n_distY4_12) <= (noteS * noteS) ) 
            note_on4_12 = 1'b1;
        else 
            note_on4_12 = 1'b0;
				
			if ( ( n_distX4_13*n_distX4_13 + n_distY4_13*n_distY4_13) <= (noteS * noteS) ) 
            note_on4_13 = 1'b1;
        else 
            note_on4_13 = 1'b0;
			
			if ( ( n_distX4_14*n_distX4_14 + n_distY4_14*n_distY4_14) <= (noteS * noteS) ) 
            note_on4_14 = 1'b1;
        else 
            note_on4_14 = 1'b0;
				
			if ( ( n_distX4_15*n_distX4_15 + n_distY4_15*n_distY4_15) <= (noteS * noteS) ) 
            note_on4_15 = 1'b1;
        else 
            note_on4_15 = 1'b0;
				
			if ( ( n_distX4_16*n_distX4_16 + n_distY4_16*n_distY4_16) <= (noteS * noteS) ) 
            note_on4_16 = 1'b1;
        else 
            note_on4_16 = 1'b0;
				
			if ( ( n_distX4_17*n_distX4_17 + n_distY4_17*n_distY4_17) <= (noteS * noteS) ) 
            note_on4_17 = 1'b1;
        else 
            note_on4_17 = 1'b0;
			
			if ( ( n_distX4_18*n_distX4_18 + n_distY4_18*n_distY4_18) <= (noteS * noteS) ) 
            note_on4_18 = 1'b1;
        else 
            note_on4_18 = 1'b0;
			
			if ( ( n_distX4_19*n_distX4_19 + n_distY4_19*n_distY4_19) <= (noteS * noteS) ) 
            note_on4_19 = 1'b1;
        else 
            note_on4_19 = 1'b0;
			
			if ( ( n_distX4_20*n_distX4_20 + n_distY4_20*n_distY4_20) <= (noteS * noteS) ) 
            note_on4_20 = 1'b1;
        else 
            note_on4_20 = 1'b0;
     end
	
	 //ball
    int DistX, DistY, Size;
	 assign DistX = DrawX - BallX;
    assign DistY = DrawY - BallY;
    assign Size = Ball_size;
	 
	 
	 //background
	 int B_distx;
	 assign B_distx = DrawX - background_x;
	 
	 int B_distx2;
	 assign B_distx2 = DrawX - background_x2;
	 
	 int B_distx3;
	 assign B_distx3 = DrawX - background_x3;
	 
	 int B_distx4;
	 assign B_distx4 = DrawX - background_x4;
	 
	 int B_distx5;
	 assign B_distx5 = DrawX - background_x5;
	 
	 
	 
	 //hit
	 int h_DistX1, h_DistX2, h_DistX3, h_DistX4, h_DistY, h_Size;
	 assign h_DistX1 = DrawX - hitX1;
	 assign h_DistX2 = DrawX - hitX2;
	 assign h_DistX3 = DrawX - hitX3;
	 assign h_DistX4 = DrawX - hitX4;
    assign h_DistY = DrawY - hitY;
    assign h_Size = hitS;
	
	 
	 
	 //hit_on
	 always_comb
    begin:hit1_on_proc
        if ( ( h_DistX1*h_DistX1 + h_DistY*h_DistY) <= (h_Size * h_Size) ) 
            hit_on1 = 1'b1;
        else 
            hit_on1 = 1'b0;
     end 
	 
	 always_comb
    begin:hit2_on_proc
        if ( ( h_DistX2*h_DistX2 + h_DistY*h_DistY) <= (h_Size * h_Size) ) 
            hit_on2 = 1'b1;
        else 
            hit_on2 = 1'b0;
     end 
	 
	 always_comb
    begin:hit3_on_proc
        if ( ( h_DistX3*h_DistX3 + h_DistY*h_DistY) <= (h_Size * h_Size) ) 
            hit_on3 = 1'b1;
        else 
            hit_on3 = 1'b0;
     end 
	 
	 always_comb
    begin:hit4_on_proc
        if ( ( h_DistX4*h_DistX4 + h_DistY*h_DistY) <= (h_Size * h_Size) ) 
            hit_on4 = 1'b1;
        else 
            hit_on4 = 1'b0;
     end 
	 
	 
	 
	 
	 
	 
	 //back_on
	 always_comb
	 begin
		if((B_distx <= background_s) || (B_distx2 <= background_s) || (B_distx3 <= background_s) || (B_distx4 <= background_s) || (B_distx5 <= background_s))
			background_on = 1'b1;
		else
			background_on = 1'b0;
			
	 end
	 
	
	 //ball_on
//    always_comb
//    begin:Ball_on_proc
//        if ( ( DistX*DistX + DistY*DistY) <= (Size * Size) ) 
//            ball_on = 1'b0;//1'b1;
//        else 
//            ball_on = 1'b0;
//     end 
//       
//assign score_high=7'b0;
always_ff
begin
	if (starts==1'b1)
	score_high=14'b00000000000000;
	else if (score > score_high)
		score_high=score;
//	else 
//		score_high=score_high;
end
    logic [13:0]d, d1;
	 logic [6:0] score, score1, score2, score3, score4, score_high;
	 assign score=score1+score2+score3+score4;
	 //assign d=14'b11111111111111;
	 logic note_1, note_2, note_3, note_4;
	 assign note_1= ((note_on1_1== 1'b1 || note_on1_2== 1'b1 || note_on1_3== 1'b1 || note_on1_4== 1'b1 || note_on1_5== 1'b1 || note_on1_6== 1'b1 || note_on1_7== 1'b1 || note_on1_8== 1'b1 || note_on1_9== 1'b1 || 
				note_on1_10== 1'b1 || note_on1_11== 1'b1 || note_on1_12== 1'b1 || note_on1_13== 1'b1 || note_on1_14== 1'b1 || note_on1_15== 1'b1 || note_on1_16== 1'b1 || note_on1_17== 1'b1 || 
				note_on1_18== 1'b1 || note_on1_19== 1'b1|| note_on1_20== 1'b1));
	assign note_2 =(note_on2_1== 1'b1 || note_on2_2== 1'b1 || note_on2_3== 1'b1 || note_on2_4== 1'b1 || note_on2_5== 1'b1 || note_on2_6== 1'b1 || note_on2_7== 1'b1 || note_on2_8== 1'b1 || note_on2_9== 1'b1 || 
				note_on2_10== 1'b1 || note_on2_11== 1'b1 || note_on2_12== 1'b1 || note_on2_13== 1'b1 || note_on2_14== 1'b1 || note_on2_15== 1'b1 || note_on2_16== 1'b1 || note_on2_17== 1'b1 || 
				note_on2_18== 1'b1 || note_on2_19== 1'b1|| note_on2_20== 1'b1);
	assign note_3 = (note_on3_1== 1'b1 || note_on3_2== 1'b1 || note_on3_3== 1'b1 || note_on3_4== 1'b1 || note_on3_5== 1'b1 || note_on3_6== 1'b1 || note_on3_7== 1'b1 || note_on3_8== 1'b1 || note_on3_9== 1'b1 || 
				note_on3_10== 1'b1 || note_on3_11== 1'b1 || note_on3_12== 1'b1 || note_on3_13== 1'b1 || note_on3_14== 1'b1 || note_on3_15== 1'b1 || note_on3_16== 1'b1 || note_on3_17== 1'b1 || 
				note_on3_18== 1'b1 || note_on3_19== 1'b1|| note_on3_20== 1'b1);
	 assign note_4 =(note_on4_1== 1'b1 || note_on4_2== 1'b1 || note_on4_3== 1'b1 || note_on4_4== 1'b1 || note_on4_5== 1'b1 || note_on4_6== 1'b1 || note_on4_7== 1'b1 || note_on4_8== 1'b1 || note_on4_9== 1'b1 || 
				note_on4_10== 1'b1 || note_on4_11== 1'b1 || note_on4_12== 1'b1 || note_on4_13== 1'b1 || note_on4_14== 1'b1 || note_on4_15== 1'b1 || note_on4_16== 1'b1 || note_on4_17== 1'b1 || 
				note_on4_18== 1'b1 || note_on4_19== 1'b1|| note_on4_20== 1'b1);
				
			//score s1(.clock(clock), .reset(reset), .hit1(hit1), .hit2(hit2), .hit3(hit3), .hit4(hit4), .hit_on1(hit_on1), .hit_on2(hit_on2), .hit_on3(hit_on3), .hit_on4(hit_on4), .note1(note_1), .note2(note_2), .note3(note_3), .note4(note_4), .score(score1));//.d(d));
			score s1(.clock(clock), .reset(reset), .hit1(hit1), .hit_on1(hit_on1), .note1(note_1), .start_(start_1),.score(score1));
			score s2(.clock(clock), .reset(reset), .hit1(hit2), .hit_on1(hit_on2), .note1(note_2), .start_(start_1),.score(score2));
			score s3(.clock(clock), .reset(reset), .hit1(hit3), .hit_on1(hit_on3), .note1(note_3), .start_(start_1),.score(score3));
			score s4(.clock(clock), .reset(reset), .hit1(hit4), .hit_on1(hit_on4), .note1(note_4), .start_(start_1),.score(score4));
			HexDriver HD(.In0(score), .Out0(d));
			HexDriver HD1(.In0(score_high), .Out0(d1));
			//assign d1=14'b11111111111111;
	always_comb
    begin:RGB_Display
			
		  if (note_1==1'b1 && start_1==1'b0)
//		  (note_on1_1== 1'b1 || note_on1_2== 1'b1 || note_on1_3== 1'b1 || note_on1_4== 1'b1 || note_on1_5== 1'b1 || note_on1_6== 1'b1 || note_on1_7== 1'b1 || note_on1_8== 1'b1 || note_on1_9== 1'b1 || 
//				note_on1_10== 1'b1 || note_on1_11== 1'b1 || note_on1_12== 1'b1 || note_on1_13== 1'b1 || note_on1_14== 1'b1 || note_on1_15== 1'b1 || note_on1_16== 1'b1 || note_on1_17== 1'b1 || 
//				note_on1_18== 1'b1 || note_on1_19== 1'b1|| note_on1_20== 1'b1)&& (start_1 == 1'b0))
			begin
				Red = 8'hff;
            Green = 8'h00;			//note1
            Blue = 8'h00;
			end
			
			else if (note_2==1'b1 && (start_1 == 1'b0))
//			(note_on2_1== 1'b1 || note_on2_2== 1'b1 || note_on2_3== 1'b1 || note_on2_4== 1'b1 || note_on2_5== 1'b1 || note_on2_6== 1'b1 || note_on2_7== 1'b1 || note_on2_8== 1'b1 || note_on2_9== 1'b1 || 
//				note_on2_10== 1'b1 || note_on2_11== 1'b1 || note_on2_12== 1'b1 || note_on2_13== 1'b1 || note_on2_14== 1'b1 || note_on2_15== 1'b1 || note_on2_16== 1'b1 || note_on2_17== 1'b1 || 
//				note_on2_18== 1'b1 || note_on2_19== 1'b1|| note_on2_20== 1'b1)&& (start_1 == 1'b0))
			begin
				Red = 8'h00;
            Green = 8'hff;			//note2
            Blue = 8'h00;
			end
			
			else if (note_3==1'b1 && (start_1 == 1'b0))
//			((note_on3_1== 1'b1 || note_on3_2== 1'b1 || note_on3_3== 1'b1 || note_on3_4== 1'b1 || note_on3_5== 1'b1 || note_on3_6== 1'b1 || note_on3_7== 1'b1 || note_on3_8== 1'b1 || note_on3_9== 1'b1 || 
//				note_on3_10== 1'b1 || note_on3_11== 1'b1 || note_on3_12== 1'b1 || note_on3_13== 1'b1 || note_on3_14== 1'b1 || note_on3_15== 1'b1 || note_on3_16== 1'b1 || note_on3_17== 1'b1 || 
//				note_on3_18== 1'b1 || note_on3_19== 1'b1|| note_on3_20== 1'b1)&& (start_1 == 1'b0))
			begin
				Red = 8'hff;
            Green = 8'h55;		//note3
            Blue = 8'h00;
			end
			
			else if (note_4==1'b1 && (start_1 == 1'b0))
//			((note_on4_1== 1'b1 || note_on4_2== 1'b1 || note_on4_3== 1'b1 || note_on4_4== 1'b1 || note_on4_5== 1'b1 || note_on4_6== 1'b1 || note_on4_7== 1'b1 || note_on4_8== 1'b1 || note_on4_9== 1'b1 || 
//				note_on4_10== 1'b1 || note_on4_11== 1'b1 || note_on4_12== 1'b1 || note_on4_13== 1'b1 || note_on4_14== 1'b1 || note_on4_15== 1'b1 || note_on4_16== 1'b1 || note_on4_17== 1'b1 || 
//				note_on4_18== 1'b1 || note_on4_19== 1'b1|| note_on4_20== 1'b1)&& (start_1 == 1'b0))
			begin
				Red = 8'hf5;
            Green = 8'hd5;				//note4
            Blue = 8'h05;
			end
			
        else if ((background_on == 1'b1) && (end_ == 1'b0)&& (start_1 == 1'b0)) //(ball_on == 1'b1) | 
        begin 
            Red = 8'had;
            Green = 8'ha0;				//ball, background
            Blue = 8'h92;
        end 
		  
//		  else if ( (background_on == 1'b1) && (end_ == 1'b1)) //(ball_on == 1'b1) |
//        begin 
//            Red = 8'h00;
//            Green = 8'h00;				//ball, background
//            Blue = 8'h00;
//        end 
//		
	
		  //hit1
		  else if(hit_on1 == 1'b1 && hit1==1'b0&& (start_1 == 1'b0)&&on==0)	//dark red	
		  begin
				Red = 8'h55;
            Green = 8'h00;
            Blue = 8'h55;
		  end
		  
		  else if(hit_on1 == 1'b1 && hit1==1'b1&& (start_1 == 1'b0)&&on==0)	//light red
		  begin

				Red = 8'hff;
            Green = 8'h00;
            Blue = 8'h00;
		  end
        
		  
		  //hit2
		   else if(hit_on2 == 1'b1 && hit2 == 1'b0&& (start_1 == 1'b0)&&on==0)	//dark green
		  begin
				Red = 8'h00;
            Green = 8'h55;
            Blue = 8'h55;
		  end
		  
		  else if(hit_on2 == 1'b1 && hit2 == 1'b1&& (start_1 == 1'b0)&&on==0)	//light green
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		  
		  
		  
		  //hit3
		   else if(hit_on3 == 1'b1 && hit3 == 1'b0&& (start_1 == 1'b0)&&on==0)   //dark orange
		  begin
				Red = 8'h8a;
            Green = 8'h55;
            Blue = 8'h0a;
		  end
		  
		   else if(hit_on3 == 1'b1 && hit3 == 1'b1&& (start_1 == 1'b0)&&on==0)	//light orange
		  begin
				Red = 8'hff;
            Green = 8'h55;
            Blue = 8'h00;
		  end
		  
		  
		  //hit4
		   else if(hit_on4 == 1'b1 && hit4 == 1'b0&& (start_1 == 1'b0)&&on==0)	//dark yellow
		  begin
				Red = 8'h70;
            Green = 8'h65;
            Blue = 8'h1a;
		  end
		  
		   else if(hit_on4 == 1'b1 && hit4 == 1'b1&& (start_1 == 1'b0)&&on==0)	//light yellow
		  begin
				Red = 8'hf5;
            Green = 8'hd5;
            Blue = 8'h05;
		  end
		  
		  
//		  else if(floor_on)	//floor
//		  begin
//				Red = 8'hd3;
//            Green = 8'hd3;
//            Blue = 8'hd3;
//		  end
		  else if ((on==1)&& (start_1 == 1'b0))//DrawX==350 && DrawY==50))//on==1))
	begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
	end
		  
	else if ((onp1==1'b1)&&(start_1 == 1'b1))//DrawX==350 && DrawY==50))//on==1))
	begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
	end
		else if ((onl0==1'b1 && d[13]==1'b1&& (start_1 == 1'b0)))//DrawX==350 && DrawY==50))//on==1))
	begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
	end
		   else if(onl1 == 1'b1 && d[12] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		   else if(onl2 == 1'b1 && d[11] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl3 == 1'b1 && d[10] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl4 == 1'b1 && d[9] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl5 == 1'b1 && d[8] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl6 == 1'b1 && d[7] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl7 == 1'b1 && d[6] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl8 == 1'b1 && d[5] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl9 == 1'b1 && d[4] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl10 == 1'b1 && d[3] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl11 == 1'b1 && d[2] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl12 == 1'b1 && d[1] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl13 == 1'b1 && d[0] == 1'b1&& (start_1 == 1'b0))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		  
		  
		  //high score
		  else if ((onl0_==1'b1 && d1[13]==1'b1&& (end_ == 1'b1)))//DrawX==350 && DrawY==50))//on==1))
	begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
	end
		   else if(onl1_ == 1'b1 && d1[12] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		   else if(onl2_ == 1'b1 && d1[11] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl3_ == 1'b1 && d1[10] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl4_ == 1'b1 && d1[9] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl5_ == 1'b1 && d1[8] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl6_ == 1'b1 && d1[7] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl7_ == 1'b1 && d1[6] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl8_ == 1'b1 && d1[5] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl9_ == 1'b1 && d1[4] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl10_ == 1'b1 && d1[3] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl11_ == 1'b1 && d1[2] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl12_ == 1'b1 && d1[1] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		    else if(onl13_ == 1'b1 && d1[0] == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		  
		    else if(on2 == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		     else if(one == 1'b1&& (end_ == 1'b1))	//light yellow
		  begin
				Red = 8'h00;
            Green = 8'hff;
            Blue = 8'h00;
		  end
		  //back
		  else 
        begin 
            Red = 8'h00; 
            Green = 8'h00;
            //Blue = 8'h7f - DrawX[9:3];
				Blue = 8'h00;//ff;
        end      
    end 
    
endmodule
