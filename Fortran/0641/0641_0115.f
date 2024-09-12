      PROGRAM MAIN



       REAL*4 EV10(10)
       DATA EV10/0,3*1,5*-2.5,0/ 



       REAL*4 DV20(200)
       INTEGER J
       DATA (DV20(I), I=1,200,2)/1,2,30*5,0,36*4,-1,30*-3/ 
       DATA (DV20(I), I=2,200,4)/-1,2,0,8*5,36*4,1,2*36/ 
       DATA (DV20(I), I=4,200,4)/1,-2,0,28*-5,6*-4,1,12*-3/ 



       REAL*4 EV30(64)
       INTEGER ITR2, ITR1
       PARAMETER (ITR2 = 200, ITR1 = 10)
       INTEGER I1
       J = 10
       DATA EV30/31*1.5,31*2,3,1.75/ 

       DO I1=1,10
        IF (EV10(I1) .EQ. 0) THEN
        ELSE
         GO TO 19
        END IF
       END DO

 19    CONTINUE

       DO I1=2,200,2
        I = I1
        IF (DV20(I1) .GT. 0) THEN
         DV20(I1) = SQRT (DV20(I1))
        ELSE
         GO TO 29
        END IF
        J = J + 3
       END DO
       I = 202
   29  CONTINUE
       WRITE (6, 9999) I, J
       WRITE (6, 9999) DV20

       DO I1=1,64
        I = I1
        IF (SIN (EV30(I1)) .GT. 0) GO TO 30
        EV30(I1) = SIN (EV30(I1))
        GO TO 39
   30   EV30(I1) = COS (EV30(I1))
       END DO
       I = 65

 39    WRITE (6, 9999) EV30, I
 9998  FORMAT(A)
 9999  FORMAT((G20.6))

       STOP 
      END
