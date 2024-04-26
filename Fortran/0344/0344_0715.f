      J=0
      DO 10 I=1,10000
        IF(I.GT.50) THEN
          J=J+1
        ENDIF
  10  CONTINUE
      WRITE(6,*) J
      END
