      REAL A(9,10)/9*1.,9*2.,9*3.,9*4.,9*5.,9*6.,9*7.,9*8.,9*9.,9*10./
      LOGICAL L(9)/8*.FALSE.,.TRUE./
      DO 10 I=1,9
        DO 20 J=1,10
         IF(J.GE.8 .OR. L(I) ) GOTO 10
   20    A(I,J)=A(I,J)+I*J
   10 CONTINUE
   30 WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
