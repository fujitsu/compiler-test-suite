      CHARACTER A1(10)/10*'Z'/,A2(10)/10*'Q'/
      LOGICAL*4 B1(10)
      DO 1 I=1,10
    1  B1(I) = LLE(A1(I),A2(I))
      WRITE(6,*) B1
      STOP
      END
