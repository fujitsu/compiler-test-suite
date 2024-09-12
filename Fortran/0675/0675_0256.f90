      real*8  A(10)/1,2,3,4,5,6,7,8,9,10/,B(10)
      equivalence (A,B)

      do i = 1,10
        A(i) = EXP(A(i)) + LOG(A(i))
        A(i) = SIN(A(i)) + COS(real(i))
        A(i) = COS(A(i)) + SIN(real(i))
        A(i) = COS(B(i)) + SIN(B(i))
      end do

      write (6,*) "B =",B
      end

