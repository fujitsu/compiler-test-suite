      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(20,20,20), DA20(20,20,20), DA30(20,20,20), DA40(20
     X   ,20,20), LD10(20,20,20), LD20(20,20,20)
       DIMENSION CD20(20,20,20), CD10(20,20,20)
       COMMON /BLK/ CD10, CD20
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
C$OMP& DD5,DC4,DD6,DD7,DD8,DD9,DD10,DD11,DD12,DD13,DD14,K,J,I)
C$OMP DO 
       DO K=1,20
        DD4 = DFLOAT (K)
        DO J=1,18,3
         DD1 = DFLOAT (J)
         DD2 = DFLOAT (J + 1)
         DD3 = DFLOAT (J + 2)
         DC1 = DCMPLX (DD1, DD4)
         DC2 = DCMPLX (DD2, DD4)
         DC3 = DCMPLX (DD3, DD4)

         DO I=1,17,4
          DD9 = DFLOAT (I)
          DD10 = DFLOAT (I + 1)
          DD11 = DFLOAT (I + 2)
          DD7 = DFLOAT (I + 3)
          CD10(I,J,K) = DCMPLX (DD9, DD1)
          CD10(I+1,J,K) = DCMPLX (DD10, DD1)
          CD10(I+2,J,K) = DCMPLX (DD11, DD1)
          CD10(I+3,J,K) = DCMPLX (DD7, DD1)
          DD9 = DFLOAT (I)
          DD10 = DFLOAT (I + 1)
          DD11 = DFLOAT (I + 2)
          DD7 = DFLOAT (I + 3)
          CD10(I,J+1,K) = DCMPLX (DD9, DD2)
          CD10(I+1,J+1,K) = DCMPLX (DD10, DD2)
          CD10(I+2,J+1,K) = DCMPLX (DD11, DD2)
          CD10(I+3,J+1,K) = DCMPLX (DD7, DD2)
          DD9 = DFLOAT (I)
          DD10 = DFLOAT (I + 1)
          DD11 = DFLOAT (I + 2)
          DD7 = DFLOAT (I + 3)
          CD10(I,J+2,K) = DCMPLX (DD9, DD3)
          CD10(I+1,J+2,K) = DCMPLX (DD10, DD3)
          CD10(I+2,J+2,K) = DCMPLX (DD11, DD3)
          CD10(I+3,J+2,K) = DCMPLX (DD7, DD3)
          CD20(I,J,K) = DC1
          CD20(I+1,J,K) = DC1
          CD20(I+2,J,K) = DC1
          CD20(I+3,J,K) = DC1
          CD20(I,J+1,K) = DC2
          CD20(I+1,J+1,K) = DC2
          CD20(I+2,J+1,K) = DC2
          CD20(I+3,J+1,K) = DC2
          CD20(I,J+2,K) = DC3
          CD20(I+1,J+2,K) = DC3
          CD20(I+2,J+2,K) = DC3
          CD20(I+3,J+2,K) = DC3
         END DO
        END DO
        DD6 = DFLOAT (K)
        DO J=19,20,1
         DD5 = DFLOAT (J)
         DC4 = DCMPLX (DD5, DD6)

         DO I=1,17,4
          DD12 = DFLOAT (I)
          DD13 = DFLOAT (I + 1)
          DD14 = DFLOAT (I + 2)
          DD8 = DFLOAT (I + 3)
          CD10(I,J,K) = DCMPLX (DD12, DD5)
          CD10(I+1,J,K) = DCMPLX (DD13, DD5)
          CD10(I+2,J,K) = DCMPLX (DD14, DD5)
          CD10(I+3,J,K) = DCMPLX (DD8, DD5)
          CD20(I,J,K) = DC4
          CD20(I+1,J,K) = DC4
          CD20(I+2,J,K) = DC4
          CD20(I+3,J,K) = DC4
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       CALL SUB1 (DA10,DA20,DA30,DA40,LD10,LD20,NN)

       CALL SUB2 (DA10,DA20,DA30,DA40,LD10,LD20,NN)
       WRITE (6, *) '** DA10 **'
       WRITE (6, 600) DA10
       WRITE (6, *) '** DA20 **'
       WRITE (6, 600) DA20
       WRITE (6, *) '** DA30 **'
       WRITE (6, 600) DA30
       WRITE (6, *) '** DA40 **'
       WRITE (6, 600) DA40
       WRITE (6, *) '** LD10 **'
       WRITE (6, *) LD10
       WRITE (6, *) '** LD20 **'
       WRITE (6, *) LD20
  600  FORMAT(1H ,(20(5(D12.4,1X),/)))
       STOP 
      END

      SUBROUTINE SUB1 ( DA10, DA20, DA30, DA40, LD10, LD20, NN )
       IMPLICIT REAL*8 (A-B,D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(NN,NN,NN), DA20(NN,NN,NN), DA30(NN,NN,NN), DA40(NN
     X   ,NN,NN), LD10(NN,NN,NN), LD20(NN,NN,NN)
       DIMENSION CD20(20,20,20), CD10(20,20,20)
       COMMON /BLK/ CD10, CD20
       DOUBLEPRECISION DD1, DD2
       PARAMETER (DD1 = 1D0 / 2D0, DD2 = 1D0 / 3D0)
       INTEGER II24, II23, II22, II21, II20, II19, II18, II17, II16, 
     X   II15, II14, II13, II12, II11, II10, II9, II8, II7, II6, II5, 
     X   II4, II3, II2, II1
       LOGICAL LL50, LL49, LL48, LL47, LL46, LL45, LL44, LL43, LL42, 
     X   LL41, LL40, LL39, LL38, LL37, LL36, LL35, LL34, LL33, LL32, 
     X   LL31, LL30, LL29, LL28, LL27, LL26, LL25, LL24, LL23, LL22, 
     X   LL21, LL20, LL19, LL18, LL17, LL16, LL15, LL14, LL13, LL12, 
     X   LL11
       LOGICAL LL10, LL9, LL8, LL7, LL6, LL5, LL4, LL3, LL2, LL1

       II4 = (NN - 1) / 4
       II3 = II4 * 4 + 1
       II6 = (NN - 1) / 4
       II5 = II6 * 4 + 1
       II8 = (NN - 1) / 4
       II7 = II8 * 4 + 1
       DO I=1,NN-4,4
        LD10(I,1,1) = .FALSE.
        LD10(I+1,1,1) = .FALSE.
        LD10(I+2,1,1) = .FALSE.
        LD10(I+3,1,1) = .FALSE.
       END DO
       DO I=II3,NN-1,1
        LD10(I,1,1) = .FALSE.
       END DO
C$OMP PARALLEL SHARED (NN,DA10,CD10,DA20,DA30,DA40,LD10,CD20,LD20,II5,
C$OMP& II7,II9,II11,II10,II12,II14,II13,II19,II18,II24,II23) PRIVATE (J,
C$OMP& K,DX,DY,I,LL1,LL2,LL3,LL4,LL5,LL6,LL7,LL8,LL9,LL10,LL11,LL12,LL13
C$OMP& ,LL14,LL15,LL16,LL17,LL18,LL19,LL20,LL21,LL22,LL23,LL24,LL25,LL26
C$OMP& ,LL27,LL28,LL29,LL30,LL31,LL32,LL33,LL34,LL35,LL36,LL37,LL38,LL39
C$OMP& ,LL40,LL41,LL42,LL43,LL44,LL45,LL46,LL47,LL48,LL49,LL50,I3,I2,I1)

       DO I=1,NN-1
C$OMP DO 
        DO J=I+1,NN-1
         DA10(1,I,J) = DIMAG (CD10(I,J,J))
         DO K=2,J+1
          DX = DA20(I,J,K) + DA10(I,J,K) * DD1
          DY = DA30(I,J,K) * DD2 - DA40(I,J,K)
          IF (DX .GT. DY) THEN
           LD10(I,J,K) = .TRUE.
          END IF
          CD10(I,J,K) = DCMPLX (DX, DY) - CD20(I,J,K)
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       END DO

C$OMP DO 
       DO K=2,NN
        DO J=K-1,NN-4,4
         DO I=1,NN-4,4
          LL1 = .NOT.LD20(I,J,K) .AND. LD10(I,J,K)
          LL2 = .NOT.LD20(I+1,J,K) .AND. LD10(I+1,J,K)
          LL3 = .NOT.LD20(I+2,J,K) .AND. LD10(I+2,J,K)
          LL4 = .NOT.LD20(I+3,J,K) .AND. LD10(I+3,J,K)
          LL5 = .NOT.LD20(I,J+1,K) .AND. LD10(I,J+1,K)
          LL6 = .NOT.LD20(I+1,J+1,K) .AND. LD10(I+1,J+1,K)
          LL7 = .NOT.LD20(I+2,J+1,K) .AND. LD10(I+2,J+1,K)
          LL8 = .NOT.LD20(I+3,J+1,K) .AND. LD10(I+3,J+1,K)
          LL9 = .NOT.LD20(I,J+2,K) .AND. LD10(I,J+2,K)
          LL10 = .NOT.LD20(I+1,J+2,K) .AND. LD10(I+1,J+2,K)
          LL11 = .NOT.LD20(I+2,J+2,K) .AND. LD10(I+2,J+2,K)
          LL12 = .NOT.LD20(I+3,J+2,K) .AND. LD10(I+3,J+2,K)
          LL13 = .NOT.LD20(I,J+3,K) .AND. LD10(I,J+3,K)
          LL14 = .NOT.LD20(I+1,J+3,K) .AND. LD10(I+1,J+3,K)
          LL15 = .NOT.LD20(I+2,J+3,K) .AND. LD10(I+2,J+3,K)
          LL16 = .NOT.LD20(I+3,J+3,K) .AND. LD10(I+3,J+3,K)
          LD20(I+3,J+3,K) = LL16
          LD20(I+2,J+3,K) = LL15
          LD20(I+1,J+3,K) = LL14
          LD20(I,J+3,K) = LL13
          LD20(I+3,J+2,K) = LL12
          LD20(I+2,J+2,K) = LL11
          LD20(I+1,J+2,K) = LL10
          LD20(I,J+2,K) = LL9
          LD20(I+3,J+1,K) = LL8
          LD20(I+2,J+1,K) = LL7
          LD20(I+1,J+1,K) = LL6
          LD20(I,J+1,K) = LL5
          LD20(I+3,J,K) = LL4
          LD20(I+2,J,K) = LL3
          LD20(I+1,J,K) = LL2
          LD20(I,J,K) = LL1
         END DO
         DO I=II5,NN-1,1
          LL17 = .NOT.LD20(I,J,K) .AND. LD10(I,J,K)
          LL18 = .NOT.LD20(I,J+1,K) .AND. LD10(I,J+1,K)
          LL19 = .NOT.LD20(I,J+2,K) .AND. LD10(I,J+2,K)
          LL20 = .NOT.LD20(I,J+3,K) .AND. LD10(I,J+3,K)
          LD20(I,J+3,K) = LL20
          LD20(I,J+2,K) = LL19
          LD20(I,J+1,K) = LL18
          LD20(I,J,K) = LL17
         END DO
        END DO
        DO J=J,NN-1,1
         DO I=1,NN-4,4
          LL21 = .NOT.LD20(I,J,K) .AND. LD10(I,J,K)
          LL22 = .NOT.LD20(I+1,J,K) .AND. LD10(I+1,J,K)
          LL23 = .NOT.LD20(I+2,J,K) .AND. LD10(I+2,J,K)
          LL24 = .NOT.LD20(I+3,J,K) .AND. LD10(I+3,J,K)
          LD20(I+3,J,K) = LL24
          LD20(I+2,J,K) = LL23
          LD20(I+1,J,K) = LL22
          LD20(I,J,K) = LL21
         END DO
         DO I=II7,NN-1,1
          LL25 = .NOT.LD20(I,J,K) .AND. LD10(I,J,K)
          LD20(I,J,K) = LL25
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER


C$OMP DO 
       DO I=NN-1,2,-1
        DO J=I+1,2,-1
         LD20(I,J,J) = .NOT.LD10(I,J,2)
         DO K=2,J-1
          DA30(I,J,K) = DA10(I,J,K) * DA20(I,J,K) / (1D0 + DA30(I,J,K)) 
     X      - DREAL (CD10(I,J,K-1)) / (1D0 + DIMAG (CD20(I,J,K+1)))
          IF (LD10(I,J,K) .AND. LD20(I,J,K)) THEN
           DA10(I,J,K) = 0D0
          ELSE
           CD20(I,J,K) = DCMPLX (DA30(I,J,K), 1D0)
          END IF
         END DO
         DA20(I,I,J) = DA30(I,J,J) + DA10(I,J,2)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP SINGLE 
       II10 = (NN - 2) / 4
       II9 = II10 * 4 + 2
       II12 = (NN - 2) / 4
       II11 = II12 * 4 + 2
       II14 = (NN - 2) / 4
       II13 = II14 * 4 + 2
       II19 = (NN - 2) / 4
       II18 = II19 * 4 + 2
       II24 = (NN - 2) / 4
       II23 = II24 * 4 + 2

C$OMP END SINGLE NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I3=2,NN-1
        DO I2=2,NN-4,4
         DO I1=2,NN-4,4
          LL26 = .NOT.LD20(I1,I2,I3) .AND. LD10(I1,I2,I3)
          LL27 = .NOT.LD20(I1+1,I2,I3) .AND. LD10(I1+1,I2,I3)
          LL28 = .NOT.LD20(I1+2,I2,I3) .AND. LD10(I1+2,I2,I3)
          LL29 = .NOT.LD20(I1+3,I2,I3) .AND. LD10(I1+3,I2,I3)
          LL30 = .NOT.LD20(I1,I2+1,I3) .AND. LD10(I1,I2+1,I3)
          LL31 = .NOT.LD20(I1+1,I2+1,I3) .AND. LD10(I1+1,I2+1,I3)
          LL32 = .NOT.LD20(I1+2,I2+1,I3) .AND. LD10(I1+2,I2+1,I3)
          LL33 = .NOT.LD20(I1+3,I2+1,I3) .AND. LD10(I1+3,I2+1,I3)
          LL34 = .NOT.LD20(I1,I2+2,I3) .AND. LD10(I1,I2+2,I3)
          LL35 = .NOT.LD20(I1+1,I2+2,I3) .AND. LD10(I1+1,I2+2,I3)
          LL36 = .NOT.LD20(I1+2,I2+2,I3) .AND. LD10(I1+2,I2+2,I3)
          LL37 = .NOT.LD20(I1+3,I2+2,I3) .AND. LD10(I1+3,I2+2,I3)
          LL38 = .NOT.LD20(I1,I2+3,I3) .AND. LD10(I1,I2+3,I3)
          LL39 = .NOT.LD20(I1+1,I2+3,I3) .AND. LD10(I1+1,I2+3,I3)
          LL40 = .NOT.LD20(I1+2,I2+3,I3) .AND. LD10(I1+2,I2+3,I3)
          LL41 = .NOT.LD20(I1+3,I2+3,I3) .AND. LD10(I1+3,I2+3,I3)
          LD20(I1+3,I2+3,I3) = LL41
          LD20(I1+2,I2+3,I3) = LL40
          LD20(I1+1,I2+3,I3) = LL39
          LD20(I1,I2+3,I3) = LL38
          LD20(I1+3,I2+2,I3) = LL37
          LD20(I1+2,I2+2,I3) = LL36
          LD20(I1+1,I2+2,I3) = LL35
          LD20(I1,I2+2,I3) = LL34
          LD20(I1+3,I2+1,I3) = LL33
          LD20(I1+2,I2+1,I3) = LL32
          LD20(I1+1,I2+1,I3) = LL31
          LD20(I1,I2+1,I3) = LL30
          LD20(I1+3,I2,I3) = LL29
          LD20(I1+2,I2,I3) = LL28
          LD20(I1+1,I2,I3) = LL27
          LD20(I1,I2,I3) = LL26
         END DO
         DO I1=II9,NN-1,1
          LL42 = .NOT.LD20(I1,I2,I3) .AND. LD10(I1,I2,I3)
          LL43 = .NOT.LD20(I1,I2+1,I3) .AND. LD10(I1,I2+1,I3)
          LL44 = .NOT.LD20(I1,I2+2,I3) .AND. LD10(I1,I2+2,I3)
          LL45 = .NOT.LD20(I1,I2+3,I3) .AND. LD10(I1,I2+3,I3)
          LD20(I1,I2+3,I3) = LL45
          LD20(I1,I2+2,I3) = LL44
          LD20(I1,I2+1,I3) = LL43
          LD20(I1,I2,I3) = LL42
         END DO
        END DO
        DO I2=I2,NN-1,1
         DO I1=2,NN-4,4
          LL46 = .NOT.LD20(I1,I2,I3) .AND. LD10(I1,I2,I3)
          LL47 = .NOT.LD20(I1+1,I2,I3) .AND. LD10(I1+1,I2,I3)
          LL48 = .NOT.LD20(I1+2,I2,I3) .AND. LD10(I1+2,I2,I3)
          LL49 = .NOT.LD20(I1+3,I2,I3) .AND. LD10(I1+3,I2,I3)
          LD20(I1+3,I2,I3) = LL49
          LD20(I1+2,I2,I3) = LL48
          LD20(I1+1,I2,I3) = LL47
          LD20(I1,I2,I3) = LL46
         END DO
         DO I1=II11,NN-1,1
          LL50 = .NOT.LD20(I1,I2,I3) .AND. LD10(I1,I2,I3)
          LD20(I1,I2,I3) = LL50
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO I2=2,NN-1
        DO I1=2,NN-1
         DO I3=2,NN-1
          DA30(I1,I2,I3) = DA10(I1,I2,I3) * 2D0 - DA40(I1,I2,I3+1)
          DA40(I1,I2,I3) = DA20(I1,I2+1,I3) - DA30(I1-1,I2,I3+1)
          IF (LD20(I1,I2,I3)) THEN
           DA30(I1,I2,I2) = DMIN1 (DA30(I1,I2,I2), DA40(I1,I2,I3))
           CD20(I1,I2,1) = CD20(I1,I2,1) - CD10(I1,I2,I3)
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I2=2,NN-4,4
        DO I1=2,NN-4,4
         II15 = I1 + I2
         II16 = I1 + I2 + 1
         II17 = I1 + I2 + 2
         II1 = I1 + I2 + 3
         DA20(I1,I2,NN-1) = DFLOAT (II15)
         DA20(I1+1,I2,NN-1) = DFLOAT (II16)
         DA20(I1+2,I2,NN-1) = DFLOAT (II17)
         DA20(I1+3,I2,NN-1) = DFLOAT (II1)
         II15 = I1 + I2 + 1
         II16 = I1 + I2 + 2
         II17 = I1 + I2 + 3
         II1 = I1 + I2 + 4
         DA20(I1,I2+1,NN-1) = DFLOAT (II15)
         DA20(I1+1,I2+1,NN-1) = DFLOAT (II16)
         DA20(I1+2,I2+1,NN-1) = DFLOAT (II17)
         DA20(I1+3,I2+1,NN-1) = DFLOAT (II1)
         II15 = I1 + I2 + 2
         II16 = I1 + I2 + 3
         II17 = I1 + I2 + 4
         II1 = I1 + I2 + 5
         DA20(I1,I2+2,NN-1) = DFLOAT (II15)
         DA20(I1+1,I2+2,NN-1) = DFLOAT (II16)
         DA20(I1+2,I2+2,NN-1) = DFLOAT (II17)
         DA20(I1+3,I2+2,NN-1) = DFLOAT (II1)
         II15 = I1 + I2 + 3
         II16 = I1 + I2 + 4
         II17 = I1 + I2 + 5
         II1 = I1 + I2 + 6
         DA20(I1,I2+3,NN-1) = DFLOAT (II15)
         DA20(I1+1,I2+3,NN-1) = DFLOAT (II16)
         DA20(I1+2,I2+3,NN-1) = DFLOAT (II17)
         DA20(I1+3,I2+3,NN-1) = DFLOAT (II1)
        END DO
        DO I1=II13,NN-1,1
         II1 = I1 + I2
         DA20(I1,I2,NN-1) = DFLOAT (II1)
         II1 = I1 + I2 + 1
         DA20(I1,I2+1,NN-1) = DFLOAT (II1)
         II1 = I1 + I2 + 2
         DA20(I1,I2+2,NN-1) = DFLOAT (II1)
         II1 = I1 + I2 + 3
         DA20(I1,I2+3,NN-1) = DFLOAT (II1)
        END DO
       END DO
       DO I2=I2,NN-1,1
        DO I1=2,NN-4,4
         II20 = I1 + I2
         II21 = I1 + I2 + 1
         II22 = I1 + I2 + 2
         II2 = I1 + I2 + 3
         DA20(I1,I2,NN-1) = DFLOAT (II20)
         DA20(I1+1,I2,NN-1) = DFLOAT (II21)
         DA20(I1+2,I2,NN-1) = DFLOAT (II22)
         DA20(I1+3,I2,NN-1) = DFLOAT (II2)
        END DO
        DO I1=II18,NN-1,1
         II2 = I1 + I2
         DA20(I1,I2,NN-1) = DFLOAT (II2)
        END DO
       END DO
       DO I1=2,NN-4,4
        DA20(I1,2,2) = DREAL (CD20(I1,2,1))
        DA20(I1+1,2,2) = DREAL (CD20(I1+1,2,1))
        DA20(I1+2,2,2) = DREAL (CD20(I1+2,2,1))
        DA20(I1+3,2,2) = DREAL (CD20(I1+3,2,1))
       END DO
       DO I1=II23,NN-1,1
        DA20(I1,2,2) = DREAL (CD20(I1,2,1))
       END DO

       RETURN 
      END

      SUBROUTINE SUB2 ( DA10, DA20, DA30, DA40, LD10, LD20, NN )
       IMPLICIT REAL*8 (A-B,D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(NN,NN,NN), DA20(NN,NN,NN), DA30(NN,NN,NN), DA40(NN
     X   ,NN,NN), LD10(NN,NN,NN), LD20(NN,NN,NN)
       DIMENSION CD20(20,20,20), CD10(20,20,20)
       COMMON /BLK/ CD10, CD20
       INTEGER II8, II7, II6, II5, II4, II3, II2, II1
       DOUBLE PRECISION DD28, DD27, DD26, DD25, DD24, DD23, DD22, DD21, 
     X   DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, DD12, DD11, 
     X   DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       COMPLEX*16 DC28, DC27, DC26, DC25, DC24, DC23, DC22, DC21, DC20, 
     X   DC19, DC18, DC17, DC16, DC15, DC14, DC13, DC12, DC11, DC10, DC9
     X   , DC8, DC7, DC6, DC5, DC4, DC3, DC2, DC1

       II2 = (NN - 2) / 4
       II1 = II2 * 4 + 2
       II4 = (NN - 2) / 4
       II3 = II4 * 4 + 2
       II6 = (NN - 2) / 3
       II5 = II6 * 3 + 2
       II8 = (NN - 2) / 4
       II7 = II8 * 4 + 2
C$OMP PARALLEL SHARED (NN,DA20,DA30,DA40,DA10,II1,II3,CD20,II5,II7,CD10,
C$OMP& LD10,LD20) PRIVATE (I3,I2,I1,DC1,DD1,DD2,DD3,DD4,DC2,DD5,DD6,DD7,
C$OMP& DD8,DD9,DD10,DD11,DD12,DD13,DD14,DD15,DD16,DC3,DC4,DD17,DD18,DD19
C$OMP& ,DD20,DD21,DD22,DD23,DD24,DD25,DD26,DD27,DD28,DC5,DC6,DC7,DC8,DC9
C$OMP& ,DC10,DC11,DC12,DC13,DC14,DC15,DC16,DC17,DC18,DC19,DC20,DC21,DC22
C$OMP& ,DC23,DC24,DC25,DC26,DC27,DC28,NZ)
C$OMP DO 
       DO I3=2,NN-1
        DO I2=2,NN-3,3
         DO I1=2,NN-4,4
          DA20(I1,I2,I3) = DA30(I1,I2+1,I3) - DA40(I1-1,I2,I3)
          DA20(I1,I2+1,I3) = DA30(I1,I2+2,I3) - DA40(I1-1,I2+1,I3)
          DA20(I1,I2+2,I3) = DA30(I1,I2+3,I3) - DA40(I1-1,I2+2,I3)
          DA10(I1,I2,I3) = DA20(I1-1,I2,I3) - DA30(I1,I2+1,I3)
          DA10(I1,I2+1,I3) = DA20(I1-1,I2+1,I3) - DA30(I1,I2+2,I3)
          DA10(I1,I2+2,I3) = DA20(I1-1,I2+2,I3) - DA30(I1,I2+3,I3)
          DA20(I1+1,I2,I3) = DA30(I1+1,I2+1,I3) - DA40(I1,I2,I3)
          DA20(I1+1,I2+1,I3) = DA30(I1+1,I2+2,I3) - DA40(I1,I2+1,I3)
          DA20(I1+1,I2+2,I3) = DA30(I1+1,I2+3,I3) - DA40(I1,I2+2,I3)
          DA10(I1+1,I2,I3) = DA20(I1,I2,I3) - DA30(I1+1,I2+1,I3)
          DA10(I1+1,I2+1,I3) = DA20(I1,I2+1,I3) - DA30(I1+1,I2+2,I3)
          DA10(I1+1,I2+2,I3) = DA20(I1,I2+2,I3) - DA30(I1+1,I2+3,I3)
          DA20(I1+2,I2,I3) = DA30(I1+2,I2+1,I3) - DA40(I1+1,I2,I3)
          DA20(I1+2,I2+1,I3) = DA30(I1+2,I2+2,I3) - DA40(I1+1,I2+1,I3)
          DA20(I1+2,I2+2,I3) = DA30(I1+2,I2+3,I3) - DA40(I1+1,I2+2,I3)
          DA10(I1+2,I2,I3) = DA20(I1+1,I2,I3) - DA30(I1+2,I2+1,I3)
          DA10(I1+2,I2+1,I3) = DA20(I1+1,I2+1,I3) - DA30(I1+2,I2+2,I3)
          DA10(I1+2,I2+2,I3) = DA20(I1+1,I2+2,I3) - DA30(I1+2,I2+3,I3)
          DA20(I1+3,I2,I3) = DA30(I1+3,I2+1,I3) - DA40(I1+2,I2,I3)
          DA20(I1+3,I2+1,I3) = DA30(I1+3,I2+2,I3) - DA40(I1+2,I2+1,I3)
          DA20(I1+3,I2+2,I3) = DA30(I1+3,I2+3,I3) - DA40(I1+2,I2+2,I3)
          DA10(I1+3,I2,I3) = DA20(I1+2,I2,I3) - DA30(I1+3,I2+1,I3)
          DA10(I1+3,I2+1,I3) = DA20(I1+2,I2+1,I3) - DA30(I1+3,I2+2,I3)
          DA10(I1+3,I2+2,I3) = DA20(I1+2,I2+2,I3) - DA30(I1+3,I2+3,I3)
         END DO
         DO I1=II1,NN-1,1
          DA20(I1,I2,I3) = DA30(I1,I2+1,I3) - DA40(I1-1,I2,I3)
          DA20(I1,I2+1,I3) = DA30(I1,I2+2,I3) - DA40(I1-1,I2+1,I3)
          DA20(I1,I2+2,I3) = DA30(I1,I2+3,I3) - DA40(I1-1,I2+2,I3)
          DA10(I1,I2,I3) = DA20(I1-1,I2,I3) - DA30(I1,I2+1,I3)
          DA10(I1,I2+1,I3) = DA20(I1-1,I2+1,I3) - DA30(I1,I2+2,I3)
          DA10(I1,I2+2,I3) = DA20(I1-1,I2+2,I3) - DA30(I1,I2+3,I3)
         END DO
        END DO
        DO I2=I2,NN-1,1
         DO I1=2,NN-4,4
          DA20(I1,I2,I3) = DA30(I1,I2+1,I3) - DA40(I1-1,I2,I3)
          DA10(I1,I2,I3) = DA20(I1-1,I2,I3) - DA30(I1,I2+1,I3)
          DA20(I1+1,I2,I3) = DA30(I1+1,I2+1,I3) - DA40(I1,I2,I3)
          DA10(I1+1,I2,I3) = DA20(I1,I2,I3) - DA30(I1+1,I2+1,I3)
          DA20(I1+2,I2,I3) = DA30(I1+2,I2+1,I3) - DA40(I1+1,I2,I3)
          DA10(I1+2,I2,I3) = DA20(I1+1,I2,I3) - DA30(I1+2,I2+1,I3)
          DA20(I1+3,I2,I3) = DA30(I1+3,I2+1,I3) - DA40(I1+2,I2,I3)
          DA10(I1+3,I2,I3) = DA20(I1+2,I2,I3) - DA30(I1+3,I2+1,I3)
         END DO
         DO I1=II3,NN-1,1
          DA20(I1,I2,I3) = DA30(I1,I2+1,I3) - DA40(I1-1,I2,I3)
          DA10(I1,I2,I3) = DA20(I1-1,I2,I3) - DA30(I1,I2+1,I3)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I3=2,NN-1
        DO I2=2,NN-4,4
         DO I1=2,NN-3,3
          DD9 = DFLOAT (I1)
          DD10 = DFLOAT (I1 + 1)
          DD2 = DFLOAT (I1 + 2)
          DD11 = DMAX1 (DA40(I1,NN-1,I3), DD9)
          DD12 = DMAX1 (DA40(I1+1,NN-1,I3), DD10)
          DD1 = DMAX1 (DA40(I1+2,NN-1,I3), DD2)
          DD13 = DFLOAT (I1)
          DD14 = DFLOAT (I1 + 1)
          DD4 = DFLOAT (I1 + 2)
          DD15 = DMAX1 (DA40(I1,NN-1,I3), DD13)
          DD16 = DMAX1 (DA40(I1+1,NN-1,I3), DD14)
          DD3 = DMAX1 (DA40(I1+2,NN-1,I3), DD4)
          DC3 = DCMPLX (DD11, DD15)
          DC4 = DCMPLX (DD12, DD16)
          DC1 = DCMPLX (DD1, DD3)
          DC8 = DC3 - CD20(I1,I2,I3)
          DC9 = DC4 - CD20(I1+1,I2,I3)
          DC10 = DC1 - CD20(I1+2,I2,I3)
          DD9 = DFLOAT (I1)
          DD10 = DFLOAT (I1 + 1)
          DD2 = DFLOAT (I1 + 2)
          DD11 = DMAX1 (DA40(I1,NN-1,I3), DD9)
          DD12 = DMAX1 (DA40(I1+1,NN-1,I3), DD10)
          DD1 = DMAX1 (DA40(I1+2,NN-1,I3), DD2)
          DD13 = DFLOAT (I1)
          DD14 = DFLOAT (I1 + 1)
          DD4 = DFLOAT (I1 + 2)
          DD15 = DMAX1 (DA40(I1,NN-1,I3), DD13)
          DD16 = DMAX1 (DA40(I1+1,NN-1,I3), DD14)
          DD3 = DMAX1 (DA40(I1+2,NN-1,I3), DD4)
          CD20(I1,I2,I3) = DC8
          DC3 = DCMPLX (DD11, DD15)
          CD20(I1+1,I2,I3) = DC9
          DC4 = DCMPLX (DD12, DD16)
          CD20(I1+2,I2,I3) = DC10
          DC1 = DCMPLX (DD1, DD3)
          DC11 = DC3 - CD20(I1,I2+1,I3)
          DC12 = DC4 - CD20(I1+1,I2+1,I3)
          DC13 = DC1 - CD20(I1+2,I2+1,I3)
          DD9 = DFLOAT (I1)
          DD10 = DFLOAT (I1 + 1)
          DD2 = DFLOAT (I1 + 2)
          DD11 = DMAX1 (DA40(I1,NN-1,I3), DD9)
          DD12 = DMAX1 (DA40(I1+1,NN-1,I3), DD10)
          DD1 = DMAX1 (DA40(I1+2,NN-1,I3), DD2)
          DD13 = DFLOAT (I1)
          DD14 = DFLOAT (I1 + 1)
          DD4 = DFLOAT (I1 + 2)
          DD15 = DMAX1 (DA40(I1,NN-1,I3), DD13)
          DD16 = DMAX1 (DA40(I1+1,NN-1,I3), DD14)
          DD3 = DMAX1 (DA40(I1+2,NN-1,I3), DD4)
          CD20(I1,I2+1,I3) = DC11
          DC3 = DCMPLX (DD11, DD15)
          CD20(I1+1,I2+1,I3) = DC12
          DC4 = DCMPLX (DD12, DD16)
          CD20(I1+2,I2+1,I3) = DC13
          DC1 = DCMPLX (DD1, DD3)
          DC14 = DC3 - CD20(I1,I2+2,I3)
          DC15 = DC4 - CD20(I1+1,I2+2,I3)
          DC16 = DC1 - CD20(I1+2,I2+2,I3)
          DD9 = DFLOAT (I1)
          DD10 = DFLOAT (I1 + 1)
          DD2 = DFLOAT (I1 + 2)
          DD11 = DMAX1 (DA40(I1,NN-1,I3), DD9)
          DD12 = DMAX1 (DA40(I1+1,NN-1,I3), DD10)
          DD1 = DMAX1 (DA40(I1+2,NN-1,I3), DD2)
          DD13 = DFLOAT (I1)
          DD14 = DFLOAT (I1 + 1)
          DD4 = DFLOAT (I1 + 2)
          DD15 = DMAX1 (DA40(I1,NN-1,I3), DD13)
          DD16 = DMAX1 (DA40(I1+1,NN-1,I3), DD14)
          DD3 = DMAX1 (DA40(I1+2,NN-1,I3), DD4)
          CD20(I1,I2+2,I3) = DC14
          DC3 = DCMPLX (DD11, DD15)
          CD20(I1+1,I2+2,I3) = DC15
          DC4 = DCMPLX (DD12, DD16)
          CD20(I1+2,I2+2,I3) = DC16
          DC1 = DCMPLX (DD1, DD3)
          DC17 = DC3 - CD20(I1,I2+3,I3)
          DC18 = DC4 - CD20(I1+1,I2+3,I3)
          DC19 = DC1 - CD20(I1+2,I2+3,I3)
          CD20(I1+2,I2+3,I3) = DC19
          CD20(I1+1,I2+3,I3) = DC18
          CD20(I1,I2+3,I3) = DC17
         END DO
         DO I1=II5,NN-1,1
          DD2 = DFLOAT (I1)
          DD1 = DMAX1 (DA40(I1,NN-1,I3), DD2)
          DD4 = DFLOAT (I1)
          DD3 = DMAX1 (DA40(I1,NN-1,I3), DD4)
          DC1 = DCMPLX (DD1, DD3)
          DC20 = DC1 - CD20(I1,I2,I3)
          DD2 = DFLOAT (I1)
          DD1 = DMAX1 (DA40(I1,NN-1,I3), DD2)
          DD4 = DFLOAT (I1)
          DD3 = DMAX1 (DA40(I1,NN-1,I3), DD4)
          CD20(I1,I2,I3) = DC20
          DC1 = DCMPLX (DD1, DD3)
          DC21 = DC1 - CD20(I1,I2+1,I3)
          DD2 = DFLOAT (I1)
          DD1 = DMAX1 (DA40(I1,NN-1,I3), DD2)
          DD4 = DFLOAT (I1)
          DD3 = DMAX1 (DA40(I1,NN-1,I3), DD4)
          CD20(I1,I2+1,I3) = DC21
          DC1 = DCMPLX (DD1, DD3)
          DC22 = DC1 - CD20(I1,I2+2,I3)
          DD2 = DFLOAT (I1)
          DD1 = DMAX1 (DA40(I1,NN-1,I3), DD2)
          DD4 = DFLOAT (I1)
          DD3 = DMAX1 (DA40(I1,NN-1,I3), DD4)
          CD20(I1,I2+2,I3) = DC22
          DC1 = DCMPLX (DD1, DD3)
          DC23 = DC1 - CD20(I1,I2+3,I3)
          CD20(I1,I2+3,I3) = DC23
         END DO
        END DO
        DO I2=I2,NN-1,1
         DO I1=2,NN-4,4
          DD17 = DFLOAT (I1)
          DD18 = DFLOAT (I1 + 1)
          DD19 = DFLOAT (I1 + 2)
          DD6 = DFLOAT (I1 + 3)
          DD20 = DMAX1 (DA40(I1,NN-1,I3), DD17)
          DD21 = DMAX1 (DA40(I1+1,NN-1,I3), DD18)
          DD22 = DMAX1 (DA40(I1+2,NN-1,I3), DD19)
          DD5 = DMAX1 (DA40(I1+3,NN-1,I3), DD6)
          DD23 = DFLOAT (I1)
          DD24 = DFLOAT (I1 + 1)
          DD25 = DFLOAT (I1 + 2)
          DD8 = DFLOAT (I1 + 3)
          DD26 = DMAX1 (DA40(I1,NN-1,I3), DD23)
          DD27 = DMAX1 (DA40(I1+1,NN-1,I3), DD24)
          DD28 = DMAX1 (DA40(I1+2,NN-1,I3), DD25)
          DD7 = DMAX1 (DA40(I1+3,NN-1,I3), DD8)
          DC5 = DCMPLX (DD20, DD26)
          DC6 = DCMPLX (DD21, DD27)
          DC7 = DCMPLX (DD22, DD28)
          DC2 = DCMPLX (DD5, DD7)
          DC24 = DC5 - CD20(I1,I2,I3)
          DC25 = DC6 - CD20(I1+1,I2,I3)
          DC26 = DC7 - CD20(I1+2,I2,I3)
          DC27 = DC2 - CD20(I1+3,I2,I3)
          CD20(I1+3,I2,I3) = DC27
          CD20(I1+2,I2,I3) = DC26
          CD20(I1+1,I2,I3) = DC25
          CD20(I1,I2,I3) = DC24
         END DO
         DO I1=II7,NN-1,1
          DD6 = DFLOAT (I1)
          DD5 = DMAX1 (DA40(I1,NN-1,I3), DD6)
          DD8 = DFLOAT (I1)
          DD7 = DMAX1 (DA40(I1,NN-1,I3), DD8)
          DC2 = DCMPLX (DD5, DD7)
          DC28 = DC2 - CD20(I1,I2,I3)
          CD20(I1,I2,I3) = DC28
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

       NZ = (NN - 1) / 2
       DO I1=1,NZ

C$OMP DO 
        DO I2=I1+1,NN-3
         CD20(I1,I1,I2) = CD10(I1,I2,NZ)
         DO I3=1,NN-1
          IF (LD10(I1,I2,I3)) THEN
           DA20(I1,I2,I3) = DA30(I1,I2,I3) / (2D0 + DABS (DIMAG (CD20(I1
     X       ,I2,I3))) * 2D0)
           DA30(I1,I2,I3) = DA40(I1,I2,I3) / (1D0 + DA10(I1*2-1,I2,I3))
           GO TO 13
          END IF
          DA40(I1,I2,I3) = DIMAG (CD10(I1,I2,I3)) - DREAL (CD20(I1,I2,I3
     X      ))
   13     CONTINUE
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
        DO I3=1,NN-3
         DO I2=1,NN-3
          DA10(I2,I1*2,I3) = DA20(I2,I1,I3) - DA40(I2+1,I1+2,I3+3)
          CD20(I2,I1+1,I3+3) = DCMPLX (DA30(NN-1,I2,I3)) + CD10(I2,I1,I3
     X      )
          IF (DA10(I2,I1,I3) .GT. DA20(I1,I2,I3)) THEN
           LD10(I2,I1,I3) = .NOT.LD10(I2,I1*2,I3) .AND. LD20(I1,I2,I3)
          END IF
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       END DO
C$OMP END PARALLEL 

       RETURN 
      END
