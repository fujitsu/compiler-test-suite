      REAL*8 X/1.0/
      S=0.0
      DO 10 I=1,10000
        IF(I.GT.50) THEN
          S=S+X
        ENDIF
  10  CONTINUE
      WRITE(6,*) S
      END
