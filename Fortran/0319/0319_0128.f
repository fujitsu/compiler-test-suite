        program main
	type A_t
	  SEQUENCE
	    integer*4 ia1
	    integer*4 ia2
	end type
	type B_t
	  SEQUENCE
	    integer*4 ib1
	    integer*4 ib2
	end type
	type (A_t) A; type (B_t) B;
	equivalence (A,B)
	A%ia1=1; A%ia2=2
	B%ib1=A%ia2+B%ib2
	B%ib2=A%ia1+B%ib1
	print *,A,B
	stop
	end
