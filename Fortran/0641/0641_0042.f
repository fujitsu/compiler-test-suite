      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA40(50), DA30(50), DA20(50), DA10(50)
       COMMON /BLK1/ DA10, DA20, DA30, DA40
       DIMENSION IL30(50), IL20(50), IL10(50)
       COMMON /LIST/ IL10, IL20, IL30
       DIMENSION DB10(100), DB20(100), DB30(100), DC10(10,10), DD10(20),
     X    CD10(50), CD20(50), CD30(50), LD10(50), LD20(50), LD30(50)
       EQUIVALENCE (DB10(1), DA10(1)), (CD10(1), DA10(1))
       EQUIVALENCE (CDV, DB20(1)), (DB20(1), DX), (DB20(2), DY)
       EQUIVALENCE (DB30(1), DC10(1,1)), (DA40(20), DD10(1))
       INTEGER IT5, IT4, IT3, IT2, IT1
       PARAMETER (IT5 = 20, IT4 = 10, IT3 = 5, IT2 = 2, IT1 = 1)
       DATA LD10/50*.FALSE./ 
       DATA LD20/50*.FALSE./ 
       DATA LD30/50*.FALSE./ 
       INTEGER II13, II12, II11, II10, II9, II8, II7, II6, II5, II4, II3
     X   , II2, II1
       DOUBLE PRECISION DD12, DD11, DD9, DD8, DD7, DD6, DD5, DD4, DD3, 
     X   DD2, DD1

