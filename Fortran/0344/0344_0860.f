      REAL A(10,10)/100*1./
      LOGICAL L(10)/2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
      DO 10 I=1,10
       DO 20 J=1,10
       IF(L(I)) GOTO 10
   20  A(I,J)=2.
   10 CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
