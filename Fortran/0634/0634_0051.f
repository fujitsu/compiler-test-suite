      DIMENSION M(20)
      READ(5,100)(M(I),I=1,20)
  100 FORMAT(5I7/5I7/5I7/5I7)
      DO 10 K=1,19
      J=K+1
      DO 20 I=J,20
      IF(M(K)-M(I))30,20,20
   30 N=M(K)
      M(K)=M(I)
      M(I)=N
   20 CONTINUE
   10 CONTINUE
      WRITE(6,100) (M(I),I=1,20)
      STOP
      END
