      COMMON /num/A(10),B(10),C(10)
      complex C

      do i=1,10
        A(i) = i*i
      end do
      do i=1,10
        B(i) = SIN(A(i))+COS(A(i))
      end do

      call sub(1,10)
      write (6,*) "C =",C
      end

      subroutine sub(L,M)
      integer L,M
      COMMON /num/A(10),B(10),C(10)
      complex C
 
      do i = L,M
        C(i) = SIN(B(i))+COS(B(i))
      end do

       end

