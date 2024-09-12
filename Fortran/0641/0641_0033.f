      PROGRAM MAIN
       IMPLICIT REAL*8 (D), COMPLEX*16 (C), LOGICAL*4 (L)
       DIMENSION DA10(20), DA20(20), DA30(20), DA40(20), CD10(20), CD20(
     X   20), CD30(20), LD10(20), LD20(20), LD30(20)
       INTEGER IT4, IT3, IT2, IT1
       PARAMETER (IT4 = 10, IT3 = 3, IT2 = 2, IT1 = 1)

       DATA DA10/20*1.D0/ 
       DATA DA20/20*2.D0/ 
       DATA DA30/20*3.D0/ 
       DATA DA40/20*4.D0/ 
       DATA CD10/20*(2.D0,1.D0)/ 
       DATA CD20/10*(2.D0,1.D0),10*(1.5D0,4.D0)/ 
       DATA CD30/20*(1.5D0,4.D0)/ 
       DATA LD10/20*.FALSE./ 
       DATA LD20/20*.FALSE./ 
       DATA LD30/20*.FALSE./ 
       INTEGER II4, II3, II2, II1
       DOUBLE PRECISION DD3, DD2, DD1

       DO I=2,10
        II1 = 20 - I
        II2 = 20 - I
        II4 = (20 - I) / 4
        II3 = I + II4 * 4 + 1
        IF (II1 .GT. 0) THEN
         DD1 = DA10(I)
         DD2 = DA30(I+2)
         DO J=I+1,17,4
          DD1 = DD1 + DA40(J)
          DA20(J) = DD2 * DREAL (CD20(J))
          DD1 = DD1 + DA40(J+1)
          DA20(J+1) = DD2 * DREAL (CD20(J+1))
          DD1 = DD1 + DA40(J+2)
          DA20(J+2) = DD2 * DREAL (CD20(J+2))
          DD1 = DD1 + DA40(J+3)
          DA20(J+3) = DD2 * DREAL (CD20(J+3))
         END DO
         DO J=II3,20,1
          DD1 = DD1 + DA40(J)
          DA20(J) = DD2 * DREAL (CD20(J))
         END DO
         DA10(I) = DD1
        END IF
        IF (II2 .GT. 0) THEN
         DD3 = DA10(I+1)
         DO J=I+1,20
          DX = DD3
          DY = DA20(J-2)
          CD30(J) = CD30(J) + DCMPLX (DX, DY)
          IF (DX .GT. DY) THEN
           DA40(J-2) = DX - DY
           LD10(J) = .TRUE.
          ELSE
           DA30(I+1) = DA30(I+1) + DIMAG (CD20(J))
           LD20(J) = .TRUE.
          END IF
         END DO
        END IF
        DO J=I+1,20
         IF (LD10(J)) THEN
          CD10(J-1) = CD10(J) - CD30(J-1)
         END IF
        END DO
        DO J=I+1,20
         IF (LD20(J)) THEN
          CD20(J-1) = CD30(J) - CD10(J-1)
         END IF
        END DO
       END DO
       WRITE (6, *) ' (DA10) ', DA10
       WRITE (6, *) ' (DA20) ', DA20
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (DA40) ', DA40
       WRITE (6, *) ' (CD10) ', CD10
       WRITE (6, *) ' (CD20) ', CD20
       WRITE (6, *) ' (CD30) ', CD30

       DO I=1,3
        IF (LD10(I)) THEN
         N2 = I
        ELSE
         N2 = I + 1
        END IF

        DO J=10,I+2,-1
         DX = REAL (CD10(J)) + DIMAG (CD30(J-1))
         DY = DA10(I+2) - DIMAG (CD20(J+N2))
         DZ = DABS (DX - DY)
         IF (DX .GT. DY) THEN
          LD30(J) = .TRUE.
          DZ = DA20(J+1)
          IF (DZ .GT. DX) THEN
           DA30(J+1) = DA30(J) - DX
          ELSE
           DA10(J+1) = DREAL (CD10(J+1))
           CD20(J+2) = DCMPLX (DY, DZ)
          END IF
         END IF
         CD10(I+2) = CD10(I+2) + DCMPLX (DX, DY)
         DA40(J+I+2) = DA40(J+I) - DMIN1 (DX, DZ)
        END DO
       END DO
       WRITE (6, *) ' (DA10) ', DA10
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (DA40) ', DA40
       WRITE (6, *) ' (CD10) ', CD10
       WRITE (6, *) ' (CD20) ', CD20
       WRITE (6, *) ' (LD30) ', LD30

       STOP 
      END
