      real*8  A(10)/1,2,3,4,5,6,7,8,9,10/
      complex B(10)/10*(1.0,1.0)/

      do i = 1,10
        B(i) = (SIN(A(i))+EXP(A(i))+COS(A(i))+LOG(A(i))+SIN(A(i))+COS(A(i)))**SIN(A(i))
      end do

      write (6,*) "B =",B
      end

