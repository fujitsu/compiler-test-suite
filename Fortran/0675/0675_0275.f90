      real*8  A(10)/1,2,3,4,5,6,7,8,9,10/
      real*8  B(10)/10*1/
      real    C(10)/10*1/
      real    D(10)/10*0/
      complex E(10)/10*(1.0,1.0)/

      do i = 1,10
        B(i) = SIN(A(i))+COS(A(i))
        C(i) = SIN(B(i))+COS(B(i))
        D(i) = EXP(SIN(B(i))+COS(B(i)))
        E(i) = (SIN(C(i))+COS(C(i)))**SIN(E(i))
      end do

      write (6,*) "B =",B
      write (6,*) "C =",C
      write (6,*) "D =",D
      write (6,*) "E =",E
      end

