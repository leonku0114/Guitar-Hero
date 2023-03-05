//------------------------------------------------------------------------------
// Company:          UIUC ECE Dept.
// Engineer:         Stephen Kempf
//
// Create Date:    17:44:03 10/08/06
// Design Name:    ECE 385 Lab 6 Given Code - Incomplete ISDU
// Module Name:    ISDU - Behavioral
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 02-13-2017
//    Spring 2017 Distribution
//------------------------------------------------------------------------------


module ISDU (   input logic         Clk, Reset, shift, space, one, two,

					
				  
				output logic    	
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
								
								end_, start_, start_1, starts
									
				);

	enum logic [9:0] {  
						Halted_start,
						Halted, 
						PauseIR1, 
						PauseIR2,
							
						S_1,
						S_2,
						S_3,
						S_4,
						S_5,
						S_6,
						S_7,
						S_8,
						S_9,
						S_10,
						S_11,
						S_12,
						S_13,
						S_14,
						S_15,
						S_16,
						S_17,
						S_18,
						S_19,
						S_20,
						S_21,
						S_22,
						S_23,
						S_24,
						S_25,
						S_26,
						S_27,
						S_28,
						S_29,
						S_30,
						S_31,
						S_32,
						S_33,
						S_34,
						S_35,
						S_36,
						S_37,
						S_38,
						S_39,
						S_40,
						S_41,
						S_42,
						S_43,
						S_44,
						S_45,
						S_46,
						S_47,
						S_48,
						S_49,
						S_50,
						S_51,
						S_52,
						S_53,
						S_54,
						S_55,
						S_56,
						S_57,
						S_58,
						S_59,
						S_60,
						S_61,
						S_62,
						S_63,
						S_64,
						S_65,
						S_66,
						S_67,
						S_68,
						S_69,
						S_70,
						S_71,
						S_72,
						S_73,
						S_74,
						S_75,
						S_76,
						S_77,
						S_78,
						S_79,
						S_80,
						S_81,
						S_82,
						wait1,
						wait2,
						wait3,
						wait4,
						wait5,
						wait6,
						wait7,
						wait8,
						wait9,
						wait10,
						wait11,
						wait12,
						wait13,
						wait14,
						wait15,
						S_1_2,
						S_2_2,
						S_3_2,
						S_4_2,
						S_5_2,
						S_6_2,
						S_7_2,
						S_8_2,
						S_9_2,
						S_10_2,
						S_11_2,
						S_12_2,
						S_13_2,
						S_14_2,
						S_15_2,
						S_16_2,
						S_17_2,
						S_18_2,
						S_19_2,
						S_20_2,
						S_21_2,
						S_22_2,
						S_23_2,
						S_24_2,
						S_25_2,
						S_26_2,
						S_27_2,
						S_28_2,
						S_29_2,
						S_30_2,
						S_31_2,
						S_32_2,
						S_33_2,
						S_34_2,
						S_35_2,
						S_36_2,
						S_37_2,
						S_38_2,
						S_39_2,
						S_40_2,
						S_41_2,
						S_42_2,
						S_43_2,
						S_44_2,
						S_45_2,
						S_46_2,
						S_47_2,
						S_48_2,
						S_49_2,
						S_50_2,
						S_51_2,
						S_52_2,
						S_53_2,
						S_54_2,
						S_55_2,
						S_56_2,
						S_57_2,
						S_58_2,
						S_59_2,
						S_60_2,
						S_61_2,
						S_62_2,
						S_63_2,
						S_64_2,
						S_65_2,
						S_66_2,
						S_67_2,
						S_68_2,
						S_69_2,
						S_70_2,
						S_71_2,
						S_72_2,
						S_73_2,
						S_74_2,
						S_75_2,
						S_76_2,
						S_77_2,
						S_78_2,
						S_79_2,
						S_80_2,
						S_81_2,
						S_82_2

						}   State, Next_state;   // Internal state logic
	
	
		
	
	
	
	always_ff @ (posedge Clk)
	begin
		if (Reset) 
			State <= Halted_start;// Halted;
		else 
			State <= Next_state;
	end
   
	always_comb
	begin 
		// Default next state is staying at current state
		Next_state = State;
		
		// Default controls signal values
		starts=1'b0;
		trigger1_1 = 1'b0; 
		trigger1_2 = 1'b0; 
		trigger1_3 = 1'b0; 
		trigger1_4 = 1'b0; 
		trigger1_5 = 1'b0; 
		trigger1_6 = 1'b0; 
		trigger1_7 = 1'b0;
		trigger1_8 = 1'b0; 
		trigger1_9 = 1'b0; 
		trigger1_10 = 1'b0; 
		trigger1_11 = 1'b0; 
		trigger1_12 = 1'b0; 
		trigger1_13 = 1'b0; 
		trigger1_14 = 1'b0;
		trigger1_15 = 1'b0; 
		trigger1_16 = 1'b0; 
		trigger1_17 = 1'b0;
		trigger1_18 = 1'b0; 
		trigger1_19 = 1'b0; 
		trigger1_20 = 1'b0;
		trigger2_1 = 1'b0; 
		trigger2_2 = 1'b0; 
		trigger2_3 = 1'b0; 
		trigger2_4 = 1'b0; 
		trigger2_5 = 1'b0; 
		trigger2_6 = 1'b0; 
		trigger2_7 = 1'b0;
		trigger2_8 = 1'b0; 
		trigger2_9 = 1'b0; 
		trigger2_10 = 1'b0; 
		trigger2_11 = 1'b0; 
		trigger2_12 = 1'b0; 
		trigger2_13 = 1'b0; 
		trigger2_14 = 1'b0;
		trigger2_15 = 1'b0; 
		trigger2_16 = 1'b0; 
		trigger2_17 = 1'b0;
		trigger2_18 = 1'b0; 
		trigger2_19 = 1'b0; 
		trigger2_20 = 1'b0;
		trigger3_1 = 1'b0; 
		trigger3_2 = 1'b0; 
		trigger3_3 = 1'b0; 
		trigger3_4 = 1'b0; 
		trigger3_5 = 1'b0; 
		trigger3_6 = 1'b0; 
		trigger3_7 = 1'b0;
		trigger3_8 = 1'b0; 
		trigger3_9 = 1'b0; 
		trigger3_10 = 1'b0; 
		trigger3_11 = 1'b0; 
		trigger3_12 = 1'b0; 
		trigger3_13 = 1'b0; 
		trigger3_14 = 1'b0;
		trigger3_15 = 1'b0; 
		trigger3_16 = 1'b0; 
		trigger3_17 = 1'b0;
		trigger3_18 = 1'b0; 
		trigger3_19 = 1'b0; 
		trigger3_20 = 1'b0;
		trigger4_1 = 1'b0; 
		trigger4_2 = 1'b0; 
		trigger4_3 = 1'b0; 
		trigger4_4 = 1'b0; 
		trigger4_5 = 1'b0; 
		trigger4_6 = 1'b0; 
		trigger4_7 = 1'b0;
		trigger4_8 = 1'b0; 
		trigger4_9 = 1'b0; 
		trigger4_10 = 1'b0; 
		trigger4_11 = 1'b0; 
		trigger4_12 = 1'b0; 
		trigger4_13 = 1'b0; 
		trigger4_14 = 1'b0;
		trigger4_15 = 1'b0; 
		trigger4_16 = 1'b0; 
		trigger4_17 = 1'b0;
		trigger4_18 = 1'b0; 
		trigger4_19 = 1'b0; 
		trigger4_20 = 1'b0;
		end_ = 1'b0;
		start_ = 1'b0;
		start_1=1'b0;
		
		// Assign next state
		unique case (State)
			Halted_start:
			 Next_state=Halted;
			Halted : 
				if(one)
					Next_state = S_1;
				
				else if(two)
					Next_state = S_1_2;
					
				
			// PauseIR1 and PauseIR2 are only for Week 1 such that TAs can see 
			// the values in IR.
			PauseIR1 : 
				if (~space) 
					Next_state = PauseIR1;
				else 
					Next_state = PauseIR2;
			PauseIR2 : 
				if (space) 
					Next_state = PauseIR2;							//pause state
				else 
					Next_state = Halted;
			
			
			
			//first song
			S_1 : 
				if(shift )
					Next_state = S_2;
