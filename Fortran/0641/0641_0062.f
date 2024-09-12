      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(20,20,20), DA20(20,20,20), DA30(20,20,20), DA40(20
     X   ,20,20), LD10(20,20,20), LD20(20,20,20)
       DIMENSION CD20(20,20,20), CD10(20,20,20)
       COMMON /BLK/ CD10, CD20
       INTEGER K1, J1, I1
       DOUBLE PRECISION DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6
     X   , DD5, DD4, DD3, DD2, DD1
       COMPLEX*16 DC4, DC3, DC2, DC1
       NN = 20

       DATA DA10/8000*1.0D0/ 
       DATA DA20/8000*2.0D0/ 
       DATA DA30/8000*3.0D0/ 
       DATA DA40/8000*4.0D0/ 
       DATA LD10/8000*.FALSE./ 
       DATA LD20/8000*.FALSE./ 
C$OMP PARALLEL SHARED (CD10,CD20) PRIVATE (DD1,DD2,DD3,DC1,DC2,DC3,DD4,
C$OMP& DD5,DC4,DD6,DD7,DD8,DD9,DD10,DD11,DD12,DD13,DD14,K1,J1,I1)
C$OMP DO 
       DO K1=1,20
        DD4 = DFLOAT (K1)
        DO J1=1,18,3
         DD1 = DFLOAT (J1)
         DD2 = DFLOAT (J1 + 1)
         DD3 = DFLOAT (J1 + 2)
         DC1 = DCMPLX (DD1, DD4)
         DC2 = DCMPLX (DD2, DD4)
         DC3 = DCMPLX (DD3, DD4)

         DO I1=1,17,4
          DD9 = DFLOAT (I1)
          DD10 = DFLOAT (I1 + 1)
          DD11 = DFLOAT (I1 + 2)
          DD7 = DFLOAT (I1 + 3)
          CD10(I1,J1,K1) = DCMPLX (DD9, DD1)
          CD10(I1+1,J1,K1) = DCMPLX (DD10, DD1)
          CD10(I1+2,J1,K1) = DCMPLX (DD11, DD1)
          CD10(I1+3,J1,K1) = DCMPLX (DD7, DD1)
          DD9 = DFLOAT (I1)
          DD10 = DFLOAT (I1 + 1)
          DD11 = DFLOAT (I1 + 2)
          DD7 = DFLOAT (I1 + 3)
          CD10(I1,J1+1,K1) = DCMPLX (DD9, DD2)
          CD10(I1+1,J1+1,K1) = DCMPLX (DD10, DD2)
          CD10(I1+2,J1+1,K1) = DCMPLX (DD11, DD2)
          CD10(I1+3,J1+1,K1) = DCMPLX (DD7, DD2)
          DD9 = DFLOAT (I1)
          DD10 = DFLOAT (I1 + 1)
          DD11 = DFLOAT (I1 + 2)
          DD7 = DFLOAT (I1 + 3)
          CD10(I1,J1+2,K1) = DCMPLX (DD9, DD3)
          CD10(I1+1,J1+2,K1) = DCMPLX (DD10, DD3)
          CD10(I1+2,J1+2,K1) = DCMPLX (DD11, DD3)
          CD10(I1+3,J1+2,K1) = DCMPLX (DD7, DD3)
          CD20(I1,J1,K1) = DC1
          CD20(I1+1,J1,K1) = DC1
          CD20(I1+2,J1,K1) = DC1
          CD20(I1+3,J1,K1) = DC1
          CD20(I1,J1+1,K1) = DC2
          CD20(I1+1,J1+1,K1) = DC2
          CD20(I1+2,J1+1,K1) = DC2
          CD20(I1+3,J1+1,K1) = DC2
          CD20(I1,J1+2,K1) = DC3
          CD20(I1+1,J1+2,K1) = DC3
          CD20(I1+2,J1+2,K1) = DC3
          CD20(I1+3,J1+2,K1) = DC3
         END DO
        END DO
        DD6 = DFLOAT (K1)
        DO J1=19,20,1
         DD5 = DFLOAT (J1)
         DC4 = DCMPLX (DD5, DD6)

         DO I1=1,17,4
          DD12 = DFLOAT (I1)
          DD13 = DFLOAT (I1 + 1)
          DD14 = DFLOAT (I1 + 2)
          DD8 = DFLOAT (I1 + 3)
          CD10(I1,J1,K1) = DCMPLX (DD12, DD5)
          CD10(I1+1,J1,K1) = DCMPLX (DD13, DD5)
          CD10(I1+2,J1,K1) = DCMPLX (DD14, DD5)
          CD10(I1+3,J1,K1) = DCMPLX (DD8, DD5)
          CD20(I1,J1,K1) = DC4
          CD20(I1+1,J1,K1) = DC4
          CD20(I1+2,J1,K1) = DC4
          CD20(I1+3,J1,K1) = DC4
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 21

       CALL SUB1 (DA10,DA20,DA30,DA40,LD10,LD20,NN)

       CALL SUB2 (DA10,DA20,DA30,DA40,LD10,LD20,NN)
       WRITE (6, 99) 'DA10=', (((DA10(I,J,K), I=1,10), J=1,10), K=1,10)
       WRITE (6, 99) 'DA20=', (((DA20(I,J,K), I=1,10), J=1,10), K=1,10)
       WRITE (6, 99) 'DA30=', (((DA30(I,J,K), I=1,10), J=1,10), K=1,10)
       WRITE (6, 99) 'DA40=', (((DA40(I,J,K), I=1,10), J=1,10), K=1,10)
       WRITE (6, *) 'LD10=', (((LD10(I,J,K), I=1,10), J=1,10), K=1,10)
       WRITE (6, *) 'LD20=', (((LD20(I,J,K), I=1,10), J=1,10), K=1,10)
       WRITE (6, 99) 'CD10=', (((CD10(I,J,K), I=1,10), J=1,10), K=1,10)
       WRITE (6, 99) 'CD20=', (((CD20(I,J,K), I=1,10), J=1,10), K=1,10)
   99  FORMAT(A,(8F10.3))
       STOP 
      END

      SUBROUTINE SUB1 ( DA10, DA20, DA30, DA40, LD10, LD20, NN )
       IMPLICIT REAL*8 (A-B,D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(NN,NN,NN), DA20(NN,NN,NN), DA30(NN,NN,NN), DA40(NN
     X   ,NN,NN), LD10(NN,NN,NN), LD20(NN,NN,NN)
       DIMENSION CD20(20,20,20), CD10(20,20,20)
       COMMON /BLK/ CD10, CD20
       INTEGER II10, II9, II8, II7, II6, II5, II4, II3, II2, II1

       DO II=4,6
        II3 = (NN - II) / 4
        II2 = II3 * 4 + 1
        DO I1=1,NN-II-3,4
         DA10(I1,I1,1) = DFLOAT (I1)
         DA10(I1+1,I1+1,1) = DFLOAT (I1 + 1)
         DA10(I1+2,I1+2,1) = DFLOAT (I1 + 2)
         DA10(I1+3,I1+3,1) = DFLOAT (I1 + 3)
        END DO
        DO I1=II2,NN-II,1
         DA10(I1,I1,1) = DFLOAT (I1)
        END DO
       END DO
       DO II=4,6
        DO I1=1,NN-II
         DO I2=1,I1
          DO I3=I2+1,NN-2
           DX = DA20(I1+1,I2,I3) + DA30(I1,I2,I3+1)
           DY = DA10(I1+1,I2,I3) - DA40(I1,I2,I3+1)
           IF (DX .GT. DY) THEN
            CD10(I1+1,I2,I3) = DCMPLX (DX, DY) - CD20(II,I2,I3)
            LD10(I1,I2,I3) = .NOT.LD20(I1,I2,I3)
           ELSE
            DX = DMIN1 (DX, DA20(I1,I2+1,I3)) - DREAL (CD10(I1,1,I2))
            DY = DMAX1 (DABS (DY), DA30(I1+1,I2,I3+1))
           END IF
           CD20(II,I2,I3) = DCMPLX (DX, DY)
          END DO
          IF (LD10(I1,I2,1)) THEN
           CD10(I1,I2-1,5) = (0.0D0,0.0D0)
          ELSE
           CD20(II,I2+1,5) = (0.0D0,0.0D0)
          END IF
         END DO
        END DO
        DO I2=1,NN-II
         II5 = (NN - II - I2 + 1) / 4
         II4 = I2 + II5 * 4
         DO I1=I2,NN-II-3,4
          II6 = I1 + I2
          II7 = I1 + I2 + 1
          II8 = I1 + I2 + 2
          II1 = I1 + I2 + 3
          DA20(I1,I2,NN-2) = DFLOAT (II6)
          DA20(I1+1,I2,NN-2) = DFLOAT (II7)
          DA20(I1+2,I2,NN-2) = DFLOAT (II8)
          DA20(I1+3,I2,NN-2) = DFLOAT (II1)
         END DO
         DO I1=II4,NN-II,1
          II1 = I1 + I2
          DA20(I1,I2,NN-2) = DFLOAT (II1)
         END DO
        END DO
        II10 = (NN - II) / 4
        II9 = II10 * 4 + 1
        DO I1=1,NN-II-3,4
         DA30(I1,1,2) = 0D0
         DA30(I1+1,1,2) = 0D0
         DA30(I1+2,1,2) = 0D0
         DA30(I1+3,1,2) = 0D0
        END DO
        DO I1=II9,NN-II,1
         DA30(I1,1,2) = 0D0
        END DO
       END DO

       RETURN 
      END

      SUBROUTINE SUB2 ( DA10, DA20, DA30, DA40, LD10, LD20, NN )
       IMPLICIT REAL*8 (A-B,D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(NN,NN,NN), DA20(NN,NN,NN), DA30(NN,NN,NN), DA40(NN
     X   ,NN,NN), LD10(NN,NN,NN), LD20(NN,NN,NN)
       DIMENSION CD20(20,20,20), CD10(20,20,20)
       COMMON /BLK/ CD10, CD20
       INTEGER II4, II3, II2, II1
       DOUBLE PRECISION DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6
     X   , DD5, DD4, DD3, DD2, DD1
       LOGICAL LL5, LL4, LL3, LL2, LL1

       DO I1=4,NN-2
        DX = DA40(I1,I1,NN-2) - DIMAG (CD10(I1,NN-2,NN-2))
        DA20(I1,I1,NN-2) = DX
        DO I2=I1,3,-1
         DY = DMIN1 (DA30(I1,I2,NN-2), DREAL (CD20(I1,I2,NN-2)))
         DA30(I1,I2,I2) = DY
         IF (DX .GT. DY) THEN
          II2 = (I2 - 2) / 4
          II1 = II2 * 4 + 2
          DO I3=2,I2-4,4
           DD3 = DREAL (CD10(I1+1,I2,I3))
           DD4 = DREAL (CD10(I1+1,I2,I3+1))
           DD5 = DREAL (CD10(I1+1,I2,I3+2))
           DD1 = DREAL (CD10(I1+1,I2,I3+3))
           DD6 = DMAX1 (DA20(I1+1,I2,I3-1), DD3)
           DD7 = DMAX1 (DA20(I1+1,I2,I3), DD4)
           DD8 = DMAX1 (DA20(I1+1,I2,I3+1), DD5)
           DZ = DMAX1 (DA20(I1+1,I2,I3+2), DD1)
           LL1 = .NOT.LD10(I1,I2,I3)
           LL2 = .NOT.LD10(I1,I2,I3+1)
           LL3 = .NOT.LD10(I1,I2,I3+2)
           LL4 = .NOT.LD10(I1,I2,I3+3)
           CD10(I1,I2,I3) = DCMPLX (DD6, DX)
           CD10(I1,I2,I3+1) = DCMPLX (DD7, DX)
           CD10(I1,I2,I3+2) = DCMPLX (DD8, DX)
           CD10(I1,I2,I3+3) = DCMPLX (DZ, DX)
           DD3 = DMIN1 (DY, DD6)
           DD4 = DMIN1 (DY, DD7)
           DD5 = DMIN1 (DY, DD8)
           DD1 = DMIN1 (DY, DZ)
           DA40(I1,I2,I3) = DD3 - DA10(I1,I3,2)
           DA40(I1,I2,I3+1) = DD4 - DA10(I1,I3+1,2)
           DA40(I1,I2,I3+2) = DD5 - DA10(I1,I3+2,2)
           DA40(I1,I2,I3+3) = DD1 - DA10(I1,I3+3,2)
           DA30(I1,I2,I3) = DA10(I1,I2,I3) - DA20(I1+1,I2,I3)
           DA30(I1,I2,I3+1) = DA10(I1,I2,I3+1) - DA20(I1+1,I2,I3+1)
           DA30(I1,I2,I3+2) = DA10(I1,I2,I3+2) - DA20(I1+1,I2,I3+2)
           DA30(I1,I2,I3+3) = DA10(I1,I2,I3+3) - DA20(I1+1,I2,I3+3)
           LD10(I1,I2,I3+3) = LL4
           LD10(I1,I2,I3+2) = LL3
           LD10(I1,I2,I3+1) = LL2
           LD10(I1,I2,I3) = LL1
          END DO
          DO I3=II1,I2-1,1
           DD1 = DREAL (CD10(I1+1,I2,I3))
           DZ = DMAX1 (DA20(I1+1,I2,I3-1), DD1)
           LL5 = .NOT.LD10(I1,I2,I3)
           CD10(I1,I2,I3) = DCMPLX (DZ, DX)
           DD1 = DMIN1 (DY, DZ)
           DA40(I1,I2,I3) = DD1 - DA10(I1,I3,2)
           DA30(I1,I2,I3) = DA10(I1,I2,I3) - DA20(I1+1,I2,I3)
           LD10(I1,I2,I3) = LL5
          END DO
         ELSE
          II4 = (I2 - 2) / 4
          II3 = II4 * 4 + 2
          DO I3=2,I2-4,4
           DD9 = DREAL (CD10(I1+1,I2,I3))
           DD10 = DREAL (CD10(I1+1,I2,I3+1))
           DD11 = DREAL (CD10(I1+1,I2,I3+2))
           DD2 = DREAL (CD10(I1+1,I2,I3+3))
           DD12 = DMAX1 (DA20(I1+1,I2,I3-1), DD9)
           DD13 = DMAX1 (DA20(I1+1,I2,I3), DD10)
           DD14 = DMAX1 (DA20(I1+1,I2,I3+1), DD11)
           DZ = DMAX1 (DA20(I1+1,I2,I3+2), DD2)
           LD20(I1,I2,I3) = .NOT.LD10(I1,I2,I3)
           LD20(I1,I2,I3+1) = .NOT.LD10(I1,I2,I3+1)
           LD20(I1,I2,I3+2) = .NOT.LD10(I1,I2,I3+2)
           LD20(I1,I2,I3+3) = .NOT.LD10(I1,I2,I3+3)
           CD10(I1,I2,I3) = DCMPLX (DD12, DX)
           CD10(I1,I2,I3+1) = DCMPLX (DD13, DX)
           CD10(I1,I2,I3+2) = DCMPLX (DD14, DX)
           CD10(I1,I2,I3+3) = DCMPLX (DZ, DX)
           DD9 = DMIN1 (DY, DD12)
           DD10 = DMIN1 (DY, DD13)
           DD11 = DMIN1 (DY, DD14)
           DD2 = DMIN1 (DY, DZ)
           DA40(I1,I2,I3) = DD9 - DA10(I1,I3,2)
           DA40(I1,I2,I3+1) = DD10 - DA10(I1,I3+1,2)
           DA40(I1,I2,I3+2) = DD11 - DA10(I1,I3+2,2)
           DA40(I1,I2,I3+3) = DD2 - DA10(I1,I3+3,2)
           DA30(I1,I2,I3) = DA10(I1,I2,I3) - DA20(I1+1,I2,I3)
           DA30(I1,I2,I3+1) = DA10(I1,I2,I3+1) - DA20(I1+1,I2,I3+1)
           DA30(I1,I2,I3+2) = DA10(I1,I2,I3+2) - DA20(I1+1,I2,I3+2)
           DA30(I1,I2,I3+3) = DA10(I1,I2,I3+3) - DA20(I1+1,I2,I3+3)
          END DO
          DO I3=II3,I2-1,1
           DD2 = DREAL (CD10(I1+1,I2,I3))
           DZ = DMAX1 (DA20(I1+1,I2,I3-1), DD2)
           LD20(I1,I2,I3) = .NOT.LD10(I1,I2,I3)
           CD10(I1,I2,I3) = DCMPLX (DZ, DX)
           DD2 = DMIN1 (DY, DZ)
           DA40(I1,I2,I3) = DD2 - DA10(I1,I3,2)
           DA30(I1,I2,I3) = DA10(I1,I2,I3) - DA20(I1+1,I2,I3)
          END DO
         END IF
         DA10(I1,I2,2) = DX
        END DO
        DA40(I1+1,I1,NN-1) = DX
       END DO

       RETURN 
      END
