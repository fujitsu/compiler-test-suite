      REAL A(10),B(10),C(10)
      DATA A,B,C/10*0.,10*1.,10*2./
      DATA M/1/

      DO 11 I=1,10
11      A(I)=I

      DO 10 I=M,10
        A(I)=A(I)+B(I)-C(I)
   10 CONTINUE
      WRITE(6,1) A
 1    FORMAT(5F10.5)
      STOP
      END
