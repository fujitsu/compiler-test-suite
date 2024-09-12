      real  A(10)/1,2,3,4,5,6,7,8,9,10/
      real  B(10)/11,22,33,44,55,66,77,88,99,100/
      real*8 C(10)/10*0/
      real*8 D(10)/10*0/
      real*8 E(10)/10*0/
      real*8 F(10)/10*0/
      complex G(10)/10*(1.0,1.0)/

      do i = 1,10
        C(i) = SIN(A(i))
        D(i) = EXP(C(i))
        E(i) = COS(B(i))
        F(i) = LOG(E(i)+i)
        G(i) = D(i)**F(i)
      end do

      write (6,*) "C =",C
      write (6,*) "D =",D
      write (6,*) "E =",E
      write (6,*) "F =",F
      write (6,*) "G =",G
      end

