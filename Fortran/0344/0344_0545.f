      PROGRAM MAIN
      REAL*4  VVI(10),VVAL(10),VSQ(10),SA(10)
      INTEGER LCON(10)
      DATA LCON/1,-1,0,1,1,1,0,0,0,-1/
      DATA VVAL/10*0.1/,SA/5*0.8,5*0.2/
C
      DO 10 I=1,10
         IF(LCON(I)) 11,12,13
   11       VVI(I) = -VVAL(I)
            GO TO 15
   12       VVI(I) = 0.0
            GO TO 15
   13       VVI(I) = LOG(VVAL(I))
   15    VSQ(I) = VVI(I) * 10 -SA(I)
   10 CONTINUE
C
      WRITE(6,100) VSQ
  100 FORMAT(1H ,10F7.1)
      STOP
      END
