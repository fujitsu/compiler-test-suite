      REAL*8 A(100)/100*1.0/
      REAL S/1*0.0/
      DO 10 I=1,100
        S=S+A(I)
   10 CONTINUE
      WRITE(6,1000) S
 1000 FORMAT(F10.5)
      STOP
      END
