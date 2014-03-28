filenametemplate "%j-%c.mps";
beginfig(1);
	z0 = ( 0, 0 );
	z1 = z0 + ( 80, 10 );
	z2 = z0 + ( 160, 0 );
	z3 = z0 + ( 240, -10 );
	z4 = z0 + ( 320, 0 );
	z5 = z0 - ( 80, 80 );
	z6 = z5 + ( 80, 10 );
	z7 = z5 + ( 160, 0 );
	z8 = z5 + ( 240, -10 );
	z9 = z5 + ( 320, 0 );
	
	z10 = z0 - ( 0, 120 );
	z11 = z10 + ( 80, 10 );
	z12 = z10 + ( 160, 0 );
	z13 = z10 + ( 240, -10 );
	z14 = z10 + ( 320, 0 );
	z15 = z10 - ( 80, 80 );
	z16 = z15 + ( 80, 10 );
	z17 = z15 + ( 160, 0 );
	z18 = z15 + ( 240, -10 );
	z19 = z15 + ( 320, 0 );
	
	z20 = (z0 + z4 + z5 + z9) * 0.25;
	z21 = (z10 + z14 + z15 + z19) * 0.25;
	
	z22 = z0 - ( 40, 40 );
	z23 = z22 + ( 80, 10 );
	z24 = z22 + ( 160, 0 );
	z25 = z22 + ( 240, -10 );
	z26 = z22 + ( 320, 0 );
	
	z27 = z10 - (40, 40 );
	z28 = z27 + ( 80, 10 );
	z29 = z27 + ( 160, 0 );
	z30 = z27 + ( 240, -10 );
	z31 = z27 + ( 320, 0 );
	
	path p;
	p = z5--z0..z1..z2..z3..z4;
	draw p;
	path q;
	q = z5..z6..z7..z8..z9--z4;
	draw q;
	
	draw z15--z10..z11..z12..z13..z14;
	draw z15..z16..z17..z18..z19--z14;
	
	path normal;
	normal = z21..z20;
	draw ( normal cutafter q );
	drawarrow ( normal cutbefore q ) dashed evenly scaled 2;
	
	path hidden_top;
	hidden_top = z22..z23..z24..z25..z26;
	
	path hidden_bottom;
	hidden_bottom = z27..z28..z29..z30..z31;
	
	z32 = z21 + ( 200, 200 );
	path time;
	time = z21..z32;
	
	draw ( time cutafter q );
	drawarrow ( ( time cutbefore q ) cutafter hidden_top ) dashed evenly scaled 2;

	
	z33 = time intersectionpoint hidden_top;
	z34 = z33 + ( 0, -200 );
	
	path dashed_normal;
	dashed_normal = z34..z33;
	draw ( dashed_normal cutbefore hidden_bottom ) dashed evenly scaled 2;
	
	z35 = dashed_normal intersectionpoint hidden_bottom;
	path shift;
	shift = z21..z35;
	
	drawarrow shift;
	
	label.top(btex $n^{\mu}$ etex, z20);
	label.urt(btex $t^{\mu}$ etex, z33);
	
	z36 = z15 + ( 40, 20 );
	label.urt(btex $\Sigma_{t}$ etex, z36);
	
	z37 = z5 + ( 40, 20 );
	label.urt(btex $\Sigma_{t+dt}$ etex, z37);
	
	z38 = 0.5[z21,z20];
	label.lft(btex $\alpha dt$ etex, z38 );
	
	z39 = 0.5[z21, z35];
	label.bot(btex $\beta^{a}dt$ etex, z39 );
	
	z40 = z10 + ( 20, -20 );
	label.lrt(btex $g_{ab}$ etex, z40 );
endfig;
end