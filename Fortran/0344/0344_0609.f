      EQUIVALENCE (A,B)
      REAL*4 C(10)
      DATA C/10*1.0/,B/2.0/
      DO 10 I=1,10
        A=C(I)
 10   CONTINUE
      WRITE(6,1000) A
      WRITE(6,1000) B
      WRITE(6,1000) C
 1000 FORMAT(F10.1)
      STOP
      END
