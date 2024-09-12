      PROGRAM MAIN



       INTEGER ITR1
       REAL*4 EV10(10), EV11(10)
       DATA EV10/0,0,8*1.5/ 
       DATA EV11/10*100/ 



       REAL*8 DV20(100,2)
       REAL*4 EV20(100,2,2)
       INTEGER IV20(2)
       DATA DV20/-1,0,88*2,0,9*3,3,23,0,95*12,2,1/ 
       DATA EV20/400*3.5/ 
       DATA IV20/0,0/ 



       REAL*4 EV30(64)
       INTEGER IV30(64)
       DOUBLEPRECISION DS30
       INTEGER ITR2
       PARAMETER (DS30 = 3.5, ITR2 = 100)
       REAL RR1
       PARAMETER (RR1 = 1. / 1024.)
       INTEGER I2, I1
       ITR1 = 0
       DATA EV30/31*1.5,1.75,30*2,1.75,3/ 
       DATA IV30/64*2/ 


  100  CONTINUE
       DO I2=1,ITR1
        IF (EV10(I2) .GT. 0) GO TO 19
        EV11(I2) = I2
       END DO
   19  CONTINUE

       WRITE (6, 9998) EV10, EV11

       IF (ITR1 .EQ. 0) THEN
        ITR1 = 10
        GO TO 100
       END IF

       DO K=1,2
        DO J=1,2

         DO I2=1,97,4
          I1 = I2
          IF (DV20(I2,J)) 9, 12, 11
    9     EV20(I2,J,K) = DV20(I2,J) + EV20(I2,J,K) * RR1
   11     CONTINUE
          I1 = I2 + 1
          IF (DV20(I2+1,J)) 1, 12, 2
    1     EV20(I2+1,J,K) = DV20(I2+1,J) + EV20(I2+1,J,K) * RR1
    2     CONTINUE
          I1 = I2 + 2
          IF (DV20(I2+2,J)) 3, 12, 4
    3     EV20(I2+2,J,K) = DV20(I2+2,J) + EV20(I2+2,J,K) * RR1
    4     CONTINUE
          I1 = I2 + 3
          IF (DV20(I2+3,J)) 5, 12, 6
    5     EV20(I2+3,J,K) = DV20(I2+3,J) + EV20(I2+3,J,K) * RR1
    6     CONTINUE
         END DO
         GO TO 13
   12    IV20(J) = I1
   13    CONTINUE
        END DO

        WRITE (6, 9998) (IV20(L2), (DV20(L1,L2), L1=1,11), L2=1,2)
        IF (K .EQ. 1) THEN
         DV20(IV20(1),1) = -1D0
         DV20(IV20(2),2) = 1D0
        END IF
       END DO
       WRITE (6, 9998) EV20

       DO I2=1,64
        I = I2
        IF (REAL (IV30(I2) * EV30(I2), KIND = 8) .EQ. DS30) GO TO 30
        GO TO 39
   30   CONTINUE
       END DO
       I = 65

   39  CONTINUE
       WRITE (6, 9998) I, IV30, EV30
 9999  FORMAT(A,(G20.6))
 9998  FORMAT(G20.6)

       STOP 
      END
