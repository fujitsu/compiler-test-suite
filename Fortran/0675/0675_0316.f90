      COMMON /num/A(10),B(10),C(10)
      complex C
      C=1
      B=2

      do i=1,10
        A(i) = i*i
      end do
      do i=1,9
        B(i) = SIN(A(i))+COS(A(i))
        A(i+1) = B(i)+1
      end do

      call sub(1,10)
      write (6,*) "B =",B
      write (6,*) "C =",C
      end

      subroutine sub(L,M)
      integer L,M
      COMMON /num/A(10),B(10),C(10)
      complex C
 
      do i = L,M-1
        C(i) = SIN(B(i))+COS(B(i))
        A(i+1) = i
      end do

       end

