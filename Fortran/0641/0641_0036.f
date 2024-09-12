      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA40(20), DA30(20), DA20(20), DA10(20)
       COMMON /BLK1/ DA10, DA20, DA30, DA40
       DIMENSION LD20(20), LD10(20), IL20(20), IL10(20)
       COMMON /BLK2/ IL10, IL20, LD10, LD20
       DIMENSION CD30(20), CD20(20), CD10(20)
       COMMON /BLK3/ CD10, CD20, CD30
       DIMENSION DB10(20), DB20(40), DB30(40)
       COMMON /BLK4/ DX, DY, N1, IT1
       EQUIVALENCE (DA10(1), DB10(1)), (DA10(1), DB20(1))
       EQUIVALENCE (DB30(40), DA40(20)), (DX, DZ), (N1, NI), (N2, NJ)
       EQUIVALENCE (CDV, DX), (LD10(1), LX), (LD20(1), LY)
       INTEGER II6, II5, II4, II3, II2, II1, N11

       DO I=1,17,4
        IL10(I) = I
        IL10(I+1) = I + 1
        IL10(I+2) = I + 2
        IL10(I+3) = I + 3
        IL20(I) = 21 - I
        IL20(I+1) = 20 - I
        IL20(I+2) = 19 - I
        IL20(I+3) = 18 - I
       END DO

       N2 = 1
       II6 = -1
       DO N11=1,19,2
        II6 = II6 + 1
        N1 = N11
        IT1 = N11 * 2
        DA10(1) = DA20(IL10(NI)) * 2D0 - DB20(N11*2)
        CDV = CD10(N11) - CD20(NI+NJ) + CD30(NI+1)
        CD30(NI) = CD30(NI) + CDV
        CD20(NI) = CDV - CD20(N11)
        CD10(NI) = DCMPLX (DY, DX)
        IF (DZ .GE. DY) THEN
         LD10(II6+1) = .TRUE.
         DA30(IL20(NI)) = DZ
        ELSE
         LD20(II6+1) = .TRUE.
         DA40(IL10(NI)) = DY
        END IF
       END DO
       WRITE (6, *) ' (DA10) ', DA10
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (DA40) ', DA40
       WRITE (6, *) ' (CD10) ', CD10
       WRITE (6, *) ' (CD20) ', CD20
       WRITE (6, *) ' (CD30) ', CD30
       WRITE (6, *) ' (LD10) ', LD10
       WRITE (6, *) ' (LD20) ', LD20
       IF (LX .OR. LY) THEN

        DO I=1,6,5
         N1 = I + 10
         N2 = I + 20
         DA10(I) = DMIN1 (DA10(NI), DB20(NJ)) - DB30(I+30)
         DX = DX + DMIN1 (DA30(I), DA30(NI))
         DA30(I) = DB30(I+30) - DIMAG (CD10(I))
         N1 = I + 11
         N2 = I + 21
         DA10(I+1) = DMIN1 (DA10(NI), DB20(NJ)) - DB30(I+31)
         DX = DX + DMIN1 (DA30(I+1), DA30(NI))
         DA30(I+1) = DB30(I+31) - DIMAG (CD10(I+1))
         N1 = I + 12
         N2 = I + 22
         DA10(I+2) = DMIN1 (DA10(NI), DB20(NJ)) - DB30(I+32)
         DX = DX + DMIN1 (DA30(I+2), DA30(NI))
         DA30(I+2) = DB30(I+32) - DIMAG (CD10(I+2))
         N1 = I + 13
         N2 = I + 23
         DA10(I+3) = DMIN1 (DA10(NI), DB20(NJ)) - DB30(I+33)
         DX = DX + DMIN1 (DA30(I+3), DA30(NI))
         DA30(I+3) = DB30(I+33) - DIMAG (CD10(I+3))
         N1 = I + 14
         N2 = I + 24
         DA10(I+4) = DMIN1 (DA10(NI), DB20(NJ)) - DB30(I+34)
         DX = DX + DMIN1 (DA30(I+4), DA30(NI))
         DA30(I+4) = DB30(I+34) - DIMAG (CD10(I+4))
        END DO
       ELSE
        DO I=1,10
         N1 = I + 10
         N2 = I + 20
         DA10(I) = DMIN1 (DA10(NI), DB20(NJ)) - DB30(I+30)
         IF (LD10(NI) .OR. LD20(NI)) THEN
          DY = DMAX1 (DY, DA40(I))
         END IF
         DA30(I) = DB30(I+30) - DIMAG (CD10(I))
        END DO
       END IF

       DO I=1,6,5
        II1 = IL20(I+10) - I - 10
        II2 = IL20(I+11) - I - 11
        II3 = IL20(I+12) - I - 12
        II4 = IL20(I+13) - I - 13
        II5 = IL20(I+14) - I - 14
        IL20(I) = I - IL10(I+10) + 20
        IL20(I+1) = I - IL10(I+11) + 21
        IL20(I+2) = I - IL10(I+12) + 22
        IL20(I+3) = I - IL10(I+13) + 23
        IL20(I+4) = I - IL10(I+14) + 24
        IL10(I+4) = II5
        IL10(I+3) = II4
        IL10(I+2) = II3
        IL10(I+1) = II2
        IL10(I) = II1
       END DO
       IT1 = 40
       WRITE (6, *) ' (RX,RY) ', CDV
       WRITE (6, *) ' (DA10) ', DA10
       WRITE (6, *) ' (IL10) ', IL10
       WRITE (6, *) ' (IL20) ', IL20
       WRITE (6, *) ' (DA30) ', DA30
       STOP 
      END

      BLOCK DATA INIT
       IMPLICIT REAL*8 (D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA40(20), DA30(20), DA20(20), DA10(20)
       COMMON /BLK1/ DA10, DA20, DA30, DA40
       DIMENSION LD20(20), LD10(20), IL20(20), IL10(20)
       COMMON /BLK2/ IL10, IL20, LD10, LD20
       DIMENSION CD30(20), CD20(20), CD10(20)
       COMMON /BLK3/ CD10, CD20, CD30
       COMMON /BLK4/ DX, DY, N1, IT1
       DATA DA10, DA20, DA30, DA40/20*1.D0,20*4.D0,20*3.D0,20*2.D0/ 
       DATA LD10, LD20/40*.FALSE./ 
       DATA CD10, CD20, CD30/30*(2.D0,1.D0),30*(1.D0,4.D0)/ 
       DATA DX, DY/0.0D0,1.0D0/ 
       DATA N1, IT1/0,1/ 
      END
