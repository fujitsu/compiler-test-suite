      real*8  A(3,3)/1,2,3,4,5,6,7,8,9/
      real*8  B(3,3)/11,22,33,44,55,66,77,88,99/
      complex C(3,3)/9*(1.0,1.0)/
      complex D(3,3)/9*(1.0,1.0)/

      do i = 1,3
        do j = 1,3
          C(j,i) = EXP(SIN(A(i,j))+COS(A(i,j)))
          D(j,i) = EXP(SIN(B(i,j))+COS(B(j,i)))
        end do
      end do

      write (6,*) "C =",C
      write (6,*) "D =",D
      end

