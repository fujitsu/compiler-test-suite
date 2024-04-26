      PROGRAM MAIN
      REAL*4  VMAX,VMIN,PM1(10),PM2(10)
      DATA PM1/0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0/
      DATA PM2/1.0,0.9,0.8,0.7,0.6,0.5,0.4,0.3,0.2,0.1/
C
      VMAX = PM1(1)
      VMIN = PM2(1)
      DO 10 I=2,10
         VMAX = MAX(VMAX,PM1(I))
         VMIN = MIN(VMIN,PM2(I))
   10 CONTINUE
C
      WRITE(6,100) VMAX,VMIN
  100 FORMAT(1H ,2F7.1)
      STOP
      END
