      DIMENSION N(10),B(10)
      DATA N/5*0,5*1/
      DO 10 I=1,10
        B(I)=N(I)
 10   CONTINUE
      WRITE(6,1000) N
      WRITE(6,1001) B
 1000 FORMAT(I10)
 1001 FORMAT(F10.5)
      STOP
      END
