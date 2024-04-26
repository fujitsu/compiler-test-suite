        program main
	complex*8 C1
	complex*8 C2(2)
	real*4 r(2)
	equivalence (C1,r(1)),(r(2),C2)
c
	C1=(0.0,0.0)
	do i=1,2
	  r(i)=r(i)+i
	  C2(i)=(0.0,0.0)*i
	  C2(i)=C1+C2(i)
	enddo
c
	if (abs(C1-(1.0,3.0))>1.0e-6) print *,'ng C1=',C1
	if (abs(C2(1)-(3.0,0.0))>1.0e-6) print *,'ng C2(1)=',C2(1)
	print *,'*** ok ***'
	stop
	end
