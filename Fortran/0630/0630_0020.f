      integer A(100),B(100,100),C(100,100)
      do j=1,100
      do i=1,100
       a(i) = i
       b(i,j) = i +j
       c(i,j) = i+ j + 1
      enddo
      enddo
      m = 100
      n = 100
      call sub(A,B,C,M,N)
      write(6,*) c
      stop
      end
      SUBROUTINE SUB(A,B,C,M,N)
      INTEGER A(100), B(100), C(100,100)
      INTEGER M,N

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