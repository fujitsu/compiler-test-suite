      PROGRAM MAIN



       REAL*4 EV10(10), EV11(10)
       DATA EV10/4*0,5*-2.5,1.5/ 
       DATA EV11/10*100/ 



       REAL*8 DV20(2,100)
       REAL*4 EV20(100)
       INTEGER IV20(101)
       DATA (DV20(1,I), I=1,100)/1,-2,88*5,-1,9*-3/ 
       DATA (DV20(2,I), I=1,100)/1,0,88*-1,0,9*3/ 
       DATA EV20/100*3.5/ 
       DATA IV20/101*1/ 



       REAL*4 EV30(64)
       INTEGER IV30(64)
       DOUBLEPRECISION DS30
       INTEGER ITR2, ITR1
       PARAMETER (DS30 = 3.5, ITR2 = 100, ITR1 = 10)
       REAL RR1
       PARAMETER (RR1 = 1. / 1024.)
       DATA EV30/31*1.5,31*2,3,1.75/ 
       DATA IV30/64*2/ 
       INTEGER I1

       DO I1=1,10
        IF (EV10(I1) .GT. 0) GO TO 19
        EV11(I1) = I1 + EV10(I1)
       END DO
       EV11(10) = 1000.
   19  CONTINUE

       WRITE (6, *) EV10, EV11

       DO I1=1,97,4
        I = I1
        IF (DV20(1,I1)) 21, 29, 20
   21   EV20(I1) = DV20(1,I1) + EV20(I1) * RR1
   20   CONTINUE
        I = I1 + 1
        IF (DV20(1,I1+1)) 1, 29, 2
    1   EV20(I1+1) = DV20(1,I1+1) + EV20(I1+1) * RR1
    2   CONTINUE
        I = I1 + 2
        IF (DV20(1,I1+2)) 3, 29, 4
    3   EV20(I1+2) = DV20(1,I1+2) + EV20(I1+2) * RR1
    4   CONTINUE
        I = I1 + 3
        IF (DV20(1,I1+3)) 5, 29, 6
    5   EV20(I1+3) = DV20(1,I1+3) + EV20(I1+3) * RR1
    6   CONTINUE
       END DO
       I = 101
   29  IV20(I) = I

       WRITE (6, *) IV20, DV20
       WRITE (6, *) EV20

       DO I1=1,64
        I = I1
        IF (IV30(I1) * EV30(I1) .EQ. 0) GO TO 30
        GO TO 39
   30   CONTINUE
       END DO
       I = 65

       WRITE (6, *) ' BRANCH OUT HAS NOT HAPPENED.'
   39  CONTINUE
       WRITE (6, *) I

       STOP 
      END
