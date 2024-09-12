      PROGRAM MAIN
      REAL*4 A(10,10)/100*1.0/,B(10,10)/100*2.4/,C(10,10)/100*0.0/

      DO 10 J=2,10
        DO 20 I=1,10
          A(I,J) = B(I,J)
          C(I,J) = A(I,J-1)
   20   CONTINUE
   10 CONTINUE
      PRINT *,A,B,C
      STOP
      END
