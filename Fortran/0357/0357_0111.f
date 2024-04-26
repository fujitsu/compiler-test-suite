        program main
	type A_t
	  SEQUENCE
	    real*4 r_part
	    real*4 i_part
	end type
	type (A_t),dimension(10):: A
	complex*8 C
	equivalence (A,C)
c
	A(1)%r_part=1.0e0; A(1)%i_part=2.0e0
c
	A(1)%r_part = A(1)%r_part + A(1)%i_part
	C=(0.0,0.0)
	A(1)%i_part = A(1)%r_part + A(1)%i_part
c
	if (abs(A(1)%r_part)-0.0>1.0e-6) then
	  print *,'NG A(1)%r_part=',A(1)%r_part
	endif
	if (abs(A(1)%i_part)-0.0>1.0e-6) then
	  print *,'NG A(1)%i_part=',A(1)%i_part
	endif
	if (abs(C-(0.0,0.0))>1.0e-6) print *,'NG C=',C
	print *,'*** ok ***'
	stop
	end
