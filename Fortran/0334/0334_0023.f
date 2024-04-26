
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
	type (A_t) :: init_A
	type (B_t) :: init_B
        integer*4 d_A, d_B
        integer*4 ans
        parameter (ans=-25)
	equivalence (A,B)
	A(1)%ia1=1
        A(1)%ia2=2
	B(1)%ib1=A(1)%ia2+B(1)%ib2
	B(1)%ib2=A(1)%ia1+B(1)%ib1
        kei = A(1)%ia1+A(1)%ia2

        init_A%ia1=0
        init_A%ia2=1
        A = init_A
        init_B%ib1=2
        init_B%ib2=3
        B = init_B

        A%ia1 = A%ia1 + B%ib1
        A%ia1 = A%ia1 + B%ib2
        A%ia2 = A%ia2 + B%ib2
        A%ia2 = A%ia2 + B%ib1

        where (A%ia1 > A%ia2)
           B%ib1 = B%ib1 - A%ia1
           B%ib2 = B%ib2 - A%ia2
        elsewhere
           B%ib1 = B%ib1 - A%ia2
           B%ib2 = B%ib2 - A%ia1
        endwhere

        d_A = maxval(A%ia1) - minval(A%ia2)
        d_B = maxval(B%ib1) - minval(B%ib2)

        if ((d_A == ans).and.(d_B == ans)) then
           print *,"OK"
        else
           print *,"NG"
        endif

	stop
	end
