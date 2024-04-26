      INTEGER*4  L(10)
      REAL*8     A(10),B(10)
      DATA       L/10*1/
      DATA       A/10*0./,B/10*2./
      DO 10 I=1,10
        A(I)=B(L(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
