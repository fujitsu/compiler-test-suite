      PROGRAM MAIN



       INTEGER IS10
       REAL*4 EV10(100)
       DATA EV10/11*0.25,31*1.5,50*-2.5,8*0/ 



       REAL*4 DV20(200)
       DATA (DV20(I), I=1,200,2)/1,2,30*5,0,36*4,-1,30*-3/ 
       DATA (DV20(I), I=2,200,2)/37*2,-2,62*4/ 



       REAL*4 EV30(64)
       INTEGER ITR2, ITR1
       PARAMETER (ITR2 = 200, ITR1 = 100)
       DATA EV30/31*1.5,31*2,3,1.75/ 
       INTEGER I1
       LOGICAL LL1

       DO K=1,3
        LL1 = K .NE. 3
        DO J=1,3
         DO I1=1,100
          IS10 = EV10(I1)
          IF (EV10(I1) .EQ. FLOAT (IS10)) THEN
           WRITE (6, *) ' BRANCH OUT OCCURED.'
           GO TO 19
          END IF
         END DO

   19    CONTINUE
         IF (LL1 .OR. J .NE. 3) EV10(J+K*3+89) = 1.5
        END DO
       END DO

       DO K=1,2
        DO I1=2,200,2
         I = I1
         IF (DV20(I1) .LT. 0) THEN
          GO TO 5
         END IF
         DV20(I1) = SQRT (DV20(I1))
        END DO
        I = 202
 5      WRITE (6, 90) I
   90   FORMAT(5(1X,I10.3))
       END DO

       DO K=1,2
        DO J=1,2
         DO I1=1,64
          I = I1
          IF (SIN (EV30(I1)) .GT. 0) GO TO 30
          EV30(I1) = SIN (EV30(I1))
          GO TO 39
   30     EV30(I1) = COS (EV30(I1))
         END DO
         I = 65

 39      WRITE (6, 91) EV30
         WRITE (6, 92) I
   91    FORMAT(5(1X,E14.7))
   92    FORMAT(5(1X,I10.3))
        END DO
       END DO

       STOP 
      END