//				else
//					Next_state = S_1;
			S_2 : 
				if(shift )
					Next_state = S_3;
//				else
//					Next_state = S_2;
			
			S_3:
			   if(shift )
					Next_state = S_4;
//				else
//					Next_state = S_3;
//				
			S_4 : 
				if(shift )
					Next_state = S_5;
//				else
//					Next_state = S_4;
				
			S_5 : 
				if(shift )
					Next_state = S_6;
//				else
//					Next_state = S_5;
				
			S_6 : 
				if(shift )
					Next_state = S_7;
//				else
//					Next_state = S_6;
				
			S_7 : 
				if(shift)
					Next_state = S_8;
//				else
//					Next_state = S_7;
				
			S_8 : 
				if(shift )
					Next_state = S_9;
//				else
//					Next_state = S_8;
			
			S_9 : 
				if(shift)
					Next_state = S_10;
//				else
//					Next_state = S_9;
				
			S_10 : 
				if(shift)
					Next_state = S_11;
//				else
//					Next_state = S_10;
			
			S_11 : 
				if(shift)
					Next_state = S_12;
//				else
//					Next_state = S_11;
			
			S_12 : 
				if(shift)
					Next_state = S_13;
//				else
//					Next_state = S_12;
			
			S_13 : 
				if(shift)
					Next_state = S_14;
//				else
//					Next_state = S_13;
				
			S_14 : 
				if(shift)
					Next_state = S_15;
//				else
//					Next_state = S_14;
			
			S_15 : 
				if(shift)
					Next_state = S_16;
