      S=0.0
      DO 10 I=1,10000
        IF(I.GT.50) THEN
          S=S+1.0
        ENDIF
  10  CONTINUE
      WRITE(6,*) S
      END
