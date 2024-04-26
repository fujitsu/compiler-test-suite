      REAL A(10)/10*1./,B(10)/10*0./
      J=0
      DO 10 I=1,10
       IF(I.GE.5) THEN
        J=J+1
        IF(J.GE.2) B(J)=A(I)
       ENDIF
   10 CONTINUE
      WRITE(6,1000) B
 1000 FORMAT(10(1X,F7.2))
      STOP
      END
