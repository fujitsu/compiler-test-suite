      INTEGER*4  A(10),B(10),L(10)
      DATA       A/10*0/,B/10*2/,L/10*1/
      DO 10 I=1,10
        A(1)=B(L(1))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
