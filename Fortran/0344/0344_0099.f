      DIMENSION A(10),B(10),C(10)
      DATA      B/10*3/,C/10*3/
      DO 10 I=1,10
        A(I)=B(I)+C(I)
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT (5F10.5)
      STOP
      END
