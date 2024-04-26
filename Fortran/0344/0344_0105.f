      INTEGER  A(30)/30*0/
      INTEGER  B(30)/30*10/
      N=10
      M=2
      DO 10 I=N,30,M
        A(I)=B(I)+I
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT (4I10)
      STOP
      END
