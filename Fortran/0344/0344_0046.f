      LOGICAL*4 L(10)
      INTEGER*4 A
      DATA    A/5/
      DO 10 I=1,10
        L(I)=BTEST(A,2)
   10 CONTINUE
      WRITE(6,*) L
      STOP
      END
