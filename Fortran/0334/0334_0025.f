
        program main
	type A_t
	  SEQUENCE
	    real*4 r_part
	    real*4 i_part
	end type
	type (A_t),dimension(10):: A
	complex*8 C(10), d_1, d_2
	complex*8 ans1, ans2
        parameter (ans1=(0.0,0.0),ans2=(0.0,0.0))
	equivalence (A,C)
        do i=1,10
           A(i)%r_part=1.0e0
           A(i)%i_part=2.0e0
           A(i)%r_part = A(i)%r_part + A(i)%i_part
           C(i)=(0.0,0.0)
           A(i)%i_part = A(i)%r_part + A(i)%i_part
        enddo
        d_1 = sum(C)
        A%r_part=1.0e0
	A%i_part=2.0e0
        A%r_part = A%r_part + A%i_part
        C=(0.0,0.0)
        A%i_part = A%r_part + A%i_part
        d_2 = sum(C)

        if ((d_1 .eq. ans1).and.(d_2 .eq. ans2)) then
           print *,"OK"
        else
           print *,"NG"
        endif

	stop
	end
