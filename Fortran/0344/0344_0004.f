      REAL    A(10),B(10)
      DATA    A/10*0./,B/10*5.5555555/
      DO 10 I=1,10
        A(I)=ANINT(B(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
