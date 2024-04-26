
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
	type (A_t),dimension(10):: A
	type (B_t),dimension(10):: B
	equivalence (A,B)
	A(1)%ia1=1; A(1)%ia2=2
	B(1)%ib1=A(1)%ia2+B(1)%ib2
	B(1)%ib2=A(1)%ia1+B(1)%ib1
	print *,A(1),B(1)
	stop
	end
