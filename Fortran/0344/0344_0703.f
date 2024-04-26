      REAL*8 X/1.0/
      S=0.0
      DO 10 I=1,10000
        S=S+X
  10  CONTINUE
      WRITE(6,*) S
      STOP
      END
