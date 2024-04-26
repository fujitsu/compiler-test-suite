      REAL A(10)/10*0./,B(10)/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
      DO 10 I=1,100
       IF(I.GT.10) GOTO 20
       IF(B(I).LE.6.) GOTO 20
        A(I)=B(I)*I
   10 CONTINUE
   20 WRITE(6,100) A
  100 FORMAT(10(1X,F7.3))
      STOP
      END
