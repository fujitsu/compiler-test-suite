      INTEGER  A(10),B(10)
      DATA     B/1,2,3,4,5,6,7,8,9,10/
      DO 10 I=1,10
        DO 20 J=1,10,I
          A(J)=B(J)+J
   20   CONTINUE
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT (4I10)
      STOP
      END
