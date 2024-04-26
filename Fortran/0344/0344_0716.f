      INTEGER*4 X/1/
      INTEGER*4 S(10)/10*0/
      DO 10 I=1,10000
        IF(I.GT.50) THEN
          S(1)=S(1)+X
        ENDIF
  10  CONTINUE
      WRITE(6,*) S(1)
      END
