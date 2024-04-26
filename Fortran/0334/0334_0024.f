
        program main
	type A_t
	  SEQUENCE
	    real*4 r_part
	    real*4 i_part
	end type
        integer N
        parameter (N=10)
	type (A_t),dimension(N):: A
	type (A_t):: init_A
	complex*8, dimension(N):: C
	complex*8 init_C
        real*4 d_Ar, d_Ai, ans1, ans2
        logical*1,dimension(N):: M
        parameter (ans1=12.5,ans2=12.5)
	equivalence (A,C)
	A(1)%r_part=1.0e0
        A(1)%i_part=2.0e0
	A(1)%r_part = A(1)%r_part + AIMAG(C(1))
        kei = AIMAG(CONJG(C(1)))
	C(1)=(0.0,0.0)
	A(1)%i_part = A(1)%r_part + AIMAG(C(1))
        kei = kei + A(1)%r_part + A(1)%i_part

        init_A%r_part =1.0e0
        init_A%i_part =2.0e0
        init_C = (1.0, 1.0)

        A%r_part = init_A%r_part        
        A%i_part = init_A%r_part

        C = init_C

        A%r_part = A%r_part + AIMAG(C)
        A%i_part = A%i_part + AIMAG(C)

        do i=1,N
           if (mod(i,2) .eq. 0) then
              M(i) = .true.
           else
              M(i) = .false.
           endif
        enddo

        where (M)
           A%r_part = EXPONENT(A(1)%r_part)
        elsewhere
           A%r_part = FRACTION(A(1)%r_part)
        endwhere
           
        d_Ar = sum(C)
        d_Ai = sum(C)

        if ((d_Ar == ans1).and.(d_Ai == ans2)) then
           print *,"OK"
        else
           print *,"NG"
        endif

	stop
	end
