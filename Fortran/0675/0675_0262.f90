      call sub(10)
      end

      subroutine sub(M)
      integer M
      real*8  A(10)/1,2,3,4,5,6,7,8,9,10/
      real  B(10)/11,22,33,44,55,66,77,8,9,10/
      complex C(10)/10*(1.0,1.0)/

      do i = 1,M
        B(i) = SIN(A(i))
        C(i) = COS(A(i))
      end do

      write (6,*) "B =",B
      write (6,*) "C =",C
      end

