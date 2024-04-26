      REAL A(10),B(10),C(10)
      DATA A,B,C/10*1.,10*2.,10*3./

      DO 11 I=1,10
11      C(I)=I

      DO 10 I=10,1,-1
        C(I)=C(I)*(-1.)
        A(I)=A(I)+B(I)*C(I)
   10 CONTINUE
      WRITE(6,1) A
 1    FORMAT(5F10.5)
      STOP
      END
