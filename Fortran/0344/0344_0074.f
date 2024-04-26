      INTEGER*4  L(10),X
      REAL*4     A(10),B(10)
      DATA       L/10*1/,X/1/
      DATA       A/10*0/,B/10*2/
      DO 10 I=1,10
        IF(X.EQ.1) THEN
          A(I)=B(L(I))
        ENDIF
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
