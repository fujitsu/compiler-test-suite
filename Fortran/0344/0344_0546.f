      PROGRAM MAIN
      REAL*4  VVI(10),VVAL(10),VSQ(10),EPS,DSX,DSY
      DATA EPS/0.5/,DSX/0.9/,DSY/0.1/
      DATA VVAL/0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0/
C
      DO 10 I=1,10
         IF(VVAL(I).GT.EPS) THEN
            VVI(I) = SQRT(VVAL(I))
         ELSE IF(VVAL(I).LT.EPS) THEN
            VVI(I) = -1.0 / VVAL(I)
         ELSE
            VVI(I) = 0.0
         ENDIF
         VSQ(I) = VVI(I) * DSX + VVAL(I) * DSY
   10 CONTINUE
C
      WRITE(6,100) VSQ
  100 FORMAT(1H ,10F7.1)
      STOP
      END
