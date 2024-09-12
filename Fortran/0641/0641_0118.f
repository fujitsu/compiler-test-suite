      PROGRAM MAIN



       INTEGER ITR1(2)
       REAL*4 EV10(100)
       DATA EV10/11*0.0,15,30*1.5,50*0.0,14.2,6*0,.5/ 
       DATA ITR1/100,0/ 



       REAL*4 DV20(100)
       DATA (DV20(I), I=1,100,2)/50*.5/ 
       DATA (DV20(I), I=2,100,2)/50*10/ 



       INTEGER ITR3(2)
       REAL*4 EV30(64), EV31(64)
       INTEGER IS10
       PARAMETER (IS10 = 200)
       DATA EV30/31*2.5,31*2,3,75/ 
       DATA ITR3/2,64/ 
       DATA EV31/64*100/ 
       INTEGER II3, II2, II1, I1
       REAL RR1

       II1 = ITR1(1)
       DO I1=1,II1
        IF (EV10(I1) * EV10(I1) .GT. 200.) THEN
         GO TO 19
        END IF
       END DO

   19  WRITE (6, *) ' BRANCH OUT'

C$OMP PARALLEL SHARED (DV20,L,I) PRIVATE (K,J,I1,IS20)
C$OMP DO LASTPRIVATE (L,I)
       DO K=1,2
        L = K
        DO J=1,2

         DO I1=100,1,-1
          I = I1
          IS20 = LOG (DV20(I1))
          IF (IS20 .LT. 0) THEN
           GO TO 5
          END IF
          L = L + 1
         END DO
         I = 0
        END DO
    5   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) I, L

       II2 = ITR3(1)
       II3 = ITR3(1)
       RR1 = FLOAT (II3)
       DO I1=1,II2
        I = I1
        ES30 = EV30(I1) / II3
        IF (ES30 .GE. 1. .AND. EV30(I1) .GE. RR1) GO TO 30
        GO TO 39
   30   EV31(I1) = I1
       END DO
       I = MAX0 (II2, 0) + 1
       WRITE (6, *) '  NORMAL EXIT'
       GO TO 38

   39  WRITE (6, *) '  BRANCH OUT'
   38  WRITE (6, *) EV31, I

       STOP 
      END
