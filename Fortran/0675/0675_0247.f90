      call sub(10)
      end

      subroutine sub(M)
      integer M
      real*8  A(10)/1,2,3,4,5,6,7,8,9,10/
      complex B(10)/10*(1.0,1.0)/

      do i = 1,M
        B(i) = SIN(A(i))
      end do

      write (6,*) "B =",B
      end
