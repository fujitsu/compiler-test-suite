        program main
	complex*8 C1
	complex*8 C2(2)
	real*4 r(2)
	equivalence (C1,r(1)),(r(2),C2)
	C1=(0.0,0.0)
	do i=1,2
	  r(i)=r(i)+i
	  C2(i)=(0.0,0.0)*i
	  C2(i)=C1+C2(i)
	enddo
 	print *,C1,C2(1)
	stop
	end