//				else
//					Next_state = S_15;
			
			S_16 : 
				if(shift)
					Next_state = S_17;
//				else
//					Next_state = S_16;
			
			S_17 : 
				if(shift)
					Next_state = S_18;
//				else
//					Next_state = S_17;
			
			S_18 : 
				if(shift)
					Next_state = S_19;
//				else
//					Next_state = S_18;
			
			S_19 : 
				if(shift)
					Next_state = S_20;
//				else
//					Next_state = S_19;
			
			S_20 : 
				if(shift)
					Next_state = S_21;
//				else
//					Next_state = S_20;
					
			S_21 : 
				if(shift)
					Next_state = S_22;
//				else
//					Next_state = S_21;
			
			S_22 : 
				if(shift)
					Next_state = S_23;
//				else
//					Next_state = S_22;
					
			S_23 : 
				if(shift)
					Next_state = S_24;
//				else
//					Next_state = S_23;
			
			S_24 : 
				if(shift)
					Next_state = S_25;
//				else
//					Next_state = S_24;
			
			S_25 : 
				if(shift)
					Next_state = S_26;
//				else
//					Next_state = S_25;
					
			S_26 : 
				if(shift)
					Next_state = S_27;
//				else
//					Next_state = S_26;
					
			S_27 : 
				if(shift)
					Next_state = S_28;
//				else
//					Next_state = S_27;
			
			S_28 : 
				if(shift)
					Next_state = S_29;
//				else
//					Next_state = S_28;
			
			S_29 : 
				if(shift)
					Next_state = S_30;
//				else
//					Next_state = S_29;
					
			S_30 : 
				if(shift)
					Next_state = S_31;
//				else
//					Next_state = S_30;
					
			S_31 : 
				if(shift)
					Next_state = S_32;
//				else
//					Next_state = S_31;
			
			S_32 : 
				if(shift)
					Next_state = S_33;
//				else
//					Next_state = S_32;
			
			S_33 : 
				if(shift)
					Next_state = S_34;
//				else
//					Next_state = S_33;
					
			S_34 : 
				if(shift)
					Next_state = S_35;
//				else
//					Next_state = S_34;
					
			S_35 : 
				if(shift)
					Next_state = S_36;
//				else
//					Next_state = S_35;
					
			S_36 : 
				if(shift)
					Next_state = S_37;
//				else
//					Next_state = S_36;
			
			S_37 : 
				if(shift)
					Next_state = S_38;
//				else
//					Next_state = S_37;
			
			S_38 : 
				if(shift)
					Next_state = S_39;
//				else
//					Next_state = S_38;
					
			S_39 : 
				if(shift)
					Next_state = S_40;
//				else
//					Next_state = S_39;
					
			S_40 : 
				if(shift)
					Next_state = S_41;
//				else
//					Next_state = S_40;
					
			S_41 : 
				if(shift)
					Next_state = S_42;
//				else
//					Next_state = S_41;
					
			S_42 : 
				if(shift)
					Next_state = S_43;
//				else
//					Next_state = S_42;
					
			S_43 : 
				if(shift)
					Next_state = S_44;
//				else
//					Next_state = S_43;
			
			S_44 : 
				if(shift)
					Next_state = S_45;
//				else
//					Next_state = S_44;
			
			S_45 : 
				if(shift)
					Next_state = S_46;
//				else
//					Next_state = S_45;
//			
			S_46 : 
				if(shift)
					Next_state = S_47;
//				else
//					Next_state = S_46;
			
			S_47 : 
				if(shift)
					Next_state = S_48;
//				else
//					Next_state = S_47;
				
			S_48 : 
				if(shift)
					Next_state = S_49;
//				else
//					Next_state = S_48;
			
			S_49 : 
				if(shift)
					Next_state = S_50;
//				else
//					Next_state = S_49;
			
			S_50 : 
				if(shift)
					Next_state = S_51;
//				else
//					Next_state = S_50;
					
			S_51 : 
				if(shift)
					Next_state = S_52;
//				else
//					Next_state = S_51;
					
			S_52 : 
				if(shift)
					Next_state = S_53;
//				else
//					Next_state = S_52;
			
			S_53 : 
				if(shift)
					Next_state = S_54;
//				else
//					Next_state = S_53;
			
			S_54 : 
				if(shift)
					Next_state = S_55;
//				else
//					Next_state = S_54;
			
			S_55 : 
				if(shift)
					Next_state = S_56;
//				else
//					Next_state = S_55;
					
			S_56 : 
				if(shift)
					Next_state = S_57;
//				else
//					Next_state = S_56;
			
			S_57 : 
				if(shift)
					Next_state = S_58;
//				else
//					Next_state = S_57;
					
			S_58 : 
				if(shift)
					Next_state = S_59;
//				else
//					Next_state = S_58;
			
			S_59 : 
				if(shift)
					Next_state = S_60;
//				else
//					Next_state = S_59;
			
			S_60 : 
				if(shift)
					Next_state = S_61;
