        program main
	type A_t
	  SEQUENCE
	    real*4 r_part
	    real*4 i_part
	end type
	type (A_t),dimension(10):: A
	complex*8 C(10)
	equivalence (A,C)
	do i=1,10
	  A(i)%r_part=1.0e0
	  A(i)%i_part=2.0e0
	  A(i)%r_part = A(i)%r_part + A(i)%i_part
	  C(i)=(0.0,0.0)
	  A(i)%i_part = A(i)%r_part + A(i)%i_part
	enddo
	print *,A(1)%r_part
	stop
	end
