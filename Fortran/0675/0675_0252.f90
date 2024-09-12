      real*8  A(10)/1,2,3,4,5,6,7,8,9,10/
      real*8  B(10)/11,22,33,44,55,66,77,88,99,100/
      real    C(10)/10*0/
      real    E(10)/10*0/
      real    F(10)/10*0/

      do i = 1,10
        C(i) = SIN(COS(A(i)))**i + COS(SIN(B(i)))**i
        E(i) = COS(SIN(A(i)))**i + SIN(COS(B(i)))**i
        F(i) = (SIN(LOG(A(i)))**i + EXP(COS(E(i)))**i)**C(i)
      end do

      write (6,*) "C =",C
      write (6,*) "E =",E
      write (6,*) "F =",F
      end

