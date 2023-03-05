module shift (
					input logic Clk, start_, end_,
					input logic [7:0] keycode,
					output logic shift, space, one, two
				 );
	integer counter = 1;
	logic   shift_ = 1'b0;
	logic   space_ = 1'b0;
	logic   r;
	logic	  one_ = 1'b0;
	logic	  two_ = 1'b0;
	
	always_ff @ (posedge Clk)
	begin
		if(start_)
			begin
				r <= 1'b1;
			end
		else if(end_)
			begin
				r <=1'b0;
			end
	end
	
		always_ff @ (posedge Clk)
		begin
			if(r)
				begin
					counter <= counter + 1;
				
				end
			else
				begin
					counter <= 30'd1;
				end
		
			if (counter == 10000000)
				begin
					counter <= 30'd0;
				end
		
			if (counter == 30'd0)
				begin
					shift_ <= 1'b1;							//shift signal to traverse through states
				end
		
			else
				begin
					shift_ <= 1'b0;
						
				end
			
		end
		
		always_ff @ (posedge Clk)
		begin
			
			if(keycode == 8'h2c)
			begin
				space_ <= 1'b1; 
			end
			
			else
			begin
				space_ <= 1'b0;
			end
	   end
		
		always_ff @ (posedge Clk)
		begin
			
			if(keycode == 8'h1e)
			begin
				one_ <= 1'b1; 
			end
			
			else
			begin
				one_ <= 1'b0;
			end
	   end
		
		always_ff @ (posedge Clk)
		begin
			
			if(keycode == 8'h1f)
			begin
				two_ <= 1'b1; 
			end
			
			else
			begin
				two_ <= 1'b0;
			end
	   end
	
	
	assign shift = shift_;
	assign space = space_;
	assign two = two_;
	assign one = one_;
endmodule