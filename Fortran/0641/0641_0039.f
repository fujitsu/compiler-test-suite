      PROGRAM MAIN
       IMPLICIT REAL*8 (D), INTEGER*2 (H), COMPLEX*16 (C), LOGICAL*4 (L)
       DIMENSION DA10(50), DA20(50), DA30(-25:25), DA40(0:50), DB10(-10:
     X   0,50), DB20(0:10,50), DB30(-10:10,-50:-1), CD10(-50:0), CD20(0:
     X   50), CD30(-25:25), LD10(50), LD20(50), HD10(50), HD20(50), LD30
     X   (50)
       EQUIVALENCE (IT1, LT1), (INC, IT2), (HT1, HT2)
       INTEGER IM3, IM2, IM1, IT4, IT3
       PARAMETER (IM3 = -5, IM2 = -2, IM1 = -1, IT4 = 10, IT3 = 5)
       INTEGER II10, II9, II8, II7, II6, II5, II4, II3, II2, II1, J1
       DOUBLE PRECISION DD5, DD4, DD3, DD2, DD1
       LOGICAL LL2, LL1
       COMPLEX*16 DC3, DC2, DC1
       IT2 = 2
       DATA DA10/50*4.D0/ 
       DATA DA20/50*3.D0/ 
       DATA DA30/51*1.D0/ 
       DATA DA40/51*2.D0/ 
       DATA DB10/550*1.D0/ 
       DATA DB20/550*-2.D0/ 
       DATA DB30/1050*3.D0/ 
       DATA CD10/51*(-1.D0,5.D0)/ 
       DATA CD20/51*(2.D0,-2.D0)/ 
       DATA CD30/51*(-2.D0,-3.D0)/ 
       DATA LD10/50*.FALSE./ 
       DATA LD20/50*.FALSE./ 
       DATA LD30/30*.FALSE.,20*.TRUE./ 
       DATA HD10/50*1/ 
       DATA HD20/50*2/ 

       DC1 = CD20(27)
       DC2 = CD30(-24)
       DC3 = CD30(-25)
       DO I=1,INC*10
        DA10(I) = DA10(I+22) + DA40(I-1)
        DX = DREAL (CD10(I-51)) * DA20(50-I)
        DY = DIMAG (DC1) - DA30(-25)
        IF (DX .GT. DY) THEN
         LD10(I) = .TRUE.
         CD10(I-51) = DCMPLX (DX, DY)
         DZ = DMAX1 (DX, DY, DA20(I+20))
        ELSE
         LD20(I+20) = .TRUE.
         CD20(26) = DCMPLX (DY, DX)
         DZ = DMIN1 (DX, DY, DA30(-25))
        END IF
        DC3 = DC2 + CD10(-50)
        DA20(48-I) = DZ
       END DO
       CD30(-25) = DC3

       II1 = 7 - INC
       II3 = INC * 10
       II5 = (7 - INC) / 4
       II4 = INC + II5 * 4
       II7 = INC * 10 / 4
       II6 = II7 * 4 + 2
       II9 = (7 - INC) / 4
       II8 = INC + II9 * 4
       DO I=INC,3,4
        DD3 = DIMAG (CD30(INC-I+25))
        DD4 = DIMAG (CD30(INC-I+24))
        DD5 = DIMAG (CD30(INC-I+23))
        DD2 = DIMAG (CD30(INC-I+22))
        DA30(INC-I+25) = DD3 - DA20(I-INC+1)
        DA30(INC-I+24) = DD4 - DA20(I-INC+2)
        DA30(INC-I+23) = DD5 - DA20(I-INC+3)
        DA30(INC-I+22) = DD2 - DA20(I-INC+4)
       END DO
       DO I=II4,6,1
        DD2 = DIMAG (CD30(II5*(-4)+II4-I+25))
        DA30(II5*(-4)+II4-I+25) = DD2 - DA20(I-II4+II5*4+1)
       END DO
       LL1 = II3 .GT. 0
       DO I=INC,6
        IF (LL1) THEN
         II2 = -I
         DD1 = DB10(II2,I)
         DO J1=2,INC*10-2,4
          DB20(I,I+J1-1) = DD1 + DA10(J1)
          DB20(I,I+J1) = DD1 + DA10(J1+1)
          DB20(I,I+J1+1) = DD1 + DA10(J1+2)
          DB20(I,I+J1+2) = DD1 + DA10(J1+3)
         END DO
         DO J1=II6,INC*10+1,1
          DB20(I,I+II7*4-II6+J1+1) = DD1 + DA10(J1)
         END DO
        END IF
        DO J1=2,INC*10+1
         DB30(I,J1-I-32) = DA40(J1+5) + DB10(INC-I-1,I)
         IF (DB20(I-INC+1,I+J1-2) .GT. DB30(-I,J1-I-31)) THEN
          DB10(-I,I+J1-1) = DIMAG (CD10(-2-J1)) - DB20(I,I)
          LD30(J1) = .TRUE.
         ELSE
          LD10(J1) = .TRUE.
          DA40(J1) = DB30(I,-31-I) + DB30(I-INC+1,J1-I-32)
         END IF
         HD20(I-J1+32) = HD20(I-J1+31) + J1 - I - 32
        END DO
        DA20(I-INC+1) = DA20(I-INC+2) + DA40(I)
       END DO
