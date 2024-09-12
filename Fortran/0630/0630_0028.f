      real * 8 :: a(100)
      DIMENSION B(100),C(100,100)
      do j=1,100
      do i=1,100
       a(i) = i
       b(i) = i +j
       c(i,j) = i+ j + 1
      enddo
      enddo
      m = 50
      n=51
      call sub(A,B,C,M,N)
      write(6,*) c
      contains
       SUBROUTINE SUB(A,B,C,M,N)
       real * 8 :: a(*)
       dimension  B(100),c(100,100)

       DO J=1,100 
        DO I=1,M 
         A(I) = B(I)
        ENDDO
        DO I=1,N 
         C(I,J) = A(I)
        ENDDO
       ENDDO
       PRINT*, C
       end subroutine sub
      end
