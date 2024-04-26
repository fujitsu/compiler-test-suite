      S=0.0
      DO 10 J=1,10
        DO 10 I=1,10000
        S=S+1.0
  10  CONTINUE
      WRITE(6,*) S
C
      S=0.0
      DO 20 J=1,10
        DO 20 I=1,10000
        S=S+1.0
  20  CONTINUE
      WRITE(6,*) S,I,J
      STOP
      END
