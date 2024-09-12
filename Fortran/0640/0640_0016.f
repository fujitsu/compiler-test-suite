      PROGRAM MAIN
      REAL*4   A(5,5,2)/50*100/
      DO 10 I=1,2
       DO 20 J=1,5
        DO 30 K=1,5
         A(K,J,I)=I+K+J
  30    CONTINUE
  20    CONTINUE
  10  CONTINUE

      WRITE(6,*) A
      STOP
      END