C$OMP PARALLEL SHARED (INC,II8,HD10) PRIVATE (J1,I)
C$OMP DO 
       DO J1=2,INC*10+1
        DO I=INC,3,4
         HD10(J1) = HD10(J1) + J1
         HD10(J1) = HD10(J1) + J1
         HD10(J1) = HD10(J1) + J1
         HD10(J1) = HD10(J1) + J1
        END DO
        DO I=II8,6,1
         HD10(J1) = HD10(J1) + J1
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       IF (II1 .GT. 0) J = MAX0 (INC * 10, 0) + 2
       N2 = 25 - MAX0 (7 - INC, 0)

       N2 = -25
       N3 = 25
       II10 = -1
       DO I=50,30,-1
        II10 = II10 + 1
        CD30(N2+2) = CD10(-I) * CD20(INC*(II10+1)+1)
        DX = DREAL (CD30(N2))
        DY = DIMAG (CD30(N2))
        IF (DX .GT. DY) THEN
         LD20(INC*(II10+1)) = .TRUE.
         DA10(I-3) = DX / DY
         DZ = DA30(N2) - DY
         IF (DZ) 40, 40, 41
   41    CD20(0) = CD20(0) + DMAX1 (DX, DY) - DZ
        END IF
        IF (LD10(INC*(II10+1)) .OR. .NOT.LD20(-5-N2) .AND. LD30(J)) THEN
         CD10(5-I) = DCMPLX (DX, DY)
         LD10(INC*(II10+1)) = .TRUE.
        END IF
        N2 = N2 + 1_2
        N3 = N3 + 1
   40   CONTINUE
       END DO

       DO I=INC,10,1_2
        DA30(I-10) = DA30(I) + DA40(I-2)
        LL2 = LD10(I)
        DO J1=10,25
         IF (LL2 .OR. LD20(I+INC*(J1-10)) .OR. LD30(J1)) THEN
          DB30(I-10,11-(J1+I)) = DA20(J1-4) - DA30(J1-9)
          DB20(I,I+J1-9) = DB10(-I,I+INC*(J1-10)) + DA40(I+INC*(J1-10))
          DB10(I-10,I+INC*(J1-10)) = DA10(J1+10) - DB30(I-2,-I)
          DA40(I+INC*(J1-10)+2) = DB30(I,-2-I) * DB20(I,I) - DA30(J1)
         END IF
        END DO
       END DO
       WRITE (6, 99) ' (DA10) ', DA10
       WRITE (6, 99) ' (DA20) ', DA20
       WRITE (6, 99) ' (DA30) ', DA30
       WRITE (6, 99) ' (DA40) ', DA40
       WRITE (6, 99) ' (DB10) ', DB10
       WRITE (6, 99) ' (DB20) ', DB20
       WRITE (6, 99) ' (DB30) ', DB30
       WRITE (6, 99) ' (CD10) ', CD10
       WRITE (6, 99) ' (CD20) ', CD20
       WRITE (6, 99) ' (CD30) ', CD30
       WRITE (6, *) ' LD10 = ', LD10, ' LD20 = ', LD20
       WRITE (6, *) ' (LD30) ', LD30
   99  FORMAT(A,(4D14.7))
       STOP 
      END
