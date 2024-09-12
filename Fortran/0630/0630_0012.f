      DIMENSION A(100),B(100,100),C(100,100),D(100) 
      do j=1,100
      do i=1,100
       a(i) = i
       b(i,j) = i +j
       c(i,j) = i+ j + 1
       d(i) = i + j
      enddo
      enddo
      m = 50
      n=51
      call sub(A,B,C,D,M,N,100)
      write(6,*) c
      stop
      end
      SUBROUTINE SUB(A,B,C,D,M,N,MM) 
      DIMENSION A(MM),B(MM,100),C(100,100),D(100)

      DO J=1,100 
        DO I=1,M 
          B(I,J) = A(I) 
        ENDDO 
        DO I=N,100 
          A(I) = B(I,J) + D(I) 
          C(I,J) = A(I) 
        ENDDO 
      ENDDO 
      END 
