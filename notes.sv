//-------------------------------------------------------------------------
//    note.sv                                                            --
//    Viral Mehta                                                        --
//    Spring 2005                                                        --
//                                                                       --
//    Modified by Stephen Kempf 03-01-2006                               --
//                              03-12-2007                               --
//    Translated by Joe Meng    07-07-2013                               --
//    Fall 2014 Distribution                                             --
//                                                                       --
//    For use with ECE 298 Lab 7                                         --
//    UIUC ECE Department                                                --
//-------------------------------------------------------------------------


module  note1 ( input frame_clk, Clk, Reset, 
					input [9:0] note_X_Center,
//					input [19:0] trigger1,
					input		trigger1_1, trigger1_2, trigger1_3, trigger1_4, trigger1_5, trigger1_6, trigger1_7,
								trigger1_8, trigger1_9, trigger1_10, trigger1_11, trigger1_12, trigger1_13, trigger1_14,
								trigger1_15, trigger1_16, trigger1_17, trigger1_18, trigger1_19, trigger1_20,
					
               output [9:0]  noteX1, noteX2, noteX3, noteX4, noteX5, noteX6, noteX7, noteX8, noteX9, noteX10, 
									  noteX11, noteX12, noteX13, noteX14, noteX15, noteX16, noteX17, noteX18, noteX19, noteX20,
									  
									  noteY1, noteY2, noteY3, noteY4, noteY5, noteY6, noteY7, noteY8, noteY9, noteY10,
									  noteY11, noteY12, noteY13, noteY14, noteY15, noteY16, noteY17, noteY18, noteY19, noteY20
									  
									  
									  );
    
    logic [9:0] //note_X_Pos1, //note_X_Pos2, //note_X_Pos3, //note_X_Pos4, //note_X_Pos5, //note_X_Pos6,//note_X_Pos7, //note_X_Pos8, //note_X_Pos9, //note_X_Pos10, //note_X_Pos11, //note_X_Pos12, //note_X_Pos13, //note_X_Pos14,
					 //note_X_Pos15, //note_X_Pos16, //note_X_Pos17, //note_X_Pos18, //note_X_Pos19, //note_X_Pos20,
					 
					 note_Y_Pos1, note_Y_Pos2, note_Y_Pos3, note_Y_Pos4, note_Y_Pos5, note_Y_Pos6,note_Y_Pos7, note_Y_Pos8, note_Y_Pos9, note_Y_Pos10, note_Y_Pos11, note_Y_Pos12, note_Y_Pos13, note_Y_Pos14,
					 note_Y_Pos15, note_Y_Pos16, note_Y_Pos17, note_Y_Pos18, note_Y_Pos19, note_Y_Pos20,
					 
					 note_Y_Motion;
					 
	 logic 		 r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20;
	 
	//assinote_X_Center = 161;  // 161!!!!!!!!

	 
	 
    parameter [9:0] note_Y_Center=0;  // Center position on the Y axis
	 
//    parameter [9:0] note_X_Min=0;       // Leftmost point on the X axis
//    parameter [9:0] note_X_Max=639;     // Rightmost point on the X axis
//    parameter [9:0] note_Y_Min=0;       // Topmost point on the Y axis
		parameter [9:0] note_Y_Max=479;     // Bottommost point on the Y axis
//    parameter [9:0] note_X_Step=5;      // Step size on the X axis
//    parameter [9:0] note_Y_Step=5;      // Step size on the Y axis

    //assign note_Size = 13;  // assigns the value 4 as a 10-digit binary number, ie "0000000100"
   
	 assign note_Y_Motion = 5;  //head down
	 
