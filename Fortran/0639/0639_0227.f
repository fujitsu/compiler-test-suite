      REAL*8  A1(10),B(10),A2(10)
      DATA    B/10*0.5D0/

      DO 10 I=1,10
          A1(I) = DSIN(B(I))

          A2(I) = DSIN(B(I))
  10  CONTINUE
      WRITE(6,100) A1,A2
  100 FORMAT(' ',D27.15)

      STOP
      END
