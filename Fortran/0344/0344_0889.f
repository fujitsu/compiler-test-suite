      REAL A(10,5000)/50000*1./
      LOGICAL L(5000)/5000*.FALSE./
      DO 10 I=1,10
       L(5001-I)=.TRUE.
       DO 20 J=1,5000
       IF(L(J)) GOTO 10
   20  A(I,J)=2.
   10 CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
