      INTEGER*4  A(10),B(10),C(10)
      DATA       A/10*0/,B/10*3/,C/10*2/
      DO 10 I=1,10
        A(I)=IEOR(B(I),C(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
