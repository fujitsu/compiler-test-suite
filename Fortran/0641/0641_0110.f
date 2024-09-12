      PROGRAM MAIN

       REAL*4 EV10(10)
       DATA EV10/0,1,2,3,4,5,6,7,8,9/ 

       REAL*8 DV20(2,2)
       REAL*4 EV20(10)
       DATA DV20/1,2,3,0/ 
       DATA EV20/1,2,3,4,5,6,7,8,9,10/ 

       REAL*4 EV30(10), EVMX
       INTEGER IV30(10)
       DOUBLEPRECISION DS30
       PARAMETER (DS30 = 3.5)
       INTEGER I2, I1
       REAL RR5, RR4, RR3, RR2, RR1
       DOUBLE PRECISION DD1
       EVMX = 0.
       DATA EV30/5*1.5,5*2/ 
       DATA IV30/10*2/ 

       DO I2=1,10
        ES10 = I2 - EV10(I2)
        IF (ES10 .GT. 1.) GO TO 18
        IF (ES10 .GT. 0) GO TO 19
       END DO
   18  WRITE (6, *) '  18 '

   19  CONTINUE

       WRITE (6, *) EV10

       DO I2=1,2
        I = I2
        DO J=1,2
         IF (DV20(I2,J) .EQ. 0) GO TO 29
         DD1 = 1 / DV20(I2,J)
         DO K=1,6,5
          RR1 = EV20(K) * DD1
          RR2 = EV20(K+1) * DD1
          RR3 = EV20(K+2) * DD1
          RR4 = EV20(K+3) * DD1
          RR5 = EV20(K+4) * DD1
          EV20(K+4) = RR5
          EV20(K+3) = RR4
          EV20(K+2) = RR3
          EV20(K+1) = RR2
          EV20(K) = RR1
         END DO
        END DO
       END DO
       I = 3
   29  CONTINUE

       WRITE (6, *) I, DV20, EV20

       DO I2=1,10
        I1 = I2
        EVMX = MAX (EVMX, EV30(I2))
        IF (REAL (IV30(I2) * EV30(I2), KIND = 8) .EQ. DS30) GO TO 37
       END DO
       GO TO 39
   37  CONTINUE
       IV30(I1) = IV30(I1) * 2

   39  CONTINUE
       WRITE (6, *) EVMX, IV30

       STOP 
      END
