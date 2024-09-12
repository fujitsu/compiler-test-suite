      DIMENSION B(100,100),C(100,100),D(100) 
      do j=1,100
      do i=1,100
       b(i,j) = i +j
       c(i,j) = i+ j + 1
       d(i) = i + j
      enddo
      enddo
      m = 50
      n=51
      call sub(B,C,D,M,N)
      write(6,*) c
      stop
      end
      SUBROUTINE SUB(B,C,D,M,N) 
      real * 8,allocatable :: a(:)
      dimension  B(100,100),C(100,100),D(100)
      allocate(a(100))
      do i=1,100
       A(I) = I
      ENDDO

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
