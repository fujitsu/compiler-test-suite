      REAL*8 A(10000)/10000*1.0/
      S=0.0
      DO 10 I=1,10000
        S=S+A(I)
  10  CONTINUE
      WRITE(6,*) S,I
      STOP
      END
