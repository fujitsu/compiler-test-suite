      INTEGER A(1), B(100), C(100,100)
      INTEGER M,N
      a(1) = 1
      do j=1,100
      do i=1,100
       b(i) = i +j
       c(i,j) = i+ j + 1
      enddo
      enddo
      m = 1
      n = 1

      DO J=1,100 
       DO I=1,M 
        A(I) = B(I)
       ENDDO
       DO I=1,N 
        C(I,J) = A(I)
       ENDDO
      ENDDO
      PRINT*, C
      end