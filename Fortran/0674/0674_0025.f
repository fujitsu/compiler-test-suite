      PROGRAM MAIN
      REAL*4 A(10,10)/100*2.4/,B(10,10)/100*2.4/,C(10,10)/100*0.0/
      DATA N/10/

      DO 10 J=1,10,2
        DO 20 I=1,10
          IF( I.GT.10 ) GOTO 30
          A(I,J+1) = B(I,J)
          C(I,J) = A(I,J)
   20   CONTINUE
   10 CONTINUE
   30 CONTINUE
      PRINT *,A,B,C
      STOP
      END
