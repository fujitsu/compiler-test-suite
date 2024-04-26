      INTEGER  A(10),B(10),C(10),D(10),E(10)
      DATA     A/10*0/
      DATA     B/3,7,4,9,2,6,10,1,8,5/
      DATA     C/3,6,9,5,7,2,1,8,4,10/
      DATA     D/10,9,8,7,6,5,4,3,2,1/
      DATA     E/8,6,9,5,7,2,1,3,4,10/
      DO 10 I=1,10
        B(I)=E(I)
        IF (B(I).EQ.C(I)) THEN
          A(B(I))=C(B(I))+D(B(I))
        ENDIF
        E(I)=B(I)
   10 CONTINUE
      
      WRITE(6,100) A,E
  100 FORMAT (4I10)
      STOP
      END
