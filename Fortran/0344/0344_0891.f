      REAL A(100)/100*0./
      LOGICAL L(100)/99*.FALSE.,.TRUE./
      DO 10 J=1,100
       IF(L(J)) GOTO 20
        A(J)=1.
   10 CONTINUE
C
   20 WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
