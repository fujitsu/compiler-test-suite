      PROGRAM MAIN
       IMPLICIT COMPLEX*8 (C), LOGICAL*4 (L), INTEGER*2 (H)
       DIMENSION RA30(20), RA20(20), RA10(20)
       COMMON /BLK/ RA10, RA20, RA30
       DIMENSION RB10(20,10), RB20(20,10), RB30(20,10), CE10(20), CE20(
     X   20), CE30(20), LD10(20), LD20(20), LD30(20), HD10(20), HD20(20)
     X   , ID10(20), ID20(20), ID30(20)
       INTEGER*2 HT1
       INTEGER IT3, IT2, IT1
       PARAMETER (HT1 = 1, IT3 = 10, IT2 = 2, IT1 = 1)

       DATA RB10/200*1.0/ 
       DATA RB20/200*2.0/ 
       DATA RB30/200*3.0/ 
       DATA CE10/20*(2.0,1.0)/ 
       DATA CE20/20*(1.0,4.0)/ 
       DATA CE30/20*(3.0,5.0)/ 
       DATA LD10/20*.FALSE./ 
       DATA LD20/20*.FALSE./ 
       DATA LD30/20*.FALSE./ 
       DATA HD10/20*1/ 
       DATA HD20/20*2/ 
       DATA ID10/20*1/ 
       DATA ID20/20*1/ 
       DATA ID30/20*1/ 
       INTEGER II2, II1
       REAL RR3, RR2, RR1
       DO I=1,17,4
        RR1 = FLOAT (I)
        RR2 = FLOAT (I + 1)
        RR3 = FLOAT (I + 2)
        RX = FLOAT (I + 3)
        RA10(I) = RR1
        RA10(I+1) = RR2
        RA10(I+2) = RR3
        RA10(I+3) = RX
        RA20(21-I) = RR1
        RA20(20-I) = RR2
        RA20(19-I) = RR3
        RA20(18-I) = RX
        RA30(I) = RR1 * 2.
        RA30(I+1) = RR2 * 2.
        RA30(I+2) = RR3 * 2.
        RA30(I+3) = RX * 2.
       END DO

       DO I=2,6
        RA10(I) = RA10(I*2) * RA30(I*2+HT1)
        RA20(I) = RA20(I*2-1) * 2. + RA30(I*2+HT1)
        IF (RA10(I) .GE. RA20(I)) THEN
         LD10(I+1) = .TRUE.
         GO TO 15
        END IF
        RX = IMAG (CE10(I*3+HT1)) * RA30(I*2+1)
        RY = IMAG (CE20(I*3+1)) * 2.
        CE30(I*3) = CMPLX (RX, RY) - CE30(I*3-1)
        RA30(I*2+HT1) = RA30(I*3+HT1) - ABS (RX - RY)
   15   CONTINUE
        RX = IMAG (CE30(I*2)) - REAL (CE10(I))
        RY = IMAG (CE30(I*2-1)) - REAL (CE20(I))
        IF (RX .LT. RY) THEN
         CE10(I) = CE10(I) + CMPLX (RX, RY)
         LD20(I) = .TRUE.
        ELSE
         CE20(I-1) = CE20(I) + CMPLX (RY, RX)
         LD30(I) = .TRUE.
         ID10(I) = ID10(I*3) + I * 2
         ID20(I) = ID20(I*2) + I * 3
        END IF
       END DO

       WRITE (6, *) ' (RA10) ', RA10
       WRITE (6, *) ' (RA20) ', RA20
       WRITE (6, *) ' (RA30) ', RA30
       WRITE (6, *) ' (CE10) ', CE10
       WRITE (6, *) ' (CE20) ', CE20
       WRITE (6, *) ' (CE30) ', CE30
       WRITE (6, *) ' (LD10) ', LD10
       WRITE (6, *) ' (LD20) ', LD20
       WRITE (6, *) ' (LD30) ', LD30
       WRITE (6, *) ' (ID10) ', ID10
       WRITE (6, *) ' (ID20) ', ID20

       DO J=2,10,2
        IVAL = 0
        ICNT = 0
        II1 = MIN (J, 1) + 1
        II2 = ID10(II1)
        DO I=5,20
         IVAL = IVAL + MIN (II2, ID20(I))
         ID20(I) = ID10(I) - ID20(II1)
         IF (LD10(I) .OR. LD20(I)) THEN
          IF (LD30(I)) THEN
           ICNT = ICNT + 1
           LD30(I) = .NOT.LD10(I)
          END IF
         END IF
        END DO
        ID30(J) = IVAL
        ID30(J-1) = ICNT
       END DO
       WRITE (6, *) ' (ID20) ', ID20
       WRITE (6, *) ' (ID30) ', ID30
       WRITE (6, *) ' (LD30) ', LD30
       STOP 
      END
