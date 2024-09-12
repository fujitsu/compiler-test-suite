      PROGRAM MAIN
       INTEGER*4 IA(10,10), IB(10)
       DATA IB/1,2,3,4,5,6,7,8,9,10/ 
       DATA IA/100*1./ 
       REAL*4 RA(10,10), RB(10,10,10)
       DATA RB/1000*1./ 
       DATA RA/100*1./ 
       REAL*8 DA(10,10)
       DATA DA/100*1./ 
       INTEGER II1
       LOGICAL LL2, LL1

       ID = 0

       DO I=1,10
   10   IF (IB(I) .GT. 8) THEN
         IF (IB(I) .NE. 5) THEN
          ID = ID + 1
          LL2 = I .GE. 8
          DO J=1,10
           IA(I,J) = I + J + ID
           RA(I,J) = IA(I,J) - RA(I,J)
           II1 = I + J
           LL1 = LL2
           DO K=1,10
            RB(I,J,K) = II1 + K
            IF (LL1) GO TO 21
            IF (K .GE. 3) GO TO 2
   17       RB(I,J,K) = 1. + RB(I,J,K)
    2       IF (K .EQ. 5 .OR. RB(I,J,K) .LE. 3.) GO TO 17
           END DO
          END DO
          IB(I) = I - 1
          GO TO 1
   21     IF (I .EQ. 3) GO TO 10
          DA(I,I) = I * I
         END IF
        END IF
    1   CONTINUE
       END DO
       WRITE (6, *) 'IA=', IA
       WRITE (6, *) 'IB=', IB
       WRITE (6, *) 'RA=', RA
       WRITE (6, *) 'RB=', RB
       WRITE (6, *) 'DA=', DA

       DO I=1,10
        IF (IB(I) .GE. 5) THEN
         WRITE (6, *) 'LOOP2'
        ELSE
         GO TO 360
        END IF
  310   CONTINUE
        IB(I) = I - 1
        GO TO 350
  360   DO J=1,10
         RA(I,J) = RA(I,J) + IB(J)
         IF (J .GE. 3) GO TO 322
         GO TO 310
  322    RA(I,J) = 0.
        END DO
        IF (I .EQ. 3) GO TO 350
        GO TO 120
  350   CONTINUE
       END DO

       WRITE (6, *) '*** LOOP2 ***'
       WRITE (6, *) 'IA=', IA
       WRITE (6, *) 'IB=', IB
       WRITE (6, *) 'RA=', RA
       WRITE (6, *) 'RB=', RB
       WRITE (6, *) 'DA=', DA
  120  STOP 
      END