C$OMP PARALLEL SHARED (DA30,DA40,DB10,DB20,DB30,CD20) PRIVATE (DD3,II5,
C$OMP& DD4,DD5,DD6,DD7,II6,II7,II8,II9,I)
C$OMP DO 
       DO I=1,46,5
        DD4 = DFLOAT (I)
        DD5 = DFLOAT (I + 1)
        DD6 = DFLOAT (I + 2)
        DD7 = DFLOAT (I + 3)
        DD3 = DFLOAT (I + 4)
        DA30(I) = 1D0 - DD4
        DA30(I+1) = 1D0 - DD5
        DA30(I+2) = 1D0 - DD6
        DA30(I+3) = 1D0 - DD7
        DA30(I+4) = 1D0 - DD3
        DD4 = DFLOAT (I)
        DD5 = DFLOAT (I + 1)
        DD6 = DFLOAT (I + 2)
        DD7 = DFLOAT (I + 3)
        DD3 = DFLOAT (I + 4)
        DA40(I) = DD4 - 1D0
        DA40(I+1) = DD5 - 1D0
        DA40(I+2) = DD6 - 1D0
        DA40(I+3) = DD7 - 1D0
        DA40(I+4) = DD3 - 1D0
        DB10(I) = DFLOAT (I)
        DB10(I+1) = DFLOAT (I + 1)
        DB10(I+2) = DFLOAT (I + 2)
        DB10(I+3) = DFLOAT (I + 3)
        DB10(I+4) = DFLOAT (I + 4)
        DD4 = DFLOAT (I)
        DD5 = DFLOAT (I + 1)
        DD6 = DFLOAT (I + 2)
        DD7 = DFLOAT (I + 3)
        DD3 = DFLOAT (I + 4)
        DB10(I+50) = 1D0 - DD4
        DB10(I+51) = 1D0 - DD5
        DB10(I+52) = 1D0 - DD6
        DB10(I+53) = 1D0 - DD7
        DB10(I+54) = 1D0 - DD3
        DD4 = DFLOAT (I)
        DD5 = DFLOAT (I + 1)
        DD6 = DFLOAT (I + 2)
        DD7 = DFLOAT (I + 3)
        DD3 = DFLOAT (I + 4)
        DB20(I+50) = 25D0 - DD4
        DB20(I+51) = 25D0 - DD5
        DB20(I+52) = 25D0 - DD6
        DB20(I+53) = 25D0 - DD7
        DB20(I+54) = 25D0 - DD3
        II6 = I + 50
        II7 = I + 51
        II8 = I + 52
        II9 = I + 53
        II5 = I + 54
        DD4 = DFLOAT (II6)
        DD5 = DFLOAT (II7)
        DD6 = DFLOAT (II8)
        DD7 = DFLOAT (II9)
        DD3 = DFLOAT (II5)
        DB30(I) = DD4 - 2D0
        DB30(I+1) = DD5 - 2D0
        DB30(I+2) = DD6 - 2D0
        DB30(I+3) = DD7 - 2D0
        DB30(I+4) = DD3 - 2D0
        DD4 = DFLOAT (I)
        DD5 = DFLOAT (I + 1)
        DD6 = DFLOAT (I + 2)
        DD7 = DFLOAT (I + 3)
        DD3 = DFLOAT (I + 4)
        DB30(I+50) = 51D0 - DD4
        DB30(I+51) = 51D0 - DD5
        DB30(I+52) = 51D0 - DD6
        DB30(I+53) = 51D0 - DD7
        DB30(I+54) = 51D0 - DD3
        CD20(I) = (1.D0,2.D0)
        CD20(I+1) = (1.D0,2.D0)
        CD20(I+2) = (1.D0,2.D0)
        CD20(I+3) = (1.D0,2.D0)
        CD20(I+4) = (1.D0,2.D0)
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DY = 0.0
       DO I=1,50
        DB20(I) = DFLOAT (I) * 2D0
        CD30(I) = DCMPLX (DX, DY)
        IF (I .LE. 20) THEN
         LD10(I) = .FALSE.
         LD20(I) = .TRUE.
         LD30(I) = .TRUE.
         IF (I .LE. 10) THEN
          LD10(I*2) = .NOT.LD10(I)
          LD20(I*3) = .NOT.LD20(I)
          LD30(I) = .NOT.LD10(I)
         END IF
        END IF
       END DO

       DO I=1,46,5
        IL30(I) = I + 1
        IL30(I+1) = I + 2
        IL30(I+2) = I + 3
        IL30(I+3) = I + 4
        IL30(I+4) = I + 5
       END DO
       DO I=1,50
        IL10(I) = I
        IL20(I) = 51 - I
        IF (I .EQ. 50) THEN
         IL30(I) = 50
        END IF
       END DO

       DO J=2,10
        DX = DA10(IL10(J)) * DA30(IL20(IL20(J)))
        DO I=J,20
         DY = DA40(I) * 2D0 - DA20(J)
         IF (LD10(I) .AND. .NOT.LD30(I-1)) THEN
          LD20(I) = .TRUE.
          DZ = DB30(I*2) * DA20(20) / DX
         ELSE
          LD10(I) = .NOT.LD10(I) .OR. .NOT.LD20(20)
          DZ = DX - DIMAG (CD30(J))
         END IF
         CDV = CDV + DCMPLX (DY, DZ)
        END DO
       END DO
       WRITE (6, *) ' CDV = ', CDV
       DO I=1,12,10
        DX = DX - DB30(I*3) + DB10(I*2)
        DD8 = DIMAG (CD20(I)) - DFLOAT (IL20(I))
        DX = DX - DB30(I*3+6) + DB10(I*2+4)
        DD9 = DIMAG (CD20(I+2)) - DFLOAT (IL20(I+2))
        DX = DX - DB30(I*3+12) + DB10(I*2+8)
        DD11 = DIMAG (CD20(I+4)) - DFLOAT (IL20(I+4))
        DX = DX - DB30(I*3+18) + DB10(I*2+12)
        DD12 = DIMAG (CD20(I+6)) - DFLOAT (IL20(I+6))
        DX = DX - DB30(I*3+24) + DB10(I*2+16)
        DB10(I*2+22) = DIMAG (CD20(I+8)) - DFLOAT (IL20(I+8))
        DB10(I*2+18) = DD12
        DB10(I*2+14) = DD11
        DB10(I*2+10) = DD9
        DB10(I*2+6) = DD8
       END DO
       DO I=1,12,10
        DY = DB30(I*2) * 2D0
        DY = DMAX1 (DY, DB10(I*2))
        DY = DB30(I*2+4) * 2D0
        DY = DMAX1 (DY, DB10(I*2+4))
        DY = DB30(I*2+8) * 2D0
        DY = DMAX1 (DY, DB10(I*2+8))
        DY = DB30(I*2+12) * 2D0
        DY = DMAX1 (DY, DB10(I*2+12))
        DY = DB30(I*2+16) * 2D0
        DY = DMAX1 (DY, DB10(I*2+16))
       END DO
       WRITE (6, *) '  DX = ', DX
       WRITE (6, *) '  DY = ', DY

       DO K=2,5
        LX = LD10(K) .OR. .NOT.LD20(K) .AND. .NOT.LD30(K)
        IF (LX) THEN
         II1 = 16 - IL10(K)
         II11 = (16 - IL10(K)) / 4
         II10 = IL10(K) + II11 * 4
         IF (II1 .GT. 0) THEN
          DD1 = DIMAG (CD20(K))
          DO J=IL10(K),15
           CD10(J) = CD20(J+1) * CD30(J-1) - CDV
           DA40(J) = DABS (DA30(K) - DIMAG (CD10(J-1)))
           IF (LD10(J) .OR. LD20(J+1)) THEN
            DA30(K) = DA20(J+5)
           END IF
           DD10(J) = DD10(J+1) + DD1
          END DO
         END IF
         II2 = IL20(1)
         DO J=IL10(K),12,4
          II2 = II2 + IL30(J)
          II2 = II2 + IL30(J+1)
          II2 = II2 + IL30(J+2)
          II2 = II2 + IL30(J+3)
         END DO
         DO J=II10,15,1
          II2 = II2 + IL30(J)
         END DO
         IL20(1) = II2
        ELSE
         II3 = 16 - IL10(K)
         II13 = (16 - IL10(K)) / 4
         II12 = IL10(K) + II13 * 4
         IF (II3 .GT. 0) THEN
          DD2 = DIMAG (CD20(K))
          DO J=IL10(K),15
           CD10(J) = CD20(J+1) * CD30(J-1) - CDV
           IF ((LD10(J) .OR. LD30(J+1)) .AND. J .LE. 10) THEN
            DB30(IL30(J)) = DB10(J) + DC10(IL10(K),J)
            LD10(J) = .NOT.LD20(J) .OR. LX
           END IF
           DD10(J) = DD10(J+1) + DD2
          END DO
         END IF
         II4 = IL20(1)
         DO J=IL10(K),12,4
          DA40(J) = DABS (DA30(K) - DIMAG (CD10(J-1)))
          II4 = II4 + IL30(J)
          DA40(J+1) = DABS (DA30(K) - DIMAG (CD10(J)))
          II4 = II4 + IL30(J+1)
          DA40(J+2) = DABS (DA30(K) - DIMAG (CD10(J+1)))
          II4 = II4 + IL30(J+2)
          DA40(J+3) = DABS (DA30(K) - DIMAG (CD10(J+2)))
          II4 = II4 + IL30(J+3)
         END DO
         DO J=II12,15,1
          DA40(J) = DABS (DA30(K) - DIMAG (CD10(J-1)))
          II4 = II4 + IL30(J)
         END DO
         IL20(1) = II4
        END IF
       END DO
       WRITE (6, *) ' (DB10) ', DB10
       WRITE (6, *) ' (DB20) ', DB20
       WRITE (6, *) ' (DB30) ', DB30
       WRITE (6, *) ' (CD20) ', CD20
       WRITE (6, *) ' (CD30) ', CD30
       WRITE (6, *) ' (LD10) ', LD10
       WRITE (6, *) ' (LD20) ', LD20
       WRITE (6, *) ' (LD30) ', LD30
       WRITE (6, *) ' (IL20) ', IL20
       STOP 
      END
