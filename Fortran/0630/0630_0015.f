      DIMENSION A(100),B(100,100),C(100,100),D(100) 
      do j=1,100
      do i=1,100
       a(i) = i
       b(i,j) = i +j
       c(i,j) = i+ j + 1
       d(i) = i + j
      enddo
      enddo
      m = 100
      n = 100
      call sub(A,B,C,D,M,N)
      write(6,*) c
      stop
      end
      SUBROUTINE SUB(A,B,C,D,M,N) 
      DIMENSION A(1),B(100,100),C(100,100),D(100) 

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