
	program main
	complex*8 c8/(1.0,-5.0)/
	complex*16 c16/(1.0,-5.0)/
	complex*32 c32/(1.0,-5.0)/
	write(6,100) c8, c8
100	format('c8(',f5.2,',',f5.2,') = (',z8,',',z8, ')')
	write(6,101) c16, c16
101	format('c16(',f5.2,',',f5.2,') = (',z16,',',z16, ')')
	write(6,102) c32, c32
102	format('c32(',f5.2,',',f5.2,') = (',z32,',',z32, ')')
	call flush(6)
	write(6,200) c8, c8
200	format('c8(',f5.2,',',f5.2,') = (',o12,',', o12, ')')
	write(6,201) c16, c16
201	format('c16(',f5.2,',',f5.2,') = (',o23,',', o23, ')')
	write(6,202) c32, c32
202	format('c32(',f5.2,',',f5.2,') = (',z34,',',z34, ')')
	call flush(6)

	stop
	end
