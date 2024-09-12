      INTEGER*4 A(10)

      DO 10 I=1,10
        B=I
        A(I) = I
        C=I*2.0
10    CONTINUE

      WRITE(6,*) A,B,C
      STOP
      END
