      INTEGER A(10),B(10)
      DATA    A/10*0/,B/10*5/
      DO 10 I=1,10
          A(I)=MOD(B(I),2)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
