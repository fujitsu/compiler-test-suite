      PROGRAM MAIN
       IMPLICIT REAL*8 (D), COMPLEX*16 (C), LOGICAL*4 (L)
       DIMENSION DA10(20), DA20(20), DA30(20), DA40(20), CD10(20), CD20(
     X   20), CD30(20), CD40(20), LD10(20), LD20(20), LD30(20), LD40(20)

       DATA DA10/20*1.D0/ 
       DATA DA20/20*2.D0/ 
       DATA DA30/20*3.D0/ 
       DATA DA40/20*4.D0/ 
       DATA CD10/20*(2.D0,1.D0)/ 
       DATA CD20/20*(1.D0,4.D0)/ 
       DATA CD30/20*(3.D0,4.D0)/ 
       DATA CD40/20*(1.D0,2.D0)/ 
       DATA LD10/20*.FALSE./ 
       DATA LD20/20*.FALSE./ 
       DATA LD30/20*.FALSE./ 
       DATA LD40/20*.FALSE./ 
       DOUBLE PRECISION DD4, DD3, DD2, DD1

       DO I=2,17,4
        DD2 = DA40(I) / DA20(I)
        DD3 = DA40(I+1) / DA20(I+1)
        DD4 = DA40(I+2) / DA20(I+2)
        DD1 = DA40(I+3) / DA20(I+3)
        DA10(I) = DD2 * DA30(I)
        DA10(I+1) = DD3 * DA30(I+1)
        DA10(I+2) = DD4 * DA30(I+2)
        DA10(I+3) = DD1 * DA30(I+3)
       END DO
       DO I=18,20,1
        DD1 = DA40(I) / DA20(I)
        DA10(I) = DD1 * DA30(I)
       END DO

       DO I=2,20
        DX = DA10(I) - DREAL (CD10(I))
        DY = DA10(I) / DIMAG (CD40(I))
        IF (DX .GT. DY) THEN
         LD10(I) = .NOT.LD20(I) .OR. LD30(I)
         DZ = DA20(I) * DSQRT (DIMAG (CD30(I)))
         IF (DX .LE. DZ) THEN
          LD20(I) = .TRUE.
          DA30(I) = (DX - DZ) * DA30(I)
         ELSE
          LD30(I) = .NOT.LD40(I-1)
          DA40(I) = DZ * 2D0 + DX * (-2D0) + DA40(I)
         END IF
         DX = DMAX1 (DX, DZ)
        END IF
        CD10(I) = DCMPLX (DX, DY)
        CD20(I) = CD20(I) - DCONJG (CD10(I))
       END DO
       WRITE (6, *) ' (DA10) ', DA10
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (DA40) ', DA40
       WRITE (6, *) ' (CD10) ', CD10
       WRITE (6, *) ' (LD10) ', LD10
       WRITE (6, *) ' (LD20) ', LD20
       WRITE (6, *) ' (LD30) ', LD30

       DO J=1,10
        LD40(J) = .NOT.LD10(J) .OR. LD20(J+10)
        DX = DMAX1 (DA10(J), DA20(J))
        DY = DMAX1 (DA10(J), DA30(J))
        IF (DX .EQ. DY) THEN
         LA = .NOT.LD30(J) .OR. LD40(J+10)
         IF (LD40(J)) THEN
          DA20(J) = DA10(J) - DA30(J+10)
         ELSE
          DA20(J+10) = DA10(J) - DA40(J+10)
         END IF
         LD10(J) = LD20(J) .AND. LA
         IF (J .GT. 5) THEN
          LD20(J) = .NOT.LA
          DX = DA20(J) * DA30(J+10)
          DY = DNINT (DSQRT (DX))
         END IF
        END IF
        CD20(J) = DCMPLX (DX, DY)
        CD30(J) = DCMPLX (DY, DX) + CD10(J+10)
        IF (J .LE. 5) THEN
         CD40(J+10) = CD10(J) - CD20(J+10) + CD30(J)
         LD40(J) = LD10(J) .OR. LD20(J) .OR. LD30(J+10)
        END IF
       END DO
       WRITE (6, *) ' (LD10) ', LD10
       WRITE (6, *) ' (DA20) ', DA20
       WRITE (6, *) ' (CD20) ', CD20
       WRITE (6, *) ' (LD20) ', LD20
       WRITE (6, *) ' (CD30) ', CD30
       WRITE (6, *) ' (LD40) ', LD40
       WRITE (6, *) ' (CD40) ', CD40
       STOP 
      END
