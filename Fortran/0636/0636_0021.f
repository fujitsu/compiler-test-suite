      PROGRAM MAIN
      REAL*4 T(12)/12*0.1/
      REAL*4 X(12)/12*0.1/
      PRINT*,' PROGRAM  '
      DO 10 K=1,10
        PRINT *,X
        DO 20 I=1,10
          T(I) = T(I) + 9.9
   20   CONTINUE
        DO 30 I=1,10
          T(I) = T(I) + 9.9
   30   CONTINUE
   10 CONTINUE
      DO 100 K=1,10
        PRINT *,T(K)
        DO 200 I=1,10
          T(I) = T(I) + 9.9
  200   CONTINUE
        DO 300 I=1,10
          T(I) = T(I) + 9.9
  300   CONTINUE
  100 CONTINUE
      STOP
      END
