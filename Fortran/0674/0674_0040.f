      PROGRAM MAIN
      REAL*4 A(10,10)/100*1.0/,B(10,10)/100*1.0/,S/5.0/

      DO 10 J=1,10
        DO 20 I=1,10
   20     A(I,J) = B(I,J)
        PRINT *,J
        DO 10 I=1,10
          S = A(I,10) + S
   10 CONTINUE
      PRINT *,A,B,S
      STOP
      END
