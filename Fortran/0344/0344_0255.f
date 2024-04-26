      INTEGER  A(10),B(10),C(10),D(10),E(10),F(10)
      DATA     A/10*0/
      DATA     B/3,7,4,9,2,6,10,1,8,5/
      DATA     C/3,6,4,5,2,7,10,1,3,5/
      DATA     D/10,9,8,7,6,5,4,3,2,1/
      DATA     E/1,2,3,4,5,6,7,8,9,10/
      DATA     F/2,1,4,3,6,5,8,7,10,9/
      DO 10 I=1,10
        B(I)=C(I)
        IF (B(I).EQ.C(I)) THEN
          D(B(I))=100
          A(I)=C(B(I))+E(F(I))
        ENDIF
   10 CONTINUE
      
      WRITE(6,100) A,B
  100 FORMAT (2(4I10))
      STOP
      END
