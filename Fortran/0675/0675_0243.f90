      real*8  A(10)/1,2,3,4,5,6,7,8,9,10/
      complex C(10)/10*(1.0,1.0)/

      do i = 1,10
        C(i) = COS(SIN(A(i))**I)
      end do

      write (6,*) "C = ",C
      end

