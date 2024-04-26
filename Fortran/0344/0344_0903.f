      REAL A(9,10)/9*1.,9*2.,9*3.,9*4.,9*5.,9*6.,9*7.,9*8.,9*9.,9*10./
      LOGICAL L(10)/10*.FALSE./
      DO 10 I=1,9
       IF(I.EQ.5) L(I)=.TRUE.
       DO 20 J=1,9
       IF(MOD(J,6).EQ.0 .OR. L(I) .OR. (SIN(A(I,J)).LT.0.2) ) GOTO 10
   20    A(I,J)=A(I,J)*COS(A(I,J+1))
   10  CONTINUE
   30  WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
