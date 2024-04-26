      REAL  S
      REAL  A(10)
      DATA     A/1,2,3,4,5,6,7,8,9,10/
      S=0
      DO 10 I=1,10
        S=S+A(I)
   10 CONTINUE
      WRITE(6,100) S
  100 FORMAT (4F10.1)
      STOP
      END
