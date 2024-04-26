      REAL A(10,10)/100*1./,B(10)/10*0./
      LOGICAL L(10)/10*.FALSE./
      DO 10 I=1,10
       L(11-I)=.TRUE.
       B(I)=I
       DO 20 J=1,10
       IF(L(J)) GOTO 10
       IF(B(I).GE.7) GOTO 10
   20  A(I,J)=2.
   10 CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
