!
      SUBROUTINE S152 (NTIMES,N,A,B,C,D,E)
      INTEGER NTIMES, N, I, J
      DOUBLE PRECISION A(N), B(N), C(N), D(N), E(N) 

      DO 1 J = 1,NTIMES
         DO 10 I = 1,N-1
            B(I) = D(I) * E(I)
         CALL S152S(A,B,C,I)
 10   CONTINUE
 1    CONTINUE

      RETURN
      END

      SUBROUTINE S152S(A,B,C,I)
      INTEGER I
      DOUBLE PRECISION A(*), B(*), C(*)
      A(I) = A(I) + B(I+1) * C(I)
      RETURN
      END
      
      program main
      INTEGER NTIMES, N, I
      DOUBLE PRECISION A(100), B(100), C(100), D(100), E(100) 
      real(8),parameter :: ANSWER=589.0
      real(8) :: result
      N = 100
      NTIMES = 10
      do i=1,100
         A(i) = 1
         B(i) = 2
         C(i) = 3
         D(i) = 4
         E(i) = 5
      enddo
      
      call S152 (NTIMES,N,A,B,C,D,E)
      print *,"answer check :"
      result = A(1) + B(1) + B(50) + B(100)
      if ( result .eq. ANSWER ) then
         print *," -> ok"
      else
         print *," -> ng :",result,ANSWER
      endif

      end program  main
