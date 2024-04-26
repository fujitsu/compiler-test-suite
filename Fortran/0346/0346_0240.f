      REAL*4   R41
      REAL*8   R81
      REAL*4   A(10),B(10),C(10)
      DATA     R41,R81/2.0,2.0D0/
      DATA     A,B,C/10*1.0,10*2.0,10*3.0/
      DO 10 I=1,10
        A(I) = R41 + B(I)
        C(I) = R81 + A(I)
   10 CONTINUE
      WRITE(6,*) A,C
      STOP
      END
