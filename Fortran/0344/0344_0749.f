      REAL A(10)/10*1./,B(10)/10*0./,C(10)/10*0./
      J=1
      DO 10 I=1,9
       IF(I.GE.5) THEN
        J=J+1
        C(J)=B(I)
        C(J-1)=A(I)
       ENDIF
   10 CONTINUE
      WRITE(6,1000) C
 1000 FORMAT(10(1X,F7.2))
 1001 FORMAT(1X,I8)
      STOP
      END
