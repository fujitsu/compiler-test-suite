      INTEGER L(10)/10*1/,M(10)/10*0/
      DO 10 I=1,10
        IF(I.GE.5) THEN
          M(I)=L(I)
           IF(I.GE.7) THEN
             M(I)=L(I)+1
           ENDIF
        ENDIF
 10   CONTINUE
      WRITE(6,1000) M
 1000 FORMAT(I10)
      STOP
      END