//				else
//					Next_state = S_60;
					
			S_61 : 
				if(shift)
					Next_state = S_62;
//				else
//					Next_state = S_61;
			
			S_62 : 
				if(shift)
					Next_state = S_63;
//				else
//					Next_state = S_62;
			
			S_63 : 
				if(shift)
					Next_state = S_64;
//				else
//					Next_state = S_63;
			
			S_64 : 
				if(shift)
					Next_state = S_65;
//				else
//					Next_state = S_64;
			
			S_65 : 
				if(shift)
					Next_state = S_66;
//				else
//					Next_state = S_65;
			
			S_66 : 
				if(shift)
					Next_state = S_67;
//				else
//					Next_state = S_66;
			
			S_67 : 
				if(shift)
					Next_state = S_68;
//				else
//					Next_state = S_67;
			
			S_68 : 
				if(shift)
					Next_state = S_69;
//				else
//					Next_state = S_68;
			
			S_69 : 
				if(shift)
					Next_state = S_70;
//				else
//					Next_state = S_69;
			
			S_70 : 
				if(shift)
					Next_state = S_71;
//				else
//					Next_state = S_70;
			
			S_71 : 
				if(shift)
					Next_state = S_72;
//				else
//					Next_state = S_71;
					
			S_72 : 
				if(shift)
					Next_state = S_73;
//				else
//					Next_state = S_72;
			
			S_73 : 
				if(shift)
					Next_state = S_74;
//				else
//					Next_state = S_73;
			
			S_74 : 
				if(shift)
					Next_state = S_75;
//				else
//					Next_state = S_74;
			
			S_75 : 
				if(shift)
					Next_state = S_76;
//				else
//					Next_state = S_75;
			
			S_76 : 
				if(shift)
					Next_state = S_77;
//				else
//					Next_state = S_76;
			
			S_77 : 
				if(shift)
					Next_state = S_78;
//				else
//					Next_state = S_77;
			
			S_78 : 
				if(shift)
					Next_state = S_79;
//				else
//					Next_state = S_78;
			
			S_79 : 
				if(shift)
					Next_state = S_80;
//				else
//					Next_state = S_79;
					
			S_80 : 
				if(shift)
					Next_state = S_81;
			
			S_81 : 
				if(shift)
					Next_state = S_82;
			
			S_82 : 
				if(shift)
					Next_state = wait1;
			
			
			
			
			
			//second song
			
			S_1_2 : 
				if(shift )
					Next_state = S_2_2 ;
//				else
//					Next_state = S_1_2 ;
			S_2_2 : 
				if(shift )
					Next_state = S_3_2 ;
//				else
//					Next_state = S_2_2 ;
			
			S_3_2 :
			   if(shift )
					Next_state = S_4_2 ;
//				else
//					Next_state = S_3_2 ;
//				
			S_4_2 : 
				if(shift )
					Next_state = S_5_2 ;
//				else
//					Next_state = S_4_2 ;
				
			S_5_2 : 
				if(shift )
					Next_state = S_6_2 ;
//				else
//					Next_state = S_5_2 ;
				
			S_6_2 : 
				if(shift )
					Next_state = S_7_2 ;
//				else
//					Next_state = S_6_2 ;
				
			S_7_2 : 
				if(shift)
					Next_state = S_8_2 ;
//				else
//					Next_state = S_7_2 ;
				
			S_8_2 : 
				if(shift )
					Next_state = S_9_2 ;
//				else
//					Next_state = S_8_2 ;
			
			S_9_2 : 
				if(shift)
					Next_state = S_10_2 ;
//				else
//					Next_state = S_9_2 ;
				
			S_10_2 : 
				if(shift)
					Next_state = S_11_2 ;
//				else
//					Next_state = S_10_2 ;
			
			S_11_2 : 
				if(shift)
					Next_state = S_12_2 ;
//				else
//					Next_state = S_11_2 ;
			
			S_12_2 : 
				if(shift)
					Next_state = S_13_2 ;
//				else
//					Next_state = S_12_2 ;
			
			S_13_2 : 
				if(shift)
					Next_state = S_14_2 ;
//				else
//					Next_state = S_13_2 ;
				
			S_14_2 : 
				if(shift)
					Next_state = S_15_2 ;
//				else
//					Next_state = S_14_2 ;
			
			S_15_2 : 
				if(shift)
					Next_state = S_16_2 ;
//				else
//					Next_state = S_15_2 ;
			
			S_16_2 : 
				if(shift)
					Next_state = S_17_2 ;
//				else
//					Next_state = S_16_2 ;
			
			S_17_2 : 
				if(shift)
					Next_state = S_18_2 ;
//				else
//					Next_state = S_17_2 ;
			
			S_18_2 : 
				if(shift)
					Next_state = S_19_2 ;
//				else
//					Next_state = S_18_2 ;
			
			S_19_2 : 
				if(shift)
					Next_state = S_20_2 ;
//				else
//					Next_state = S_19_2 ;
			
			S_20_2 : 
				if(shift)
					Next_state = S_21_2 ;
