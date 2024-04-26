      REAL*8    A(10)
      REAL*8    B(10)
      DATA      A/10*0./
      DATA      B/10*1/
      DO 10 I=1,10
        A(I) = B(I)
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT(5F10.5)
      STOP
      END
