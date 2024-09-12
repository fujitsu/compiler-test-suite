      PROGRAM MAIN
       IMPLICIT REAL*8 (D), COMPLEX*16 (C), LOGICAL*4 (L)
       DIMENSION DA10(20,20), DA20(40,10), DA30(10,40), DA40(20,20), 
     X   CD10(20,20), CD20(10,40), CD30(40,10), LD10(20), LD20(20,20), 
     X   LD30(20,20), IL10(20), IL20(20), IL30(40)

       DATA DA10/400*1.0D0/ 
       DATA DA20/200*4.D0,200*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DA40/200*5.D0,200*6.D0/ 
       DATA CD10/400*(-1.D0,-2.D0)/ 
       DATA CD20/400*(2.D0,4.D0)/ 
       DATA CD30/400*(-3.D0,5.D0)/ 
       DATA LD10/20*.FALSE./ 
       DATA LD20/400*.FALSE./ 
       DATA LD30/400*.FALSE./ 
       INTEGER II6, II5, II4, II3, II2, II1

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
       DO I=1,37,4
        IL30(I) = I
        IL30(I+1) = I + 1
        IL30(I+2) = I + 2
        IL30(I+3) = I + 3
       END DO

       DO I=2,IL10(10)
        II2 = IL20(I) - 1
        II6 = (IL20(I) - 1) / 4
        II5 = II6 * 4 + 2
        DO J=2,IL20(I)-3,4
         IP = IL30(J+1)
         CD10(J,IP) = CD20(I,IL30(41-J)) + DCMPLX (DA40(J,IP))
         IP = IL30(J+2)
         CD10(J+1,IP) = CD20(I,IL30(40-J)) + DCMPLX (DA40(J+1,IP))
         IP = IL30(J+3)
         CD10(J+2,IP) = CD20(I,IL30(39-J)) + DCMPLX (DA40(J+2,IP))
         IP = IL30(J+4)
         CD10(J+3,IP) = CD20(I,IL30(38-J)) + DCMPLX (DA40(J+3,IP))
        END DO
        DO J=II5,IL20(I),1
         IP = IL30(J+1)
         CD10(J,IP) = CD20(I,IL30(41-J)) + DCMPLX (DA40(J,IP))
        END DO
        IF (II2 .GT. 0) THEN
         II1 = IL10(I)
         DO J=2,IL20(I)
          JP = IL30(41-J)
          DA10(II1,IL20(J)) = DA20(IL30(J+1),I) * DA30(I,JP)
          DA40(J,I) = DIMAG (CD30(JP,I)) - DA10(I-1,IL20(J))
          IF (DA40(J,I) .LT. DFLOAT (JP)) THEN
           LD10(J) = .NOT.LD20(I,IL30(J+1))
          ELSE
           LD20(I,J) = .NOT.LD30(IL20(I),J)
          END IF
         END DO
        END IF
       END DO

       M1 = IL10(1)
       M2 = MIN (2, IL30(1))
       II4 = M2 * 2

       DO I=1,IL10(5)
        II3 = II4
        DO J=2,I+M1+M2
         IP1 = J + IL10(I) + 1
         IP2 = J + IL10(I) - 1
         JP1 = J + II3 + M1 + I
         DA20(J+M2-1,IL10(I)) = DA20(JP1,I) + DA30(M1,J+M2-1)
         DA30(I,JP1) = DMAX1 (DA10(I,J), DA40(IP1,I))
         IF (LD10(J)) THEN
          CDX = CD10(IP2,J) * CD20(I,IP1)
          CDY = CD30(IP2,I) + CD10(I,J)
         ELSE
          CDX = CD30(IP1,IL10(I)) - CD10(J,IP2)
          CDY = CD20(IL10(I),JP1)
         END IF
         DX = DREAL (CDX)
         DY = DIMAG (CDY)
         CD20(IL10(I),J+M2-1) = DCMPLX (DX, DY)
         CD30(IP2,I) = CDX + CDY
         CD10(IP2,J) = CDX - CDY
         IF (DX .GT. DY) THEN
          LD30(I,J) = .TRUE.
          DA10(I+M2,J) = DX
         ELSE
          LD20(I,J) = .TRUE.
          DA10(J,I) = DY
         END IF
         LD10(J) = .NOT.LD20(J,I) .OR. LD30(J,I)
        END DO
       END DO
       WRITE (6, *) ' (DA10) ', DA10
       WRITE (6, *) ' (DA20) ', DA20
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (CD10) ', CD10
       WRITE (6, *) ' (CD20) ', CD20
       WRITE (6, *) ' (CD30) ', CD30
       WRITE (6, *) ' (LD10) ', LD10
       WRITE (6, *) ' (LD20) ', LD20
       WRITE (6, *) ' (LD30) ', LD30
       STOP 
      END
