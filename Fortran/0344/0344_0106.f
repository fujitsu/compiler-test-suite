      INTEGER  A(10),B(10)
      DATA     B/1,2,3,4,5,6,7,8,9,10/
      J=1
      DO 10 I=1,10
        J=J+1
        A(I)=B(I)+J
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT (4I10)
      STOP
      END
