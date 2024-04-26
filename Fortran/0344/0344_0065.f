      COMPLEX*8 A(10),B(10)
      DATA      B/10*(2.0,2.0)/
      DO 10 I=1,10
        A(I)=SIN(B(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
