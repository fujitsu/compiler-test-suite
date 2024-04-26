      REAL A(10)/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
       DO 10 I=1,9
        IF((I+1).GE.8.) THEN
         GOTO 20
        ELSE
         A(I)=A(I)*2
        ENDIF
   10  CONTINUE
   20  WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
