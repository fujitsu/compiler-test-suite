      REAL A(10,10)/100*1./,B(10)/10*0./
      DO 10 I=1,10
       IF(I.GE.5) GOTO 30
       DO 20 J=1,10
        A(I,J)=I*J
   20 CONTINUE
   10  B(I)=A(I,I)
   30 WRITE(6,1000) A,B
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