//				else
//					Next_state = S_20_2 ;
					
			S_21_2 : 
				if(shift)
					Next_state = S_22_2 ;
//				else
//					Next_state = S_21_2 ;
			
			S_22_2 : 
				if(shift)
					Next_state = S_23_2 ;
//				else
//					Next_state = S_22_2 ;
					
			S_23_2 : 
				if(shift)
					Next_state = S_24_2 ;
//				else
//					Next_state = S_23_2 ;
			
			S_24_2 : 
				if(shift)
					Next_state = S_25_2 ;
//				else
//					Next_state = S_24_2 ;
			
			S_25_2 : 
				if(shift)
					Next_state = S_26_2 ;
//				else
//					Next_state = S_25_2 ;
					
			S_26_2 : 
				if(shift)
					Next_state = S_27_2 ;
//				else
//					Next_state = S_26_2 ;
					
			S_27_2 : 
				if(shift)
					Next_state = S_28_2 ;
//				else
//					Next_state = S_27_2 ;
			
			S_28_2 : 
				if(shift)
					Next_state = S_29_2 ;
//				else
//					Next_state = S_28_2 ;
			
			S_29_2 : 
				if(shift)
					Next_state = S_30_2 ;
//				else
//					Next_state = S_29_2 ;
					
			S_30_2 : 
				if(shift)
					Next_state = S_31_2 ;
//				else
//					Next_state = S_30_2 ;
					
			S_31_2 : 
				if(shift)
					Next_state = S_32_2 ;
//				else
//					Next_state = S_31_2 ;
			
			S_32_2 : 
				if(shift)
					Next_state = S_33_2 ;
//				else
//					Next_state = S_32_2 ;
			
			S_33_2 : 
				if(shift)
					Next_state = S_34_2 ;
//				else
//					Next_state = S_33_2 ;
					
			S_34_2 : 
				if(shift)
					Next_state = S_35_2 ;
//				else
//					Next_state = S_34_2 ;
					
			S_35_2 : 
				if(shift)
					Next_state = S_36_2 ;
//				else
//					Next_state = S_35_2 ;
					
			S_36_2 : 
				if(shift)
					Next_state = S_37_2 ;
//				else
//					Next_state = S_36_2 ;
			
			S_37_2 : 
				if(shift)
					Next_state = S_38_2 ;
//				else
//					Next_state = S_37_2 ;
			
			S_38_2 : 
				if(shift)
					Next_state = S_39_2 ;
//				else
//					Next_state = S_38_2 ;
					
			S_39_2 : 
				if(shift)
					Next_state = S_40_2 ;
//				else
//					Next_state = S_39_2 ;
					
			S_40_2 : 
				if(shift)
					Next_state = S_41_2 ;
//				else
//					Next_state = S_40_2 ;
					
			S_41_2 : 
				if(shift)
					Next_state = S_42_2 ;
//				else
//					Next_state = S_41_2 ;
					
			S_42_2 : 
				if(shift)
					Next_state = S_43_2 ;
//				else
//					Next_state = S_42_2 ;
					
			S_43_2 : 
				if(shift)
					Next_state = S_44_2 ;
//				else
//					Next_state = S_43_2 ;
			
			S_44_2 : 
				if(shift)
					Next_state = S_45_2 ;
//				else
//					Next_state = S_44_2 ;
			
			S_45_2 : 
				if(shift)
					Next_state = S_46_2 ;
//				else
//					Next_state = S_45_2 ;
//			
			S_46_2 : 
				if(shift)
					Next_state = S_47_2 ;
//				else
//					Next_state = S_46_2 ;
			
			S_47_2 : 
				if(shift)
					Next_state = S_48_2 ;
//				else
//					Next_state = S_47_2 ;
				
			S_48_2 : 
				if(shift)
					Next_state = S_49_2 ;
//				else
//					Next_state = S_48_2 ;
			
			S_49_2 : 
				if(shift)
					Next_state = S_50_2 ;
//				else
//					Next_state = S_49_2 ;
			
			S_50_2 : 
				if(shift)
					Next_state = S_51_2 ;
//				else
//					Next_state = S_50_2 ;
					
			S_51_2 : 
				if(shift)
					Next_state = S_52_2 ;
//				else
//					Next_state = S_51_2 ;
					
			S_52_2 : 
				if(shift)
					Next_state = S_53_2 ;
//				else
//					Next_state = S_52_2 ;
			
			S_53_2 : 
				if(shift)
					Next_state = S_54_2 ;
//				else
//					Next_state = S_53_2 ;
			
			S_54_2 : 
				if(shift)
					Next_state = S_55_2 ;
//				else
//					Next_state = S_54_2 ;
			
			S_55_2 : 
				if(shift)
					Next_state = S_56_2 ;
//				else
//					Next_state = S_55_2 ;
					
			S_56_2 : 
				if(shift)
					Next_state = S_57_2 ;
