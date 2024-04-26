      REAL    A(10),B(10),C(10)
      DATA    A/10*0/,B/10*2/,C/10*-3/
      DO 10 I=1,10
        A(I)=SIGN(B(I),C(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
