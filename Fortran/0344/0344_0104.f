      INTEGER  A(20)/20*0/
      INTEGER  B(20)/20*5/
      N=2
      DO 10 I=1,20,N
        A(I)=B(I)+I
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT (4I20)
      STOP
      END
