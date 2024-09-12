      PROGRAM MAIN
      REAL*4 A(10,10)/100*1.0/,B(10,10)/100*2.4/,C(10,10)/100*0.0/

      DO 10 J=2,10
        DO 20 I=1,10,2
          C(I,J) = B(I,J)
          B(I,J) = A(I,J)
   20   CONTINUE
        DO 10 K=1,10
          S = B(K,J)
   10 CONTINUE
      PRINT *,A,B,C
      STOP
      END
