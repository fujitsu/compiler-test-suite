      REAL A(50)/10*10.,10*20.,10*30.,10*40.,10*50./
      DO 10 I=1,50
       SS=A(I)*1.
       IF(A(I).GE.25) GOTO 100
        B=SS*0.1
   10 CONTINUE
      X=2.
      GOTO 200
  100 X=1.
  200 WRITE(6,*) X,B
      STOP
      END
