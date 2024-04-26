      INTEGER M(10)
      DO 10 I=1,10
        IF (I.LE.5) THEN
          M(I)=1.0
        ELSE
          M(I)=0.0
      ENDIF
 10   CONTINUE
      WRITE(6,1000) M
1000  FORMAT(I10)
      STOP
      END
