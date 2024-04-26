      INTEGER  A(10),B(10)
      DATA     B/1,2,3,4,5,6,7,8,9,10/
      DO 10 I=1,10
        A(I)=B(I)+I
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT (5I10)
      STOP
      END
