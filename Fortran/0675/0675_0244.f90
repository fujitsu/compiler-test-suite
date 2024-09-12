      real*8  A(10)/1,2,3,4,5,6,7,8,9,10/
      complex C(10)/10*(1.0,1.0)/
      real    D(10)/10*0/

      do i = 1,10
        C(i) = COS(LOG(A(i))**i)
        D(i) = EXP(C(i))
      end do

      write (6,*) "C =",C
      write (6,*) "D =",D
      end

