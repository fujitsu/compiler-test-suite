      REAL A(10)/10*1./,B(10)/10*0./,S/0./
      LOGICAL L(10)/10*.FALSE./
      DO 10 I=1,10
       IF(L(I)) GOTO 20
       S=S+A(I)
       B(I)=S
   10 CONTINUE
   20 WRITE(6,1000) B
      WRITE(6,1000) S
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
