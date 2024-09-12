      PROGRAM MAIN
       IMPLICIT COMPLEX*8 (C), LOGICAL*4 (L)
       DIMENSION RE30(20,20), RE20(20,20), RE10(20,20)
       COMMON /BLK1/ RE10, RE20, RE30
       DIMENSION CE30(20,20), CE20(20,20), CE10(20,20)
       COMMON /BLK2/ CE10, CE20, CE30
       DIMENSION LD30(20), LD20(20), LD10(20)
       COMMON /BLK3/ LD10, LD20, LD30
       COMMON /BLK4/ IP1, JP1, IP2, JP2
       DIMENSION RA10(20,20), RA20(20,20), RB10(20), RB20(20), ID10(20),
     X    ID20(20), ID30(20,20), ID40(20,20)

       EQUIVALENCE (RA10(1,1), RE10(1,1))
       EQUIVALENCE (RE30(1,1), RB10(1)), (RE30(20,20), RB20(20))
       EQUIVALENCE (RE20(1,1), RZ)
       EQUIVALENCE (ID20(1), IP1), (RE20(1,1), RX), (RE20(20,20), RY)
       REAL RR1
       PARAMETER (RR1 = 1. / 2.)
       INTEGER II3, II2, II1, JP21, IP21

       DO I=1,17,4
        LD10(I) = .FALSE.
        LD10(I+1) = .FALSE.
        LD10(I+2) = .FALSE.
        LD10(I+3) = .FALSE.
        LD20(I) = .FALSE.
        LD20(I+1) = .FALSE.
        LD20(I+2) = .FALSE.
        LD20(I+3) = .FALSE.
        LD30(I) = .FALSE.
        LD30(I+1) = .FALSE.
        LD30(I+2) = .FALSE.
        LD30(I+3) = .FALSE.
        ID10(I) = 21 - I
        ID10(I+1) = 20 - I
        ID10(I+2) = 19 - I
        ID10(I+3) = 18 - I
        ID20(I) = I
        ID20(I+1) = I + 1
        ID20(I+2) = I + 2
        ID20(I+3) = I + 3
       END DO

       DO I=1,20
        RY = FLOAT (I)
        DO J=1,17,4
         RVAL = FLOAT (J)
         RE10(J,I) = RVAL
         RVAL = 2. + RVAL
         RE20(I,J) = RVAL * RR1
         RE30(I,J) = RVAL - 1.
         RX = FLOAT (J)
         RA20(I,J) = RX - RY
         CE10(I,J) = CMPLX (RX, RY)
         CE20(I,J) = CMPLX (RY, RX)
         CE30(I,J) = (1.0,1.0) - CMPLX (RX, RY)
         RVAL = FLOAT (J + 1)
         RE10(J+1,I) = RVAL
         RVAL = 2. + RVAL
         RE20(I,J+1) = RVAL * RR1
         RE30(I,J+1) = RVAL - 1.
         RX = FLOAT (J + 1)
         RA20(I,J+1) = RX - RY
         CE10(I,J+1) = CMPLX (RX, RY)
         CE20(I,J+1) = CMPLX (RY, RX)
         CE30(I,J+1) = (1.0,1.0) - CMPLX (RX, RY)
         RVAL = FLOAT (J + 2)
         RE10(J+2,I) = RVAL
         RVAL = 2. + RVAL
         RE20(I,J+2) = RVAL * RR1
         RE30(I,J+2) = RVAL - 1.
         RX = FLOAT (J + 2)
         RA20(I,J+2) = RX - RY
         CE10(I,J+2) = CMPLX (RX, RY)
         CE20(I,J+2) = CMPLX (RY, RX)
         CE30(I,J+2) = (1.0,1.0) - CMPLX (RX, RY)
         RVAL = FLOAT (J + 3)
         RE10(J+3,I) = RVAL
         RVAL = 2. + RVAL
         RE20(I,J+3) = RVAL * RR1
         RE30(I,J+3) = RVAL - 1.
         RX = FLOAT (J + 3)
         RA20(I,J+3) = RX - RY
         CE10(I,J+3) = CMPLX (RX, RY)
         CE20(I,J+3) = CMPLX (RY, RX)
         CE30(I,J+3) = (1.0,1.0) - CMPLX (RX, RY)
        END DO
       END DO
       DO J=1,17,4
        II1 = J + 1
        II2 = J + 2
        II3 = J + 3

        DO I=1,17,4
         ID30(I,J) = J
         ID30(I+1,J) = J
         ID30(I+2,J) = J
         ID30(I+3,J) = J
         ID30(I,J+1) = II1
         ID30(I+1,J+1) = II1
         ID30(I+2,J+1) = II1
         ID30(I+3,J+1) = II1
         ID30(I,J+2) = II2
         ID30(I+1,J+2) = II2
         ID30(I+2,J+2) = II2
         ID30(I+3,J+2) = II2
         ID30(I,J+3) = II3
         ID30(I+1,J+3) = II3
         ID30(I+2,J+3) = II3
         ID30(I+3,J+3) = II3
         ID40(I,J) = I
         ID40(I+1,J) = I + 1
         ID40(I+2,J) = I + 2
         ID40(I+3,J) = I + 3
         ID40(I,J+1) = I
         ID40(I+1,J+1) = I + 1
         ID40(I+2,J+1) = I + 2
         ID40(I+3,J+1) = I + 3
         ID40(I,J+2) = I
         ID40(I+1,J+2) = I + 1
         ID40(I+2,J+2) = I + 2
         ID40(I+3,J+2) = I + 3
         ID40(I,J+3) = I
         ID40(I+1,J+3) = I + 1
         ID40(I+2,J+3) = I + 2
         ID40(I+3,J+3) = I + 3
        END DO
       END DO

       IP1 = 1
       JP1 = 20

       DO I=1,JP1-1
        IP1 = IP1 + 1
        ID10(I) = IP1
        IP2 = JP1 - I
        RX = IMAG (CE10(IP1,IP2)) - RB10(IP2)
        IF (RX .GT. 1.) THEN
         LD20(I) = .TRUE.
        ELSE
         LD30(I) = .TRUE.
        END IF
        IF (IP1 .EQ. I) THEN
         DO J=JP1,11,-1
          IF (LD10(J)) THEN
           JP2 = J - 10
           ID30(I,J-10) = NINT (RE20(I,J-10)) / (J - 10) + IP2
           RA10(IP1,J) = AMAX1 (RB20(J-10), RB10(IP1))
          ELSE
           ID40(I,J) = IP1 + J
           RA20(JP1,J) = AMAX1 (RX, RY, RE30(I,J))
          END IF
          JP2 = J - 1
          CE10(I,J) = CE10(IP1,J-1) + CE20(I,J)
         END DO
        ELSE
         DO J=JP1,11,-1
          IF (LD10(J)) THEN
           JP2 = J - 10
           ID30(I,J-10) = NINT (RE20(I,J-10)) / (J - 10) + IP2
           RA10(IP1,J) = AMAX1 (RB20(J-10), RB10(IP1))
          ELSE
           ID40(I,J) = IP1 + J
           RA20(JP1,J) = AMAX1 (RX, RY, RE30(I,J))
          END IF
          JP2 = J - 1
          CE10(I,J) = CE10(IP1,J-1) + CE20(I,J)
         END DO
        END IF
        RB10(21-I) = AMAX1 (RB10(21-I), RX, RY)
       END DO
       WRITE (6, *) ' (ID10) ', ID10
       WRITE (6, *) ' (LD10) ', LD10
       WRITE (6, *) ' (RA10) ', RA10
       WRITE (6, *) ' (ID20) ', ID20
       WRITE (6, *) ' (LD20) ', LD20
       WRITE (6, *) ' (RA20) ', RA20
       WRITE (6, *) ' (ID30) ', ID30
       WRITE (6, *) ' (LD30) ', LD30
       WRITE (6, *) ' (ID40) ', ID40
       WRITE (6, *) ' (CE10) ', CE10
       WRITE (6, *) ' (RB10) ', RB10

       IP1 = 1
       DO IP21=11,20
        IP2 = IP21
        RX = RZ + RB10(IP21)
        RY = AMAX1 (RY, RB20(IP1))
        IF (IP21 .LE. 14) THEN
         DO JP21=1,10
          JP2 = JP21
          JP1 = JP21 + 10
          IF (LD10(JP21+10) .OR. LD20(JP21)) THEN
           LD30(JP21) = .NOT.LD20(IP21-JP21)
           ID40(IP21,JP21) = ID20(IP21-JP21) + IP21
          ELSE
           CE10(IP21,JP21+10) = CE10(IP1,JP21) + CMPLX (RX, RY)
           CE20(IP1,JP21) = CE20(IP21,JP21+10) - CE30(IP21,JP21)
          END IF
         END DO
        ELSE
         DO JP21=1,10
          JP2 = JP21
          JP1 = JP21 + 10
          IF (LD10(JP21+10) .OR. LD20(JP21)) THEN
           LD30(JP21) = .NOT.LD20(IP21-JP21)
           ID40(IP21,JP21) = ID20(IP21-JP21) + IP21
          ELSE
           CE10(IP21,JP21+10) = CE10(IP1,JP21) + CMPLX (RX, RY)
           CE20(IP1,JP21) = CE20(IP21,JP21+10) - CE30(IP21,JP21)
          END IF
         END DO
        END IF
        JP2 = 11
        IP1 = IP1 + 1
       END DO
       IP2 = 21
       WRITE (6, *) ' RX = ', RX
       WRITE (6, *) ' RY = ', RY
       WRITE (6, *) ' (LD30) ', LD30
       WRITE (6, *) ' (ID40) ', ID40
       WRITE (6, *) ' (CE10) ', CE30
       WRITE (6, *) ' (CE20) ', CE10
       STOP 
      END
