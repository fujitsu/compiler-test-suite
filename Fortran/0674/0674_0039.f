      PROGRAM MAIN
      REAL*4 A(10,10)/100*1.0/,S/5.0/

      DO 10 J=1,10
        DO 20 I=1,10
          A(I,J) = S
   20   CONTINUE
        S = A(1,J) + S
   10 CONTINUE
      PRINT *,A,S
      STOP
      END
