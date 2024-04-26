      INTEGER  A(10),B(10),C(10),D(10),E(10)
      DATA     A/10*0/
      DATA     B/3,7,4,9,2,6,10,1,8,5/
      DATA     C/3,6,9,5,7,2,1,8,4,10/
      DATA     D/10,9,8,7,6,5,4,3,2,1/
      DATA     E/8,9,8,7,6,5,4,3,2,10/
      N = 1
      DO 10 I=1,10
        IF (B(I).NE.C(I)) THEN
          B(I)=E(I)+D(I)
        ENDIF
        IF (D(I).EQ.E(I)) THEN
          B(I)=C(I)*N
          B(I)=B(I)/N
          A(B(I))=E(I)+B(I)
        ENDIF
   10 CONTINUE
      
      WRITE(6,100) A
  100 FORMAT (4I10)
      STOP
      END
