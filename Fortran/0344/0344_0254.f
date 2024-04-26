      INTEGER  A(10),B(10),C(10),D(10)
      DATA     A/10*0/
      DATA     B/3,7,4,9,2,6,10,1,8,5/
      DATA     C/3,6,4,5,2,7,10,1,3,5/
      DATA     D/10,9,8,7,6,5,4,3,2,1/
      DO 10 I=1,10
        B(I)=C(I)
        IF (B(I).EQ.C(I)) THEN
          D(B(I))=100
          A(I)=C(B(I))+D(B(I))
        ENDIF
   10 CONTINUE
      
      WRITE(6,100) A
  100 FORMAT (4I10)
      STOP
      END
