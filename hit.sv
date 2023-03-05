module  hit ( input Reset, frame_clk,
					input [7:0] keycode,
               output [9:0]  hitX1, hitX2, hitX3, hitX4, hitY, hitS,
					output hit1, hit2, hit3, hit4);
    
    logic [9:0] Ball_X_Pos, Ball_X_Motion, Ball_Y_Pos, Ball_Y_Motion, Ball_Size;
	 
	 parameter [9:0] hitY_Center=388;   // Center position on the Y axis
    parameter [9:0] hitX1_Center=161;  // Center position on the X axis
    parameter [9:0] hitX2_Center=266;  // Center position on the X axis
	 parameter [9:0] hitX3_Center=372;  // Center position on the X axis
	 parameter [9:0] hitX4_Center=480;  // Center position on the X axis
//    parameter [9:0] Ball_X_Min=0;       // Leftmost point on the X axis
//    parameter [9:0] Ball_X_Max=639;     // Rightmost point on the X axis
//    parameter [9:0] Ball_Y_Min=0;       // Topmost point on the Y axis
//    parameter [9:0] Ball_Y_Max=479;     // Bottommost point on the Y axis
//    parameter [9:0] Ball_X_Step=1;      // Step size on the X axis
//    parameter [9:0] Ball_Y_Step=1;      // Step size on the Y axis

    assign Ball_Size = 30;  // assigns the value 4 as a 10-digit binary number, ie "0000000100"
   
//    always_ff @ (posedge Reset or posedge frame_clk )
//    begin: Move_Ball
//        if (Reset)  // Asynchronous Reset
//        begin 
//            Ball_Y_Motion <= 10'd0; //Ball_Y_Step;
//				Ball_X_Motion <= 10'd0; //Ball_X_Step;
//				Ball_Y_Pos <= Ball_Y_Center;
//				Ball_X_Pos <= Ball_X_Center;
//        end
//           
//        else 
//        begin 
//				 if ( (Ball_Y_Pos + Ball_Size) >= Ball_Y_Max )  // Ball is at the bottom edge, BOUNCE!
//					  Ball_Y_Motion <= (~ (Ball_Y_Step) + 1'b1);  // 2's complement.
//					  
//				 else if ( (Ball_Y_Pos - Ball_Size) <= Ball_Y_Min )  // Ball is at the top edge, BOUNCE!
//					  Ball_Y_Motion <= Ball_Y_Step;
//					  
//				  else if ( (Ball_X_Pos + Ball_Size) >= Ball_X_Max )  // Ball is at the Right edge, BOUNCE!
//					  Ball_X_Motion <= (~ (Ball_X_Step) + 1'b1);  // 2's complement.
//					  
//				 else if ( (Ball_X_Pos - Ball_Size) <= Ball_X_Min )  // Ball is at the Left edge, BOUNCE!
//					  Ball_X_Motion <= Ball_X_Step;
//					  
//				 else 
//					  Ball_Y_Motion <= Ball_Y_Motion;  // Ball is somewhere in the middle, don't bounce, just keep moving
//					  
//				 
//				 case (keycode)
//					8'h04 : begin
//
//								Ball_X_Motion <= -1;//A
//								Ball_Y_Motion<= 0;
//							  end
//					        
//					8'h07 : begin
//								
//					        Ball_X_Motion <= 1;//D
//							  Ball_Y_Motion <= 0;
//							  end
//
//							  
//					8'h16 : begin
//
//					        Ball_Y_Motion <= 1;//S
//							  Ball_X_Motion <= 0;
//							 end
//							  
//					8'h1A : begin
//					        Ball_Y_Motion <= -1;//W
//							  Ball_X_Motion <= 0;
//							 end	  
//					default: ;
//			   endcase
//				 
//				 Ball_Y_Pos <= (Ball_Y_Pos + Ball_Y_Motion);  // Update ball position
//				 Ball_X_Pos <= (Ball_X_Pos + Ball_X_Motion);
			
			
	  /**************************************************************************************
	    ATTENTION! Please answer the following quesiton in your lab report! Points will be allocated for the answers!
		 Hidden Question #2/2:
          Note that Ball_Y_Motion in the above statement may have been changed at the same clock edge
          that is causing the assignment of Ball_Y_pos.  Will the new value of Ball_Y_Motion be used,
          or the old?  How will this impact behavior of the ball during a bounce, and how might that 
          interact with a response to a keypress?  Can you fix it?  Give an answer in your Post-Lab.
      **************************************************************************************/
      
			
//		end  
//    end
logic hit_1, hit_2, hit_3, hit_4;

always_ff @ (posedge frame_clk )
begin
	case (keycode)
					8'h04 : 
					//begin

								hit_1 <= 1'b1;
					//end
					        
					8'h16 : 
					//begin
								
					        hit_2 <= 1'b1;
					//end

							  
					8'h07 : 
					//begin

					        hit_3 <= 1'b1;
					//end
							  
					8'h09 : 
					//begin
					        hit_4 <= 1'b1;
					//end	  
					default: 
					begin    
								hit_1 <= 1'b0;
								hit_2 <= 1'b0;
								hit_3 <= 1'b0;
								hit_4 <= 1'b0;
					end
			   endcase
end
       
    assign hitX1 = hitX1_Center;
	 assign hitX2 = hitX2_Center;
	 assign hitX3 = hitX3_Center;
	 assign hitX4 = hitX4_Center;
   
    assign hitY = hitY_Center;
   
    assign hitS = Ball_Size;
    
	 assign hit1 = hit_1;
	 assign hit2 = hit_2;
	 assign hit3 = hit_3;
	 assign hit4 = hit_4;

endmodule