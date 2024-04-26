      INTEGER  A(10),B(10),C(10),D(10)
      DATA     B/3,7,4,9,2,6,10,1,8,5/
      DATA     C/3,6,9,5,7,2,1,8,4,10/
      DATA     D/10,9,8,7,6,5,4,3,2,1/
      DO 10 I=1,10
        A(B(I))=C(B(I))+D(B(I))
   10 CONTINUE
      WRITE(6,100) A
  100 FORMAT (4I10)
      STOP
      END
