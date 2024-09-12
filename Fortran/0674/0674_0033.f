      PROGRAM MAIN
      REAL*4 A(10,10)/100*1.0/,B(10,10)/100*2.4/
      REAL*4 X(10)

      DO 10 J=1,10
        DO 10 I=1,10
          A(I,J) = B(I,J)
          X(I) = A(I,5) + I
   10 CONTINUE
      PRINT *,A,B
      STOP
      END
