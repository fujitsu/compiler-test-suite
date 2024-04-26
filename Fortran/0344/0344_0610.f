      REAL*4 A(10),B(10)
      EQUIVALENCE (A,C)
      DATA B/10*1.0/,C/2.0/
      WRITE(6,1000) C
      DO 10 I=1,10
        A(I)=B(I)
 10   CONTINUE
      WRITE(6,1000) C
      WRITE(6,1000) A
 1000 FORMAT(F10.1)
      STOP
      END
