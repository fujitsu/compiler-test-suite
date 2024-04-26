      INTEGER A(256)/256*1/,SUM/0/
      DO 1 I=1,10
    1   N = I + 10
      DO 10 I=1,256
         SUM = A(I)
         DO 10 J=1,N
            SUM = A(I)
   10 CONTINUE
      WRITE(6,*) SUM
      STOP
      END
