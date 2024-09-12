      PROGRAM MAIN
       IMPLICIT REAL*8 (D), COMPLEX*16 (C)
       DIMENSION DA10(20), DA20(20), DA30(20), DA40(20), CD10(20), CD20(
     X   20), CD30(20)
       DOUBLEPRECISION DD1, DD2
       PARAMETER (DD1 = 1D0 / 2D0, DD2 = 1D0 / 2D0)
       DATA DA10/20*1.D0/ 
       DATA DA20/20*4.D0/ 
       DATA DA30/20*3.D0/ 
       DATA DA40/20*2.D0/ 
       DATA CD10/20*(2.D0,4.D0)/ 
       DATA CD20/10*(2.D0,4.D0),10*(3.D0,9.D0)/ 
       DATA CD30/20*(3.D0,9.D0)/ 
       INTEGER II1
       DOUBLE PRECISION DD9, DD8, DD7, DD6, DD5, DD4, DD3

C$OMP PARALLEL SHARED (DA10,DA30,CD10,CD20) PRIVATE (DD8,DD9,II1,I,J)
C$OMP DO 
       DO II1=0,1
        GO TO (8), II1
        DO I=11,20
         DO J=2,8,3
          DD8 = DA10(I) + DA30(J)
          DD9 = DA10(I) + DA30(J+1)
          DA10(I-J-1) = DA10(I) + DA30(J+2)
          DA10(I-J) = DD9
          DA10(I-J+1) = DD8
         END DO
        END DO
C$OMP FLUSH
        GO TO 9

    8   DO I=11,20
         DO J=2,8,3
          CD10(J-1) = CD20(I-J) * CD10(J)
          CD10(J) = CD20(I-J-1) * CD10(J+1)
          CD10(J+1) = CD20(I-J-2) * CD10(J+2)
         END DO
        END DO
C$OMP FLUSH
    9   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I=11,16,5
        DD3 = DA20(I-1)
        DD4 = DA20(I)
        DD5 = DA20(I+1)
        DD6 = DA20(I+2)
        DD7 = DA20(I+3)
        DO J=2,8,3
         DD3 = DD3 + DA40(J)
         DD4 = DD4 + DA40(J)
         DD5 = DD5 + DA40(J)
         DD6 = DD6 + DA40(J)
         DD7 = DD7 + DA40(J)
         DD3 = DD3 + DA40(J+1)
         DD4 = DD4 + DA40(J+1)
         DD5 = DD5 + DA40(J+1)
         DD6 = DD6 + DA40(J+1)
         DD7 = DD7 + DA40(J+1)
         DD3 = DD3 + DA40(J+2)
         DD4 = DD4 + DA40(J+2)
         DD5 = DD5 + DA40(J+2)
         DD6 = DD6 + DA40(J+2)
         DD7 = DD7 + DA40(J+2)
        END DO
        DA20(I-1) = DD3
        DA20(I) = DD4
        DA20(I+1) = DD5
        DA20(I+2) = DD6
        DA20(I+3) = DD7
       END DO
       WRITE (6, *) ' DA10 = ', DA10
       WRITE (6, *) ' DA20 = ', DA20
       WRITE (6, *) ' CD10 = ', CD10

       DO I=10,2,-1
        DO J=2,8,3
         DA40(I) = DA40(I) + DA40(I+J-1) * DA20(J)
         DA40(I) = DA40(I) + DA40(I+J) * DA20(J+1)
         DA40(I) = DA40(I) + DA40(I+J+1) * DA20(J+2)
        END DO
        DO J=2,10
         IF (12 .GE. J + I) THEN
          CD20(21-I) = CD20(21-I) + CD20(13-(J+I)) - DA10(J)
          DA30(I+2) = DA30(I+2) + DA30(22-(I+J)) * DIMAG (CD30(J))
         END IF
        END DO
       END DO
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (DA40) ', DA40
       WRITE (6, *) ' (CD20) ', CD20

       DO I=2,10
        DO J=10,20
         IF (J + I .LE. 29) THEN
          IF (30 .GE. J + I) THEN
           DA20(J) = DA30(I+J-10) - DIMAG (CD20(J+I-9))
           CD30(11-I) = CD30(11-I) + CD30(31-(J+I))
           CD10(J) = DCMPLX (DREAL (CD10(J)) * DA40(I+J-10) * DD1, DIMAG
     X        (CD10(J)) * DA40(I+J-9) * DD2)
           CD20(I-1) = CD20(I-1) + CD20(I+J-10)
          END IF
         END IF
        END DO
       END DO
       WRITE (6, *) ' (DA20) ', DA20
       WRITE (6, *) ' (CD10) ', CD10
       WRITE (6, *) ' (CD20) ', CD20
       WRITE (6, *) ' (CD30) ', CD30
       STOP 
      END
