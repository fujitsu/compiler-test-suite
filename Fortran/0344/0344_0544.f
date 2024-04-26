      PROGRAM MAIN
      REAL*4  VMAX,PM2(10)
      DATA PM2/1.0,0.9,0.8,0.7,0.6,0.5,0.4,0.3,0.2,0.1/
C
      VMAX = PM2(1)
      MAXIND = 1
      DO 10 I=2,10
         IF(VMAX.LT.PM2(I)) THEN
            VMAX = PM2(I)
            MAXIND = I
         ENDIF
   10 CONTINUE
C
      WRITE(6,100) MAXIND
  100 FORMAT(1H ,I4)
      STOP
      END
