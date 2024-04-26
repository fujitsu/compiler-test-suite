      INTEGER  A(20)/20*0/
      INTEGER  B(20)/20*5/
      N=2
      J=5
      DO 10 I=1,20,N
        J=J+1
        A(I)=B(I)+J
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT (4I10)
      STOP
      END
