        program main
	complex*8 C1(10)
	complex*8 C2(10)
	equivalence (C1,C2)
	do i=1,10
	  C1(i)=(0.0,0.0)*i
	  C2(i)=(0.0,0.0)*i
	  C2(i)=C1(i)+C2(i)
	enddo
 	print *,C1(1),C2(1)
	stop
	end
