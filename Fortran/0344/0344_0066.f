      DIMENSION A(10),B(10)
      INTEGER*4 X/1/
      DATA      B/10*2/
      DO 10 I=1,10
        IF(X.EQ.1) THEN
          A(I)=SIN(B(I))
        ENDIF
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
