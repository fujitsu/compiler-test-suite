      PROGRAM MAIN
      REAL*4 A(10),B(10),X/0.0/,C/0.0/

      DO 10 J=1,10
        DO 20 I=1,10
          X = X + 1.0
   20   CONTINUE
        B(J) = X
        A(J) = B(J)
   10 CONTINUE
      PRINT *,A

      DO 30 J=1,10
        DO 40 I=1,10
          X = X + 1.0
   40   CONTINUE
        B(J) = C
        A(J) = B(J)
   30 CONTINUE
      PRINT *,A
      STOP
      END
