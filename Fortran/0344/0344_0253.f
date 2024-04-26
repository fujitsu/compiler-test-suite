      INTEGER  A(10),B(10),C(10),D(10),E(10)
      DATA     A/10*0/
      DATA     B/5,5,5,5,1,5,5,5,5,5/
      DATA     C/10*0/
      DATA     D/7,5,3,1,8,6,4,2,9,10/
      DATA     E/4,8,3,7,2,6,1,5,9,10/
      DO 10 I=1,10
        IF (B(I).EQ.5) THEN
          C(I)=B(I)*100
          A(I)=C(I)+E(D(I))
        ENDIF
   10 CONTINUE
      
      WRITE(6,100) A
  100 FORMAT (4I10)
      STOP
      END
