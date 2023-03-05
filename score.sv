module score(input clock, reset, hit1,hit_on1,note1, start_,// hit2, hit3, hit4, hit_on1, hit_on2, hit_on3, hit_on4, note1, note2, note3, note4,
					output [6:0] score); //[13:0] d);


	//logic [6:0] score;		
//		HexDriver HD(.In0(score), .Out0(d));
enum logic [7:0] { Zero, 
						Halt,
						//Score,
						Pause,
						Halt1,
						Halt2,
						Halt3,
						Halt4,
						Halt5,
						Halt6,
						Halt7,
						Halt8, 
						Halt9, 
						Halt10,
						Halt11,
						Halt12, 
						Halt13,
						Halt14,
						Halt15,
						Halt16,
						Halt17,
						Halt18,
						Halt19,
						Halt20,
						Halt21,
						Halt22,
						Halt23,
						Halt24,
						Halt25, 
						Halt26,
						Halt27,
						Halt28,
						Halt29,
						Halt30,
						Halt31,
						Pause2,
						Pause3,
						Pause4,
						Pause5,
						Pause6,
						Pause7,
						Pause8,
						Pause9,
						Pause10,
						Pause11,
						Pause12,
						Pause13,
						Pause14,
						Pause15,
						Pause16,
						Pause17,
						Pause18,
						Pause19,
						Pause20, 
						Pause21, 
						Pause22, 
						Pause23, 
						Pause24, 
						Pause25,
						Pause26, 
						Pause27, 
						Pause28,
						Pause29,
						Pause30
						}   State, Next_state;   // Internal state logic
	
	
	
	always_ff @ (posedge clock)
	begin
		if (reset || start_) 
			State <= Zero;
		else 
			State <= Next_state;
	end
   
	always_ff//comb
	begin 
		// Default next state is staying at current state
		Next_state = State;
		
		// Default controls signal values
		
		score = 7'b0000000;
	
		// Assign next state
		unique case (State)
			Zero:
				Next_state= Halt; 
			Halt : 
				if ((hit1==1&& hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause;             				//start game         
				else
					Next_state = Halt;

//			Score : 
//					Next_state = Pause;

			Pause: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt2;
				else 
					Next_state = Pause;
			
			Halt2: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause2;             				//start game         
				else
					Next_state = Halt2;
			Pause2: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt3;
				else 
					Next_state = Pause2;
				Halt3: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause3;             				//start game         
				else
					Next_state = Halt3;
				Pause3: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt4;
				else 
					Next_state = Pause3;
				Halt4: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause4;             				//start game         
				else
					Next_state = Halt4;
				Pause4: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt5;
				else 
					Next_state = Pause4;
				Halt5: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause5;             				//start game         
				else
					Next_state = Halt5;
				Pause5: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt6;
				else 
					Next_state = Pause5;
				Halt6: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause6;             				//start game         
				else
					Next_state = Halt6;
				
				Pause6: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt7;
				else 
					Next_state = Pause6;
				Halt7: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause7;             				//start game         
				else
					Next_state = Halt7;
				Pause7: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt8;
				else 
					Next_state = Pause7;
				Halt8: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause8;             				//start game         
				else
					Next_state = Halt8;
					
					Pause8: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt9;
				else 
					Next_state = Pause8;
				Halt9: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause9;             				//start game         
				else
					Next_state = Halt9;
				Pause9: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt10;
				else 
					Next_state = Pause9;
				Halt10: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause10;             				//start game         
				else
					Next_state = Halt10;
					
					Pause10: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt11;
				else 
					Next_state = Pause10;
				Halt11: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause11;             				//start game         
				else
					Next_state = Halt11;
					
						Pause11: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt12;
				else 
					Next_state = Pause11;
				Halt12: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause12;             				//start game         
				else
					Next_state = Halt12;
					
				Pause12: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt13;
				else 
					Next_state = Pause12;
				Halt13: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause13;             				//start game         
				else
					Next_state = Halt13;
					
						Pause13: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt14;
				else 
					Next_state = Pause13;
				Halt14: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause14;             				//start game         
				else
					Next_state = Halt14;
					
							Pause14: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt15;
				else 
					Next_state = Pause14;
				Halt15: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause15;             				//start game         
				else
					Next_state = Halt15;
					
								Pause15: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt16;
				else 
					Next_state = Pause15;
				Halt16: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause16;             				//start game         
				else
					Next_state = Halt16;
					
								Pause16: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt17;
				else 
					Next_state = Pause16;
				Halt17: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause17;             				//start game         
				else
					Next_state = Halt17;
					
									Pause17: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt18;
				else 
					Next_state = Pause17;
				Halt18: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause18;             				//start game         
				else
					Next_state = Halt18;
					
								Pause18: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt19;
				else 
					Next_state = Pause18;
				Halt19: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause19;             				//start game         
				else
					Next_state = Halt19;
					
							Pause19: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt20;
				else 
					Next_state = Pause19;
				Halt20: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause20;             				//start game         
				else
					Next_state = Halt20;
					
						Pause20: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt21;
				else 
					Next_state = Pause20;
				Halt21: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause21;             				//start game         
				else
					Next_state = Halt21;
					
							Pause21: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt22;
				else 
					Next_state = Pause21;
				Halt22: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause22;             				//start game         
				else
					Next_state = Halt22;
					
					Pause22: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt23;
				else 
					Next_state = Pause22;
				Halt23: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause23;             				//start game         
				else
					Next_state = Halt23;
						
						Pause23: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt24;
				else 
					Next_state = Pause23;
				Halt24: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause24;             				//start game         
				else
					Next_state = Halt24;
					
						Pause24: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt25;
				else 
					Next_state = Pause24;
				Halt25: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause25;             				//start game         
				else
					Next_state = Halt25;
					
					Pause25: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt26;
				else 
					Next_state = Pause25;
				Halt26: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause26;             				//start game         
				else
					Next_state = Halt26;
					
					Pause26: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt27;
				else 
					Next_state = Pause26;
				Halt27: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause27;             				//start game         
				else
					Next_state = Halt27;
					
					Pause27: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt28;
				else 
					Next_state = Pause27;
				Halt28: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause28;             				//start game         
				else
					Next_state = Halt28;
					
						Pause28: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt29;
				else 
					Next_state = Pause28;
				Halt29: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause29;             				//start game         
				else
					Next_state = Halt29;
					
						Pause29: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt30;
				else 
					Next_state = Pause29;
				Halt30: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Pause30;             				//start game         
				else
					Next_state = Halt30;
					
						Pause30: 
				if ((hit1==0 ))//|| note1==0))//&&(hit2==0 || note2==0)&&(hit3==0 || note3==0)&&(hit4==0 || note4==0)) 
					Next_state = Halt31;
				else 
					Next_state = Pause30;
				Halt31: 
				if ((hit1==1 && hit_on1==1 && note1==1) )//||(hit2==1 && hit_on2==1 && note2==1) ||(hit3==1 && hit_on3==1 && note3==1) ||(hit3==1 && hit_on3==1 && note3==1) )
					Next_state = Zero;             				//start game         
				else
					Next_state = Halt31;
			default : ;


		endcase
		
		// Assign control signals based on current state
		case (State)
						Zero:score=7'b0000000;
						Halt: score=7'b0000000;
//						Score: ;
						Pause: score=7'b0000001;
						Halt2: score=7'b0000001;
						Pause2: score=7'b0000010;
						Halt3:  score=7'b0000010;
						Pause3: score=7'b0000011;
						Halt4: score=7'b0000011;
						Halt5: score=7'b0000100;
						Halt6: score=7'b0000101;
						Halt7: score=7'b0000110;
						Halt8: score=7'b0000111;
						Halt9: score=7'b0001000;
						Halt10: score=7'b0001001;
						Halt11: score=7'b0001010;
						Halt12: score=7'b0001011;
						Halt13: score=7'b0001100;
						Halt14: score=7'b0001101;
						Halt15: score=7'b0001110;
						Halt16: score=7'b0001111;
						Halt17: score=7'b0010000;
						Halt18: score=7'b0010001;
						Halt19: score=7'b0010010;
						Halt20: score=7'b0010011;
						Halt21: score=7'b0010100;
						Halt22: score=7'b0010101;
						Halt23: score=7'b0010110;
						Halt24: score=7'b0010111;
						Halt25: score=7'b0011000;
						Halt26: score=7'b0011001;
						
						Halt27: score=7'b0011010;
						Halt28: score=7'b0011011;
						Halt29: score=7'b0011100;
						Halt30: score=7'b0011101;
						Halt31: score=7'b0011110;
						Pause4: score=7'b0000100;
						Pause5: score=7'b0000101;
						Pause6: score=7'b0000110;
						Pause7: score=7'b0000111;
						Pause8: score=7'b0001000;
						Pause9: score=7'b0001001;
						Pause10: score=7'b0001010;
						Pause11: score=7'b0001011;
						Pause12: score=7'b0001100;
						Pause13: score=7'b0001101;
						Pause14: score=7'b0001110;
						Pause15: score=7'b0001111;
						Pause16: score=7'b00010000;
						Pause17: score=7'b00010001;
						Pause18: score=7'b00010010;
						Pause19: score=7'b00010011;
						Pause20: score=7'b00010100;
						Pause21: score=7'b00010101;
						Pause22: score=7'b00010110;
						Pause23: score=7'b00010111;
						Pause24: score=7'b00011000;
						Pause25: score=7'b00011001;
						Pause26: score=7'b00011010;
						Pause27: score=7'b00011011;
						Pause28: score=7'b00011100;
						Pause29: score=7'b00011101;
						Pause30: score=7'b00011110;
						
			default : ;
		endcase
	end 			
			
			
			
			
			
			
			
			
			
			
//		logic [3:0] score;
//		 logic [13:0] d;
//		 logic t;
//		 //assign d=14'b11111111111111;
//    HexDriver HD(.In0(score), .Out0(d));
//	 //assign score=4'b0000;
//	 always_ff //@ (negedge vs)
//	 begin
//	 if (hit1==1'b1&&t==0)//key and hit and 
//		begin
//	 score <= 4'b0000;//score + 1'b1;
//	 t<=1;
//		end
//	 else if (hit2==1'b1&&t==0)
//		begin
//	 score <= score + 4'b0001;
//	 t<=1;
//		end
//	 else if (hit3==1'b1&&t==0)
//		begin
//	 score <= score + 4'b0001;
//	 t<=1;
//		end
//	 else if (hit4==1'b1)//&&t==0)
//		begin
//	 //score <= score + 1'b1;
//	 t<=0;
//		end
//	 else 
//		begin
//	 score <= score;
//	 //t<=0;
//		end
//	 end
endmodule
