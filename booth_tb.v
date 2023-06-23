module boothtb;

	// Inputs

	reg signed [31:0] X;
	reg signed [31:0] Y;

	// Outputs
	wire signed [63:0] Z;
	integer x1=0;
	// Instantate the Unit Under Test (UUT)
	BoothMultipilcation uut ( 
		.X(X), 
		.Y(Y), 
		.Z(Z)
	);
	initial begin
        X = 1;
		Y = 1;
		
		for (x1=1; x1<10; x1=x1+1)
		begin
			#5 X = X+x1+1;
			    Y = Y+x1+2;
			#5 $display("x = %d, y = %d, ans = %d\n", X, Y, Z);
		end
		
		for (x1=9; x1<100; x1=x1+5)
		begin
			#5 X = X+x1;
			    Y = Y+2*x1;
			#5 $display("x = %d, y = %d, ans = %d\n", X, Y, Z);
		end
		X = 12;
		Y = -12;
		#5 $display("a = %d, b = %d,  = %d\n", X, Y, Z);
		
		X = -11;
		Y = 12;
		#5 $display("a = %d, b = %d,  = %d\n", X, Y, Z);
		
		X = -11;
		Y = -11;
		#5 $display("a = %d, b = %d,  = %d\n", X, Y, Z);
      $finish;

   end
endmodule 
