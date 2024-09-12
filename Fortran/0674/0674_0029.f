      PROGRAM MAIN
      REAL*4 A(10,10)/100*2.0/,B(10,10)/100*1.0/,C(10,10)/100*0.0/
      DO 10 J=1,10,2
        DO 20 I=1,10
          A(I,J+1) = B(I,J)
          C(I,J) = A(I,J)
   20   CONTINUE
   10 CONTINUE
      PRINT *,A,B,C
      STOP
      END
