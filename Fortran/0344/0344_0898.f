      REAL A(9,10)/9*1.,9*2.,9*3.,9*4.,9*5.,9*6.,9*7.,9*8.,9*9.,9*10./
       DO 10 I=1,9
        DO 20 J=1,10
         IF(I.GE.5) GOTO 10
   20    A(I,J)=I*J
   10 CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