//				else
//					Next_state = S_56_2 ;
			
			S_57_2 : 
				if(shift)
					Next_state = S_58_2 ;
//				else
//					Next_state = S_57_2 ;
					
			S_58_2 : 
				if(shift)
					Next_state = S_59_2 ;
//				else
//					Next_state = S_58_2 ;
			
			S_59_2 : 
				if(shift)
					Next_state = S_60_2 ;
//				else
//					Next_state = S_59_2 ;
			
			S_60_2 : 
				if(shift)
					Next_state = S_61_2 ;
//				else
//					Next_state = S_60_2 ;
					
			S_61_2 : 
				if(shift)
					Next_state = S_62_2 ;
//				else
//					Next_state = S_61_2 ;
			
			S_62_2 : 
				if(shift)
					Next_state = S_63_2 ;
//				else
//					Next_state = S_62_2 ;
			
			S_63_2 : 
				if(shift)
					Next_state = S_64_2 ;
//				else
//					Next_state = S_63_2 ;
			
			S_64_2 : 
				if(shift)
					Next_state = S_65_2 ;
//				else
//					Next_state = S_64_2 ;
			
			S_65_2 : 
				if(shift)
					Next_state = S_66_2 ;
//				else
//					Next_state = S_65_2 ;
			
			S_66_2 : 
				if(shift)
					Next_state = S_67_2 ;
//				else
//					Next_state = S_66_2 ;
			
			S_67_2 : 
				if(shift)
					Next_state = S_68_2 ;
//				else
//					Next_state = S_67_2 ;
			
			S_68_2 : 
				if(shift)
					Next_state = S_69_2 ;
//				else
//					Next_state = S_68_2 ;
			
			S_69_2 : 
				if(shift)
					Next_state = S_70_2 ;
//				else
//					Next_state = S_69_2 ;
			
			S_70_2 : 
				if(shift)
					Next_state = S_71_2 ;
//				else
//					Next_state = S_70_2 ;
			
			S_71_2 : 
				if(shift)
					Next_state = S_72_2 ;
//				else
//					Next_state = S_71_2 ;
					
			S_72_2 : 
				if(shift)
					Next_state = S_73_2 ;
//				else
//					Next_state = S_72_2 ;
			
			S_73_2 : 
				if(shift)
					Next_state = S_74_2 ;
//				else
//					Next_state = S_73_2 ;
			
			S_74_2 : 
				if(shift)
					Next_state = S_75_2 ;
//				else
//					Next_state = S_74_2 ;
			
			S_75_2 : 
				if(shift)
					Next_state = S_76_2 ;
//				else
//					Next_state = S_75_2 ;
			
			S_76_2 : 
				if(shift)
					Next_state = S_77_2 ;
//				else
//					Next_state = S_76_2 ;
			
			S_77_2 : 
				if(shift)
					Next_state = S_78_2 ;
//				else
//					Next_state = S_77_2 ;
			
			S_78_2 : 
				if(shift)
					Next_state = S_79_2 ;
//				else
//					Next_state = S_78_2 ;
			
			S_79_2 : 
				if(shift)
					Next_state = S_80_2 ;
//				else
//					Next_state = S_79_2 ;
					
			S_80_2 : 
				if(shift)
					Next_state = S_81_2 ;
			
			S_81_2 : 
				if(shift)
					Next_state = S_82_2 ;
			
			S_82_2 : 
				if(shift)
					Next_state = wait1;
					
			wait1 : 
				if(shift)
					Next_state = wait2;
			
			wait2 : 
				if(shift)
					Next_state = wait3;
			
			wait3 : 
				if(shift)
					Next_state = wait4;
			
			wait4 : 
				if(shift)
					Next_state = wait5;
					
			wait5 : 
				if(shift)
					Next_state = wait6;
			
			wait6 : 
				if(shift)
					Next_state = wait7;
					
			wait7 : 
				if(shift)
					Next_state = wait8;
					
			wait8 : 
				if(shift)
					Next_state = wait9;
			
			wait9 : 
				if(shift)
					Next_state = wait10;
			
			wait10 : 
				if(shift)
					Next_state = wait11;
			
			wait11 : 
				if(shift)
					Next_state = wait12;
			
			wait12 : 
				if(shift)
					Next_state = wait13;
					
			wait13 : 
				if(shift)
					Next_state = wait14;
			
			wait14 : 
				if(shift)
					Next_state = wait15;
					
			wait15 : 
				if(shift)
					Next_state = PauseIR1;
