      REAL A(10)/10*1./
      DO 10 I=1,10
        IF(I.GT.5) THEN
          A(I)=I
        ENDIF
 10   CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(F10.5)
      END
