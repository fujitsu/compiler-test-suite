      PROGRAM MAIN
      REAL*4  RDIM(10),DS(10),QP(10,10),ROLL(10),W(10,10)
      DATA DS/0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0/
      DATA QP/20*0.3,20*0.5,20*0.7,20*0.9,20*1.1/,M/5/,MM/3/
      DATA ROLL/0.2,0.4,0.6,0.8,1.0,0.1,0.3,0.5,0.7,0.9/
      DATA W/20*0.2,20*0.4,20*0.6,20*0.8,20*1.0/,DT/99.8/
C
      DO 40 I=1,10
   10    RDIM(I) = 0.0
         C = (DS(M) * QP(I,M) + DS(MM) * QP(I,MM)) / 2.0
         IF(C) 40,40,20
   20       V1 = 29.0 * C ** 0.125 - W(I,M)  / 2.0
         IF(V1) 40,40,30
   30       C = (QP(I,M) + QP(I,MM)) / 2.0
            C = V1 * C * DS(MM) * 1000.0
            RDIM(I) = C * 600.0
            ROLL(I) = ROLL(I) + C * DT
   40 CONTINUE
C
      WRITE(6,100) ROLL,RDIM
  100 FORMAT(1H ,5F15.3)
      STOP
      END
