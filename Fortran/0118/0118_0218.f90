	module mod
	real*16,parameter,dimension(31)::p1 = (/ 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1, 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 /)
	real*16,parameter,dimension(32)::p2 = (/ 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2, 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2 /)
	end
	use mod
	print *,int(p1)
	print *,int(p2)
	end