//				else
//					Next_state = S_80;
			// You need to finish the rest of states.....

			default : ;

		endcase
		
		// Assign control signals based on current state
		case (State)
		Halted_start: starts=1'b1;
						Halted: 
							start_1 = 1'b1;
						wait1: start_1 = 1'b0 ;
						wait2:  start_1 = 1'b0;
						wait3: start_1 = 1'b0 ;
						wait4: start_1 = 1'b0 ;
						wait5: start_1 = 1'b0 ;
						wait6: start_1 = 1'b0 ;
						wait7: start_1 = 1'b0 ;
						wait8: start_1 = 1'b0 ;
						wait9: start_1 = 1'b0 ;
						wait10: start_1 = 1'b0 ;
						wait11: start_1 = 1'b0 ;
						wait12: start_1 = 1'b0 ;
						wait13: start_1 = 1'b0 ;
						wait14: start_1 = 1'b0 ;
						wait15: start_1 = 1'b0 ;
						PauseIR1:
							end_ = 1'b1; 
						PauseIR2: end_=1'b1; // added for last screen after space press where bars come back 
						
						
						
						//first song
						S_1: 
							begin
								trigger1_1 = 1'b1;
								start_ = 1'b1;
							end
						S_2:
							trigger2_1 = 1'b1;
						S_3:
							trigger3_1 = 1'b1;
						S_4:
							trigger4_1 = 1'b1;
						S_5:
							trigger1_2 = 1'b1;
						S_6:
							trigger2_2 = 1'b1;
						S_7:
							trigger3_2 = 1'b1;
						S_8:
							trigger4_2 = 1'b1;
						S_9:
							trigger1_3 = 1'b1;
						S_10:
							trigger2_3 = 1'b1;
						S_11:
							trigger3_3 = 1'b1;
						S_12:
							trigger4_3 = 1'b1;
						S_13:
							trigger1_4 = 1'b1;
						S_14:
							trigger2_4 = 1'b1;
						S_15:
							trigger3_4 = 1'b1;
						S_16:
							trigger4_4 = 1'b1;
						S_17:
							trigger1_5 = 1'b1;
						S_18:
							trigger2_5 = 1'b1;
						S_19:
							trigger3_5 = 1'b1;
						S_20:
							trigger4_5 = 1'b1;
						S_21:
							trigger1_6 = 1'b1;
						S_22:
							trigger2_6 = 1'b1;
						S_23:
							trigger3_6 = 1'b1;
						S_24:
							trigger4_6 = 1'b1;
						S_25:
							trigger1_7 = 1'b1;
						S_26:
							trigger2_7 = 1'b1;
						S_27:
							trigger3_7 = 1'b1;
						S_28:
							trigger4_7 = 1'b1;
						S_29:
							trigger1_8 = 1'b1;
						S_30:
							trigger2_8 = 1'b1;
						S_31:
							trigger3_8 = 1'b1;
						S_32:
							trigger4_8 = 1'b1;
						S_33:
							trigger1_9 = 1'b1;
						S_34:
							trigger2_9 = 1'b1;
						S_35:
							trigger3_9 = 1'b1;
						S_36:
							trigger4_9 = 1'b1;
						S_37:
							trigger1_10 = 1'b1;
						S_38:
							trigger2_10 = 1'b1;
						S_39:
							trigger3_10 = 1'b1;
						S_40:
							trigger4_10 = 1'b1;
						S_41:
							trigger1_11 = 1'b1;
						S_42:
							trigger2_11 = 1'b1;
						S_43:
							trigger3_11 = 1'b1;
						S_44:
							trigger4_11 = 1'b1;
						S_45:
							trigger1_12 = 1'b1;
						S_46:
							trigger2_12 = 1'b1;
						S_47:
							trigger3_12 = 1'b1;
						S_48:
							trigger4_12 = 1'b1;
						S_49:
							trigger1_13 = 1'b1;
						S_50:
							trigger2_13 = 1'b1;
						S_51:
							trigger3_13 = 1'b1;
						S_52:
							trigger4_13 = 1'b1;
						S_53:
							trigger1_14 = 1'b1;
						S_54:
							trigger2_14 = 1'b1;
						S_55:
							trigger3_14 = 1'b1;
						S_56:
							trigger4_14 = 1'b1;
						S_57:
							trigger1_15 = 1'b1;
						S_58:
							trigger2_15 = 1'b1;
						S_59:
							trigger3_15 = 1'b1;
						S_60:
							trigger4_15 = 1'b1;
						S_61:
							trigger1_16 = 1'b1;
						S_62:
							trigger2_16 = 1'b1;
						S_63:
							trigger3_16 = 1'b1;
						S_64:
							trigger4_16 = 1'b1;
						S_65:
							trigger1_17 = 1'b1;
						S_66:
							trigger2_17 = 1'b1;
						S_67:
							trigger3_17 = 1'b1;
						S_68:
							trigger4_17 = 1'b1;
						S_69:
							trigger1_18 = 1'b1;
						S_70:	
							trigger2_18 = 1'b1;
						S_71:
							trigger3_18 = 1'b1;
						S_72:
							trigger4_18 = 1'b1;
						S_73:
							trigger1_19 = 1'b1;
						S_74:
							trigger2_19 = 1'b1;
						S_75:
							trigger3_19 = 1'b1;
						S_76:
							trigger4_19 = 1'b1;
						S_77:
							trigger1_20 = 1'b1;
						S_78:
							trigger2_20 = 1'b1;
						S_79:
							trigger3_20 = 1'b1;
						S_80:
							trigger4_20 = 1'b1;
						S_81:
							trigger1_1 = 1'b1;
						S_82:
							trigger2_1 = 1'b1;
							
						
						
						//second song
						S_1_2 :
							begin
								trigger2_1	= 1'b1;
								start_ = 1'b1;
							end
						S_2_2 :
							trigger2_2	= 1'b1;
						S_3_2 :
							trigger3_1	= 1'b1;
						S_4_2 :
							trigger3_2	= 1'b1;
						S_5_2 :
							trigger1_1	= 1'b1;
						S_6_2 :
							trigger2_3	= 1'b1;
						S_7_2 :
							trigger3_3	= 1'b1;
						S_8_2 :
							trigger4_1	= 1'b1;
						S_9_2 :
							trigger1_2	= 1'b1;
						S_10_2 :
							trigger1_3	= 1'b1;
						S_11_2 :
							trigger4_2	= 1'b1;
						S_12_2 :
							trigger4_3	= 1'b1;
						S_13_2 :
							trigger4_4	= 1'b1;
						S_14_2 :
							trigger3_4	= 1'b1;
						S_15_2 :
							trigger2_4	= 1'b1;
						S_16_2 :
							trigger1_4	= 1'b1;
						S_17_2 :
													;
						S_18_2 :
													;
						S_19_2 :
													;
						S_20_2 :
							trigger1_5	= 1'b1;
						S_21_2 :
							trigger1_6	= 1'b1;
						S_22_2 :
							trigger1_7	= 1'b1;
						S_23_2 :
							trigger1_8	= 1'b1;
						S_24_2 :
													;
						S_25_2 :
							trigger3_5	= 1'b1;
						S_26_2 :
							trigger3_6	= 1'b1;
						S_27_2 :
													;
						S_28_2 :
							trigger2_5	= 1'b1;
						S_29_2 :
													;
						S_30_2 :
							trigger2_6	= 1'b1;
						S_31_2 :
							trigger4_5	= 1'b1;
						S_32_2 :
							trigger4_6	= 1'b1;
						S_33_2 :
													;
						S_34_2 :
							trigger2_7	= 1'b1;
						S_35_2 :
							trigger2_8	= 1'b1;
						S_36_2 :
							trigger2_9	= 1'b1;
						S_37_2 :
													;
						S_38_2 :
													;
						S_39_2 :
							trigger4_7	= 1'b1;
						S_40_2 :
							trigger1_9	= 1'b1;
						S_41_2 :
							trigger4_8	= 1'b1;
						S_42_2 :
							trigger1_10	= 1'b1;
						S_43_2 :
							trigger4_9	= 1'b1;
						S_44_2 :
							trigger1_11	= 1'b1;
						S_45_2 :
							trigger4_10	= 1'b1;
						S_46_2 :
							trigger1_12	= 1'b1;
						S_47_2 :
							trigger2_10	= 1'b1;
						S_48_2 :
							trigger2_11	= 1'b1;
						S_49_2 :
							trigger3_7	= 1'b1;
						S_50_2 :
							trigger3_8	= 1'b1;
						S_51_2 :
							trigger4_11	= 1'b1;
						S_52_2 :
							trigger3_9	= 1'b1;
						S_53_2 :
							trigger3_10	= 1'b1;
						S_54_2 :
													;
						S_55_2 :
													;
						S_56_2 :
							trigger2_12	= 1'b1;
						S_57_2 :
							trigger3_11	= 1'b1;
						S_58_2 :
							trigger4_12	= 1'b1;
						S_59_2 :
							trigger3_12	= 1'b1;
						S_60_2 :
													;
						S_61_2 :
													;
						S_62_2 :
							trigger4_13	= 1'b1;
						S_63_2 :
													;
						S_64_2 :
							trigger3_13	= 1'b1;
						S_65_2 :
													;
						S_66_2 :
							trigger2_13	= 1'b1;
						S_67_2 :
													;
						S_68_2 :
							trigger1_13	= 1'b1;
						S_69_2 :
							trigger4_14	= 1'b1;
						S_70_2 :
							trigger4_15	= 1'b1;
						S_71_2 :
							trigger4_16	= 1'b1;
						S_72_2 :
							trigger4_17	= 1'b1;
						S_73_2 :
							trigger2_14	= 1'b1;
						S_74_2 :
							trigger1_14	= 1'b1;
						S_75_2 :
							trigger3_14	= 1'b1;
						S_76_2 :
							trigger1_15	= 1'b1;
						S_77_2 :
							trigger3_15	= 1'b1;
						S_78_2 :
							trigger1_16	= 1'b1;
						S_79_2 :
							trigger1_17	= 1'b1;
						S_80_2 :
							trigger1_18	= 1'b1;
						S_81_2 :
							trigger3_16	= 1'b1;
						S_82_2 :
							trigger3_17	= 1'b1;

			// You need to finish the rest of states.....

			default : ;
		endcase
	end 

	
endmodule