//	 event a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t;
//	 
//	 initial begin
//		fork
//		#50000000 ->a;
//		#100000000 ->b;
//		#150000000 ->c;
//		#200000000 ->d;
//		#250000000 ->e;
//		#300000000 ->f;
//		#350000000 ->g;
//		#400000000 ->h;
//		#450000000 ->i;
//		#500000000 ->j;
//		#550000000 ->k;
//		#600000000 ->l;
//		#650000000 ->m;
//		#700000000 ->n;
//		#750000000 ->o;
//		#800000000 ->p;
//		#850000000 ->r;
//		#900000000 ->s;
//		#1000000000 ->t;
//	 end
	 
	 always_ff @ (posedge Clk)
	 begin
		
		if(trigger1_1)
			begin
				r1 <= 1'b1;
			end
		else if(note_Y_Pos1 >= note_Y_Max)
			begin
				r1 <= 1'b0;
			end
		
		if(trigger1_2)
			begin
				r2 <= 1'b1;
			end
		else if(note_Y_Pos2 >= note_Y_Max)
			begin
				r2 <= 1'b0;
			end
		
		if(trigger1_3)
			begin
				r3 <= 1'b1;
			end
		else if(note_Y_Pos3 >= note_Y_Max)
			begin
				r3 <= 1'b0;
			end
		
		if(trigger1_4)
			begin
				r4 <= 1'b1;
			end
		else if(note_Y_Pos4 >= note_Y_Max)
			begin
				r4 <= 1'b0;
			end
		
		if(trigger1_5)
			begin
				r5 <= 1'b1;
			end
		else if(note_Y_Pos5 >= note_Y_Max)
			begin
				r5 <= 1'b0;
			end
		
		if(trigger1_6)
			begin
				r6 <= 1'b1;
			end
		else if(note_Y_Pos6 >= note_Y_Max)
			begin
				r6 <= 1'b0;
			end
		
		if(trigger1_7)
			begin
				r7 <= 1'b1;
			end
		else if(note_Y_Pos7 >= note_Y_Max)
			begin
				r7 <= 1'b0;
			end
		
		if(trigger1_8)
			begin
				r8 <= 1'b1;
			end
		else if(note_Y_Pos8 >= note_Y_Max)
			begin
				r8 <= 1'b0;
			end
		
		if(trigger1_9)
			begin
				r9 <= 1'b1;
			end
		else if(note_Y_Pos9 >= note_Y_Max)
			begin
				r9 <= 1'b0;
			end
		
		if(trigger1_10)
			begin
				r10 <= 1'b1;
			end
		else if(note_Y_Pos10 >= note_Y_Max)
			begin
				r10 <= 1'b0;
			end
		
		if(trigger1_11)
			begin
				r11 <= 1'b1;
			end
		else if(note_Y_Pos11 >= note_Y_Max)
			begin
				r11 <= 1'b0;
			end
		
		if(trigger1_12)
			begin
				r12 <= 1'b1;
			end
		else if(note_Y_Pos12 >= note_Y_Max)
			begin
				r12 <= 1'b0;
			end
		
		if(trigger1_13)
			begin
				r13 <= 1'b1;
			end
		else if(note_Y_Pos13 >= note_Y_Max)
			begin
				r13 <= 1'b0;
			end
		
		if(trigger1_14)
			begin
				r14 <= 1'b1;
			end
		else if(note_Y_Pos14 >= note_Y_Max)
			begin
				r14 <= 1'b0;
			end
		
		if(trigger1_15)
			begin
				r15 <= 1'b1;
			end
		else if(note_Y_Pos15 >= note_Y_Max)
			begin
				r15 <= 1'b0;
			end
		
		if(trigger1_16)
			begin
				r16 <= 1'b1;
			end
		else if(note_Y_Pos16 >= note_Y_Max)
			begin
				r16 <= 1'b0;
			end
		
		if(trigger1_17)
			begin
				r17 <= 1'b1;
			end
		else if(note_Y_Pos17 >= note_Y_Max)
			begin
				r17 <= 1'b0;
			end
		
		if(trigger1_18)
			begin
				r18 <= 1'b1;
			end
		else if(note_Y_Pos18 >= note_Y_Max)
			begin
				r18 <= 1'b0;
			end
			
		if(trigger1_19)
			begin
				r19 <= 1'b1;
			end
		else if(note_Y_Pos19 >= note_Y_Max)
			begin
				r19 <= 1'b0;
			end
		
		if(trigger1_20)
			begin
				r20 <= 1'b1;
			end
		else if(note_Y_Pos20 >= note_Y_Max)
			begin
				r20 <= 1'b0;
			end
	 end
	 
    
	 always_ff @ (posedge frame_clk)
    begin: Move_note
 
		  if (Reset)  // Asynchronous Reset
        begin
				note_Y_Pos1 <= note_Y_Center;
				//note_X_Pos1 <= note_X_Center;

				note_Y_Pos2 <= note_Y_Center;
				//note_X_Pos2 <= note_X_Center;

				note_Y_Pos3 <= note_Y_Center;
				//note_X_Pos3 <= note_X_Center;

				note_Y_Pos4 <= note_Y_Center;
				//note_X_Pos4 <= note_X_Center;

				note_Y_Pos5 <= note_Y_Center;
				//note_X_Pos5 <= note_X_Center;

				note_Y_Pos6 <= note_Y_Center;
				//note_X_Pos6 <= note_X_Center;

				note_Y_Pos7 <= note_Y_Center;
				//note_X_Pos7 <= note_X_Center;

				note_Y_Pos8 <= note_Y_Center;
				//note_X_Pos8 <= note_X_Center;
		  
				note_Y_Pos9 <= note_Y_Center;
				//note_X_Pos9 <= note_X_Center;

				note_Y_Pos10 <= note_Y_Center;
				//note_X_Pos10 <= note_X_Center;

				note_Y_Pos11 <= note_Y_Center;
				//note_X_Pos11 <= note_X_Center;

				note_Y_Pos12 <= note_Y_Center;
				//note_X_Pos12 <= note_X_Center;

				note_Y_Pos13 <= note_Y_Center;
				//note_X_Pos13 <= note_X_Center;

				note_Y_Pos14 <= note_Y_Center;
				//note_X_Pos14 <= note_X_Center;

				note_Y_Pos15 <= note_Y_Center;
				//note_X_Pos15 <= note_X_Center;

				note_Y_Pos16 <= note_Y_Center;
				//note_X_Pos16 <= note_X_Center;

				note_Y_Pos17 <= note_Y_Center;
				//note_X_Pos17 <= note_X_Center;

				note_Y_Pos18 <= note_Y_Center;
				//note_X_Pos18 <= note_X_Center;

				note_Y_Pos19 <= note_Y_Center;
				//note_X_Pos19 <= note_X_Center;

				note_Y_Pos20 <= note_Y_Center;
				//note_X_Pos20 <= note_X_Center;
		  end
				 
				 
		 else begin
		 
				 //if((note_Y_Pos1 < note_Y_Max) && (trigger1[0]))//(r1))
				 if((r1))// && (note_Y_Pos1 < note_Y_Max))
					begin
						note_Y_Pos1 <= (note_Y_Pos1 + note_Y_Motion);  // Update note position
					end
				 else
					begin
						note_Y_Pos1 <= note_Y_Center;
					end


				 if((r2))
				 begin
				 note_Y_Pos2 <= (note_Y_Pos2 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos2 <= note_Y_Center;
					end
				 
				 if((r3))
				 begin
				 note_Y_Pos3 <= (note_Y_Pos3 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos3 <= note_Y_Center;
					end
				 
				 
				 if((r4))
				 begin
				 note_Y_Pos4 <= (note_Y_Pos4 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos4 <= note_Y_Center;
					end
				 
				 
				 if((r5))
				 begin
				 note_Y_Pos5 <= (note_Y_Pos5 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos5 <= note_Y_Center;
					end
				 
				 
				 if((r6))
				 begin
				 note_Y_Pos6 <= (note_Y_Pos6 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos6 <= note_Y_Center;
					end
				 
				 
				 if((r7))
				 begin
				 note_Y_Pos7 <= (note_Y_Pos7 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos7 <= note_Y_Center;
					end
				 
				 if(( r8))
				 begin
				 note_Y_Pos8 <= (note_Y_Pos8 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos8 <= note_Y_Center;
					end
				 
				 
				 if(( r9))
				 begin
				 note_Y_Pos9 <= (note_Y_Pos9 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos9 <= note_Y_Center;
					end
				 
				 
				 if(( r10))
				 begin
				 note_Y_Pos10 <= (note_Y_Pos10 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos10 <= note_Y_Center;
					end
				 
				 
				 if((r11))
				 begin
				 note_Y_Pos11 <= (note_Y_Pos11 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos11 <= note_Y_Center;
					end
				 
				 
				 if((r12))
				 begin
				 note_Y_Pos12 <= (note_Y_Pos12 + note_Y_Motion);  // Update note position
				 end 
				 else
					begin
						note_Y_Pos12 <= note_Y_Center;
					end
				 
				 
				 if((r13))
				 begin
				 note_Y_Pos13 <= (note_Y_Pos13 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos13 <= note_Y_Center;
					end
				 
				 
				 if(( r14))
				 begin
				 note_Y_Pos14 <= (note_Y_Pos14 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos14 <= note_Y_Center;
					end
				 
				 
				 if((r15))
				 begin
				 note_Y_Pos15 <= (note_Y_Pos15 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos15 <= note_Y_Center;
					end
				 
				 
				 if((r16))
				 begin
				 note_Y_Pos16 <= (note_Y_Pos16 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos16 <= note_Y_Center;
					end
				 
				 
				 if((r17))
				 begin
				 note_Y_Pos17 <= (note_Y_Pos17 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos17 <= note_Y_Center;
					end
				 
				 
				 if((r18))
				 begin
				 note_Y_Pos18 <= (note_Y_Pos18 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos18 <= note_Y_Center;
					end
				 
				 
				 if((r19))
				 begin
				 note_Y_Pos19 <= (note_Y_Pos19 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos19 <= note_Y_Center;
					end
				 
				 
				 if((r20))
				 begin
				 note_Y_Pos20 <= (note_Y_Pos20 + note_Y_Motion);  // Update note position
				 end
				 else
					begin
						note_Y_Pos20 <= note_Y_Center;
					end
				 
				 
			end
	  /**************************************************************************************
	    ATTENTION! Please answer the following quesiton in your lab report! Points will be allocated for the answers!
		 Hidden Question #2/2:
          Note that note_Y_Motion in the above statement may have been changed at the same clock edge
          that is causing the assignment of note_Y_pos.  Will the new value of note_Y_Motion be used,
          or the old?  How will this impact behavior of the note during a bounce, and how might that 
          interact with a response to a keypress?  Can you fix it?  Give an answer in your Post-Lab.
      **************************************************************************************/
      
			
		  
    end
       
	always_comb
	begin
	
	
     noteX1 = note_X_Center;//note_X_Pos1;
	  noteX2 = note_X_Center;//note_X_Pos2;
	  noteX3 = note_X_Center;//note_X_Pos3;
	  noteX4 = note_X_Center;//note_X_Pos4;
	  noteX5 = note_X_Center;//note_X_Pos5;
	  noteX6 = note_X_Center;//note_X_Pos6;
	  noteX7 = note_X_Center;//note_X_Pos7;
	  noteX8 = note_X_Center;//note_X_Pos8;
	  noteX9 = note_X_Center;//note_X_Pos9;
	  noteX10 = note_X_Center;//note_X_Pos10;
	  noteX11 = note_X_Center;//note_X_Pos11;
	  noteX12 = note_X_Center;//note_X_Pos12;
	  noteX13 = note_X_Center;//note_X_Pos13;
	  noteX14 = note_X_Center;//note_X_Pos14;
	  noteX15 = note_X_Center;//note_X_Pos15;
	  noteX16 = note_X_Center;//note_X_Pos16;
	  noteX17 = note_X_Center;//note_X_Pos17;
	  noteX18 = note_X_Center;//note_X_Pos18;
	  noteX19 = note_X_Center;//note_X_Pos19;
	  noteX20 = note_X_Center;//note_X_Pos20;
   
     
	  noteY1 = note_Y_Pos1;
	  
	  noteY2 = note_Y_Pos2;
	  noteY3 = note_Y_Pos3;
	  noteY4 = note_Y_Pos4;
	  noteY5 = note_Y_Pos5;
	  noteY6 = note_Y_Pos6;
	  noteY7 = note_Y_Pos7;
	  noteY8 = note_Y_Pos8;
	  noteY9 = note_Y_Pos9;
	  noteY10 = note_Y_Pos10;
	  noteY11 = note_Y_Pos11;
	  noteY12 = note_Y_Pos12;
	  noteY13 = note_Y_Pos13;
	  noteY14 = note_Y_Pos14;
	  noteY15 = note_Y_Pos15;
	  noteY16 = note_Y_Pos16;
	  noteY17 = note_Y_Pos17;
	  noteY18 = note_Y_Pos18;
	  noteY19 = note_Y_Pos19;
	  noteY20 = note_Y_Pos20;
   
     
    
	end
endmodule
