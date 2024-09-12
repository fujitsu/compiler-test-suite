      real*8  A(10)/0,0,1,1,1,0,1,0,0,1/
      real*8  B(10)/1,2,3,4,5,6,7,8,9,10/
      integer C(10)/10*(1.0,1.0)/
      integer D(10)/10*(1.0,1.0)/

      do i = 1,10
        if(A(i) > 0) then
          C(i) = LOG(B(i))
          D(i) = LOG(B(i))
        else
          C(i) = EXP(B(i))
          D(i) = EXP(B(i))
        endif
      end do

      write (6,*) "C =",C
      write (6,*) "D =",D
      end

