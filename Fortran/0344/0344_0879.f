      REAL A(10000)/10000*0./
      LOGICAL L(10000)/10000*.FALSE./
      DO 10 I=1,9999
       L(I+1)=.TRUE.
       DO 20 J=1,10000
        IF(L(J)) GOTO 10
         A(J)=1.
   20 CONTINUE
   10  L(I+1)=.FALSE.
      CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
