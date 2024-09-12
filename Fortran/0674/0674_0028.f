      PROGRAM MAIN
      REAL*4 A(10,10)/100*4.0/,B(10,10)/100*3.0/,C(10,10)/100*2.0/

      DO 10 J=1,10
        DO 20 I=1,10
          A(I,J) = B(I,J)
          C(I,J) = A(I,J)
   20   CONTINUE
   10 CONTINUE
   30 CONTINUE
      PRINT *,C

      DO 100 J=1,10
       IF( J.GT.10 ) GOTO 300
        DO 200 I=1,10
          A(I,J) = B(I,J)
          C(I,J) = A(I,J)
  200   CONTINUE
  100 CONTINUE
  300 CONTINUE
      PRINT *,C
      STOP
      END
