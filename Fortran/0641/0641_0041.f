      PROGRAM MAIN
       IMPLICIT REAL*8 (D), COMPLEX*16 (C), LOGICAL*4 (L)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DA40(20,20), 
     X   CD10(20,20), CD20(20,20), CD30(20,20), LD10(20)
       DATA DA10/400*5.D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*1.D0/ 
       DATA DA40/400*3.D0/ 
       DATA CD10/400*(2.D0,1.D0)/ 
       DATA CD20/400*(1.D0,3.D0)/ 
       DATA CD30/400*(2.D0,4.D0)/ 
       DATA LD10/20*.FALSE./ 
       EQUIVALENCE (CDX, DX), (NI, N1), (NJ, N2)
       INTEGER II3, II2, II1
       NI = 2
       DO I=1,10
        DO J=I+10,20
         DA10(NI,J-9) = DA20(I+10,J) - DA30(J-9,I+1)
         CD10(J-9,NI) = CD20(J-9,J) * CD30(I,J-10)
         CDX = CD10(I,J)
         DY = IMAG (CDX)
         IF (DX .LE. DY) THEN
          LD10(J) = .TRUE.
          DA20(I,J-9) = DA40(I,J) - DX + DY
          DA40(NI,I+10) = DA40(NI,I+10) + DMIN1 (DY, DX)
         END IF
         DA30(I,J) = DIMAG (CD10(I,J-9)) + DA20(I+10,J)
         DZ = DA30(I,J) - DX
         IF (DZ .GE. DY) THEN
          LD10(J-1) = .NOT.LD10(J)
          CD20(I,J) = DCMPLX (DZ, DY)
         END IF
        END DO
        NI = NI + 1
       END DO
       WRITE (6, *) ' (DA10) ', DA10
       WRITE (6, *) ' (CD10) ', CD10
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (LD10) ', LD10

       II1 = -1
       II1 = II1 + 1
       II2 = II1 * 6
       DO I=1,4,2
        DA40(I*2+II2,5) = DA30(21-I,5) - DA20(I,5)
        DA40(I*2+II2+1,7) = DA30(21-I,7) - DA20(I,7)
        DA40(I*2+II2+2,9) = DA30(21-I,9) - DA20(I,9)
        DA40(I*2+II2+3,11) = DA30(21-I,11) - DA20(I,11)
        DA40(I*2+II2+4,13) = DA30(21-I,13) - DA20(I,13)
        DA40(I*2+II2+5,15) = DA30(21-I,15) - DA20(I,15)
        DA20(I*2+II2,5) = DMAX1 (DA20(I,5), DA40(I,5))
        DA20(I*2+II2+1,7) = DMAX1 (DA20(I,7), DA40(I,7))
        DA20(I*2+II2+2,9) = DMAX1 (DA20(I,9), DA40(I,9))
        DA20(I*2+II2+3,11) = DMAX1 (DA20(I,11), DA40(I,11))
        DA20(I*2+II2+4,13) = DMAX1 (DA20(I,13), DA40(I,13))
        DA20(I*2+II2+5,15) = DMAX1 (DA20(I,15), DA40(I,15))
        DA40(I*2+II2+2,5) = DA30(20-I,5) - DA20(I+1,5)
        DA40(I*2+II2+3,7) = DA30(20-I,7) - DA20(I+1,7)
        DA40(I*2+II2+4,9) = DA30(20-I,9) - DA20(I+1,9)
        DA40(I*2+II2+5,11) = DA30(20-I,11) - DA20(I+1,11)
        DA40(I*2+II2+6,13) = DA30(20-I,13) - DA20(I+1,13)
        DA40(I*2+II2+7,15) = DA30(20-I,15) - DA20(I+1,15)
        DA20(I*2+II2+2,5) = DMAX1 (DA20(I+1,5), DA40(I+1,5))
        DA20(I*2+II2+3,7) = DMAX1 (DA20(I+1,7), DA40(I+1,7))
        DA20(I*2+II2+4,9) = DMAX1 (DA20(I+1,9), DA40(I+1,9))
        DA20(I*2+II2+5,11) = DMAX1 (DA20(I+1,11), DA40(I+1,11))
        DA20(I*2+II2+6,13) = DMAX1 (DA20(I+1,13), DA40(I+1,13))
        DA20(I*2+II2+7,15) = DMAX1 (DA20(I+1,15), DA40(I+1,15))
       END DO
       DA40(II2+10,5) = DA30(16,5) - DA20(5,5)
       DA40(II2+11,7) = DA30(16,7) - DA20(5,7)
       DA40(II2+12,9) = DA30(16,9) - DA20(5,9)
       DA40(II2+13,11) = DA30(16,11) - DA20(5,11)
       DA40(II2+14,13) = DA30(16,13) - DA20(5,13)
       DA40(II2+15,15) = DA30(16,15) - DA20(5,15)
       DA20(II2+10,5) = DMAX1 (DA20(5,5), DA40(5,5))
       DA20(II2+11,7) = DMAX1 (DA20(5,7), DA40(5,7))
       DA20(II2+12,9) = DMAX1 (DA20(5,9), DA40(5,9))
       DA20(II2+13,11) = DMAX1 (DA20(5,11), DA40(5,11))
       DA20(II2+14,13) = DMAX1 (DA20(5,13), DA40(5,13))
       DA20(II2+15,15) = DMAX1 (DA20(5,15), DA40(5,15))
       DO I=1,5
        II3 = -1
        DO J=5,15,2
         II3 = II3 + 1
         IF (LD10(J)) THEN
          DX = DREAL (CD10(J,21-I))
          DY = DIMAG (CD20(I*2+II3,I))
          DA30(I*(-2)+11,J+1) = DABS (DX - DY)
          CD20(I,I*2+II3) = DCMPLX (DY, DX)
         END IF
        END DO
       END DO
       WRITE (6, *) ' (DA20) ', DA20
       WRITE (6, *) ' (DA40) ', DA40
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (CD20) ', CD20
       STOP 
      END
