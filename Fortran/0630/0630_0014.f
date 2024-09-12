      DIMENSION A(2),B(100,100),C(100,100),D(100) 
      a(1) = 1
      do j=1,100
      do i=1,100
       b(i,j) = i +j
       c(i,j) = i+ j + 1
       d(i) = i + j
      enddo
      enddo
      m = 1
      n = 2

      DO J=1,100 
        DO I=1,M 
          B(I,J) = A(I) 
        ENDDO 
        DO I=N,N
          A(I) = B(I,J) + D(I) 
          C(I,J) = A(I) 
        ENDDO 
      ENDDO 
      print*,c
      END 
