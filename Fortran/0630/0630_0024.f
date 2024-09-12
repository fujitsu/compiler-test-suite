      dimension A(1),B(100,100),C(100,100)
      a(1) = 0
      do j=1,100
      do i=1,100
       b(i,j) = i +j
       c(i,j) = i+ j + 1
      enddo
      enddo
      m = 1
      n = 1
      call sub(A,B,C,M,N)
      write(6,*) c
      stop
      end
      SUBROUTINE SUB(A,B,C,M,N)
      dimension A(1), B(100),C(100,100)
      INTEGER M,N

      DO J=1,100 
       DO I=1,M 
        A(I) = B(I)
       ENDDO
       DO I=1,N 
        C(I,J) = A(I)
       ENDDO
      ENDDO
      end
