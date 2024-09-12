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
       WRITE (6, 99) 'DA10=', DA10
       WRITE (6, 99) 'DA20=', DA20
       WRITE (6, 99) 'DA30=', DA30
       WRITE (6, 99) 'DA40=', DA40
       WRITE (6, *) 'LD10=', LD10
       WRITE (6, *) 'LD20=', LD20
   99  FORMAT(A,(8F10.5))
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
       INTEGER II18, II17, II16, II15, II14, II13, II12, II11, II10, II9
     X   , II8, II7, II6, II5, II4, II3, II2, II1
       DOUBLE PRECISION DD27, DD26, DD25, DD24, DD23, DD22, DD21, DD20, 
     X   DD19, DD18, DD17, DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9
     X   , DD8, DD7, DD6, DD5, DD4, DD3
       LOGICAL LL25, LL24, LL23, LL22, LL21, LL20, LL19, LL18, LL17, 
     X   LL16, LL15, LL14, LL13, LL12, LL11, LL10, LL9, LL8, LL7, LL6, 
     X   LL5, LL4, LL3, LL2, LL1

       II4 = (NN - 1) / 4
       II3 = II4 * 4 + 1

C$OMP PARALLEL SHARED (NN,DA20,DA10,DA30,DA40,LD10,LD20,CD10,CD20,II3,
C$OMP& II5,II7,II6,II8,II10,II9,II15,II14) PRIVATE (K,J,I,DX,DY,DD3,DD4,
C$OMP& DD5,DD6,DD7,DD8,DD9,DD10,DD11,DD12,DD13,DD14,DD15,DD16,DD17,DD18,
C$OMP& DD19,DD20,DD21,DD22,DD23,DD24,DD25,DD26,DD27,LL1,LL2,LL3,LL4,LL5,
C$OMP& LL6,LL7,LL8,LL9,LL10,LL11,LL12,LL13,LL14,LL15,LL16,LL17,LL18,LL19
C$OMP& ,LL20,LL21,LL22,LL23,LL24,LL25,I3,I2,I1)
C$OMP DO 
       DO K=2,NN-1
        DO J=1,NN-1
         DO I=1,NN-1
          DX = DA20(I,J,K) + DA10(I,J,K) * DD1
          DY = DA30(I,J,K) * DD2 - DA40(I,J,K)
          IF (DX .GT. DY) THEN
           LD10(I,J,K) = .TRUE.
          END IF
          LD20(I,J,K) = .NOT.LD20(I,J,K) .AND. LD10(I,J,K)
          CD10(I,J,K) = DCMPLX (DX, DY) - CD20(I,J,K)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER


C$OMP DO 
       DO K=2,NN-1
        DO J=1,NN-1
         DO I=1,NN-4,4
          DD8 = DA10(I,J,K) * DA20(I,J,K)
          DD9 = DA10(I+1,J,K) * DA20(I+1,J,K)
          DD10 = DA10(I+2,J,K) * DA20(I+2,J,K)
          DD4 = DA10(I+3,J,K) * DA20(I+3,J,K)
          DD11 = DD8 / DA30(I,J,K)
          DD12 = DD9 / DA30(I+1,J,K)
          DD13 = DD10 / DA30(I+2,J,K)
          DD3 = DD4 / DA30(I+3,J,K)
          DD14 = DREAL (CD10(I,J,K-1))
          DD15 = DREAL (CD10(I+1,J,K-1))
          DD16 = DREAL (CD10(I+2,J,K-1))
          DD6 = DREAL (CD10(I+3,J,K-1))
          DD17 = DIMAG (CD20(I,J,K+1))
          DD18 = DIMAG (CD20(I+1,J,K+1))
          DD19 = DIMAG (CD20(I+2,J,K+1))
          DD7 = DIMAG (CD20(I+3,J,K+1))
          DD20 = DD14 / DD17
          DD21 = DD15 / DD18
          DD22 = DD16 / DD19
          DD5 = DD6 / DD7
          DD23 = DD11 - DD20
          DD24 = DD12 - DD21
          DD25 = DD13 - DD22
          DD26 = DD3 - DD5
          DA30(I+3,J,K) = DD26
          DA30(I+2,J,K) = DD25
          DA30(I+1,J,K) = DD24
          DA30(I,J,K) = DD23
         END DO
         DO I=II3,NN-1,1
          DD4 = DA10(I,J,K) * DA20(I,J,K)
          DD3 = DD4 / DA30(I,J,K)
          DD6 = DREAL (CD10(I,J,K-1))
          DD7 = DIMAG (CD20(I,J,K+1))
          DD5 = DD6 / DD7
          DD27 = DD3 - DD5
          DA30(I,J,K) = DD27
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER


C$OMP DO 
       DO K=2,NN-1
        DO J=1,NN-2,2
         DO I=1,NN-1
          IF (LD10(I,J,K) .AND. LD20(I,J,K)) THEN
           DA10(I,J,K) = 0D0
          ELSE
           CD20(I,J,K) = DCMPLX (DA30(I,J,K), 1D0)
          END IF
          IF (LD10(I,J+1,K) .AND. LD20(I,J+1,K)) THEN
           DA10(I,J+1,K) = 0D0
          ELSE
           CD20(I,J+1,K) = DCMPLX (DA30(I,J+1,K), 1D0)
          END IF
         END DO
        END DO
        DO J=J,NN-1,1
         DO I=1,NN-1
          IF (LD10(I,J,K) .AND. LD20(I,J,K)) THEN
           DA10(I,J,K) = 0D0
          ELSE
           CD20(I,J,K) = DCMPLX (DA30(I,J,K), 1D0)
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP SINGLE 
       II6 = (NN - 2) / 4
       II5 = II6 * 4 + 2
       II8 = (NN - 2) / 4
       II7 = II8 * 4 + 2
       II10 = (NN - 2) / 4
       II9 = II10 * 4 + 2
       II15 = (NN - 2) / 4
       II14 = II15 * 4 + 2
C$OMP END SINGLE NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I3=2,NN-1,1
        DO I2=2,NN-4,4
         DO I1=2,NN-4,4
          LL1 = .NOT.LD20(I1,I2,I3) .AND. LD10(I1,I2,I3)
          LL2 = .NOT.LD20(I1+1,I2,I3) .AND. LD10(I1+1,I2,I3)
          LL3 = .NOT.LD20(I1+2,I2,I3) .AND. LD10(I1+2,I2,I3)
          LL4 = .NOT.LD20(I1+3,I2,I3) .AND. LD10(I1+3,I2,I3)
          LL5 = .NOT.LD20(I1,I2+1,I3) .AND. LD10(I1,I2+1,I3)
          LL6 = .NOT.LD20(I1+1,I2+1,I3) .AND. LD10(I1+1,I2+1,I3)
          LL7 = .NOT.LD20(I1+2,I2+1,I3) .AND. LD10(I1+2,I2+1,I3)
          LL8 = .NOT.LD20(I1+3,I2+1,I3) .AND. LD10(I1+3,I2+1,I3)
          LL9 = .NOT.LD20(I1,I2+2,I3) .AND. LD10(I1,I2+2,I3)
          LL10 = .NOT.LD20(I1+1,I2+2,I3) .AND. LD10(I1+1,I2+2,I3)
          LL11 = .NOT.LD20(I1+2,I2+2,I3) .AND. LD10(I1+2,I2+2,I3)
          LL12 = .NOT.LD20(I1+3,I2+2,I3) .AND. LD10(I1+3,I2+2,I3)
          LL13 = .NOT.LD20(I1,I2+3,I3) .AND. LD10(I1,I2+3,I3)
          LL14 = .NOT.LD20(I1+1,I2+3,I3) .AND. LD10(I1+1,I2+3,I3)
          LL15 = .NOT.LD20(I1+2,I2+3,I3) .AND. LD10(I1+2,I2+3,I3)
          LL16 = .NOT.LD20(I1+3,I2+3,I3) .AND. LD10(I1+3,I2+3,I3)
          LD20(I1+3,I2+3,I3) = LL16
          LD20(I1+2,I2+3,I3) = LL15
          LD20(I1+1,I2+3,I3) = LL14
          LD20(I1,I2+3,I3) = LL13
          LD20(I1+3,I2+2,I3) = LL12
          LD20(I1+2,I2+2,I3) = LL11
          LD20(I1+1,I2+2,I3) = LL10
          LD20(I1,I2+2,I3) = LL9
          LD20(I1+3,I2+1,I3) = LL8
          LD20(I1+2,I2+1,I3) = LL7
          LD20(I1+1,I2+1,I3) = LL6
          LD20(I1,I2+1,I3) = LL5
          LD20(I1+3,I2,I3) = LL4
          LD20(I1+2,I2,I3) = LL3
          LD20(I1+1,I2,I3) = LL2
          LD20(I1,I2,I3) = LL1
         END DO
         DO I1=II5,NN-1,1
          LL17 = .NOT.LD20(I1,I2,I3) .AND. LD10(I1,I2,I3)
          LL18 = .NOT.LD20(I1,I2+1,I3) .AND. LD10(I1,I2+1,I3)
          LL19 = .NOT.LD20(I1,I2+2,I3) .AND. LD10(I1,I2+2,I3)
          LL20 = .NOT.LD20(I1,I2+3,I3) .AND. LD10(I1,I2+3,I3)
          LD20(I1,I2+3,I3) = LL20
          LD20(I1,I2+2,I3) = LL19
          LD20(I1,I2+1,I3) = LL18
          LD20(I1,I2,I3) = LL17
         END DO
        END DO
        DO I2=I2,NN-1,1

         DO I1=2,NN-4,4
          LL21 = .NOT.LD20(I1,I2,I3) .AND. LD10(I1,I2,I3)
          LL22 = .NOT.LD20(I1+1,I2,I3) .AND. LD10(I1+1,I2,I3)
          LL23 = .NOT.LD20(I1+2,I2,I3) .AND. LD10(I1+2,I2,I3)
          LL24 = .NOT.LD20(I1+3,I2,I3) .AND. LD10(I1+3,I2,I3)
          LD20(I1+3,I2,I3) = LL24
          LD20(I1+2,I2,I3) = LL23
          LD20(I1+1,I2,I3) = LL22
          LD20(I1,I2,I3) = LL21
         END DO
         DO I1=II7,NN-1,1
          LL25 = .NOT.LD20(I1,I2,I3) .AND. LD10(I1,I2,I3)
          LD20(I1,I2,I3) = LL25
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO I2=2,NN-1,1
        DO I1=2,NN-1,1
         DO I3=2,NN-1,1
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
         II11 = I1 + I2
         II12 = I1 + I2 + 1
         II13 = I1 + I2 + 2
         II1 = I1 + I2 + 3
         DA20(I1,I2,NN-1) = DFLOAT (II11)
         DA20(I1+1,I2,NN-1) = DFLOAT (II12)
         DA20(I1+2,I2,NN-1) = DFLOAT (II13)
         DA20(I1+3,I2,NN-1) = DFLOAT (II1)
         II11 = I1 + I2 + 1
         II12 = I1 + I2 + 2
         II13 = I1 + I2 + 3
         II1 = I1 + I2 + 4
         DA20(I1,I2+1,NN-1) = DFLOAT (II11)
         DA20(I1+1,I2+1,NN-1) = DFLOAT (II12)
         DA20(I1+2,I2+1,NN-1) = DFLOAT (II13)
         DA20(I1+3,I2+1,NN-1) = DFLOAT (II1)
         II11 = I1 + I2 + 2
         II12 = I1 + I2 + 3
         II13 = I1 + I2 + 4
         II1 = I1 + I2 + 5
         DA20(I1,I2+2,NN-1) = DFLOAT (II11)
         DA20(I1+1,I2+2,NN-1) = DFLOAT (II12)
         DA20(I1+2,I2+2,NN-1) = DFLOAT (II13)
         DA20(I1+3,I2+2,NN-1) = DFLOAT (II1)
         II11 = I1 + I2 + 3
         II12 = I1 + I2 + 4
         II13 = I1 + I2 + 5
         II1 = I1 + I2 + 6
         DA20(I1,I2+3,NN-1) = DFLOAT (II11)
         DA20(I1+1,I2+3,NN-1) = DFLOAT (II12)
         DA20(I1+2,I2+3,NN-1) = DFLOAT (II13)
         DA20(I1+3,I2+3,NN-1) = DFLOAT (II1)
        END DO
        DO I1=II9,NN-1,1
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
         II16 = I1 + I2
         II17 = I1 + I2 + 1
         II18 = I1 + I2 + 2
         II2 = I1 + I2 + 3
         DA20(I1,I2,NN-1) = DFLOAT (II16)
         DA20(I1+1,I2,NN-1) = DFLOAT (II17)
         DA20(I1+2,I2,NN-1) = DFLOAT (II18)
         DA20(I1+3,I2,NN-1) = DFLOAT (II2)
        END DO
        DO I1=II14,NN-1,1
         II2 = I1 + I2
         DA20(I1,I2,NN-1) = DFLOAT (II2)
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
       INTEGER II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       DOUBLE PRECISION DD28, DD27, DD26, DD25, DD24, DD23, DD22, DD21, 
     X   DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, DD12, DD11, 
     X   DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       COMPLEX*16 DC32, DC31, DC30, DC29, DC28, DC27, DC26, DC25, DC24, 
     X   DC23, DC22, DC21, DC20, DC19, DC18, DC17, DC16, DC15, DC14, 
     X   DC13, DC12, DC11, DC10, DC9, DC8, DC7, DC6, DC5, DC4, DC3, DC2
     X   , DC1

       II3 = (NN - 2) / 4
       II2 = II3 * 4 + 2
       II5 = (NN - 2) / 4
       II4 = II5 * 4 + 2
       II7 = (NN - 2) / 3
       II6 = II7 * 3 + 2
       II9 = (NN - 2) / 4
       II8 = II9 * 4 + 2
C$OMP PARALLEL SHARED (NN,DA20,DA30,DA40,DA10,II2,II4,CD20,II6,II8) 
C$OMP& PRIVATE (I3,I2,I1,DC1,DD1,DD2,DD3,DD4,DC2,DD5,DD6,DD7,DD8,DD9,
C$OMP& DD10,DD11,DD12,DD13,DD14,DD15,DD16,DC4,DC5,DD17,DD18,DD19,DD20,
C$OMP& DD21,DD22,DD23,DD24,DD25,DD26,DD27,DD28,DC6,DC7,DC8,DC12,DC13,
C$OMP& DC14,DC15,DC16,DC17,DC18,DC19,DC20,DC21,DC22,DC23,DC24,DC25,DC26,
C$OMP& DC27,DC28,DC29,DC30,DC31,DC32)
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
         DO I1=II2,NN-1,1
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
         DO I1=II4,NN-1,1
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
          DD11 = DMAX1 (DA40(I1,NN-1,NN-1), DD9)
          DD12 = DMAX1 (DA40(I1+1,NN-1,NN-1), DD10)
          DD1 = DMAX1 (DA40(I1+2,NN-1,NN-1), DD2)
          DD13 = DFLOAT (I1)
          DD14 = DFLOAT (I1 + 1)
          DD4 = DFLOAT (I1 + 2)
          DD15 = DMAX1 (DA40(I1,NN-1,NN-1), DD13)
          DD16 = DMAX1 (DA40(I1+1,NN-1,NN-1), DD14)
          DD3 = DMAX1 (DA40(I1+2,NN-1,NN-1), DD4)
          DC4 = DCMPLX (DD11, DD15)
          DC5 = DCMPLX (DD12, DD16)
          DC1 = DCMPLX (DD1, DD3)
          DC12 = DC4 - CD20(I1,I2,I3)
          DC13 = DC5 - CD20(I1+1,I2,I3)
          DC14 = DC1 - CD20(I1+2,I2,I3)
          DD9 = DFLOAT (I1)
          DD10 = DFLOAT (I1 + 1)
          DD2 = DFLOAT (I1 + 2)
          DD11 = DMAX1 (DA40(I1,NN-1,NN-1), DD9)
          DD12 = DMAX1 (DA40(I1+1,NN-1,NN-1), DD10)
          DD1 = DMAX1 (DA40(I1+2,NN-1,NN-1), DD2)
          DD13 = DFLOAT (I1)
          DD14 = DFLOAT (I1 + 1)
          DD4 = DFLOAT (I1 + 2)
          DD15 = DMAX1 (DA40(I1,NN-1,NN-1), DD13)
          DD16 = DMAX1 (DA40(I1+1,NN-1,NN-1), DD14)
          DD3 = DMAX1 (DA40(I1+2,NN-1,NN-1), DD4)
          CD20(I1,I2,I3) = DC12
          DC4 = DCMPLX (DD11, DD15)
          CD20(I1+1,I2,I3) = DC13
          DC5 = DCMPLX (DD12, DD16)
          CD20(I1+2,I2,I3) = DC14
          DC1 = DCMPLX (DD1, DD3)
          DC15 = DC4 - CD20(I1,I2+1,I3)
          DC16 = DC5 - CD20(I1+1,I2+1,I3)
          DC17 = DC1 - CD20(I1+2,I2+1,I3)
          DD9 = DFLOAT (I1)
          DD10 = DFLOAT (I1 + 1)
          DD2 = DFLOAT (I1 + 2)
          DD11 = DMAX1 (DA40(I1,NN-1,NN-1), DD9)
          DD12 = DMAX1 (DA40(I1+1,NN-1,NN-1), DD10)
          DD1 = DMAX1 (DA40(I1+2,NN-1,NN-1), DD2)
          DD13 = DFLOAT (I1)
          DD14 = DFLOAT (I1 + 1)
          DD4 = DFLOAT (I1 + 2)
          DD15 = DMAX1 (DA40(I1,NN-1,NN-1), DD13)
          DD16 = DMAX1 (DA40(I1+1,NN-1,NN-1), DD14)
          DD3 = DMAX1 (DA40(I1+2,NN-1,NN-1), DD4)
          CD20(I1,I2+1,I3) = DC15
          DC4 = DCMPLX (DD11, DD15)
          CD20(I1+1,I2+1,I3) = DC16
          DC5 = DCMPLX (DD12, DD16)
          CD20(I1+2,I2+1,I3) = DC17
          DC1 = DCMPLX (DD1, DD3)
          DC18 = DC4 - CD20(I1,I2+2,I3)
          DC19 = DC5 - CD20(I1+1,I2+2,I3)
          DC20 = DC1 - CD20(I1+2,I2+2,I3)
          DD9 = DFLOAT (I1)
          DD10 = DFLOAT (I1 + 1)
          DD2 = DFLOAT (I1 + 2)
          DD11 = DMAX1 (DA40(I1,NN-1,NN-1), DD9)
          DD12 = DMAX1 (DA40(I1+1,NN-1,NN-1), DD10)
          DD1 = DMAX1 (DA40(I1+2,NN-1,NN-1), DD2)
          DD13 = DFLOAT (I1)
          DD14 = DFLOAT (I1 + 1)
          DD4 = DFLOAT (I1 + 2)
          DD15 = DMAX1 (DA40(I1,NN-1,NN-1), DD13)
          DD16 = DMAX1 (DA40(I1+1,NN-1,NN-1), DD14)
          DD3 = DMAX1 (DA40(I1+2,NN-1,NN-1), DD4)
          CD20(I1,I2+2,I3) = DC18
          DC4 = DCMPLX (DD11, DD15)
          CD20(I1+1,I2+2,I3) = DC19
          DC5 = DCMPLX (DD12, DD16)
          CD20(I1+2,I2+2,I3) = DC20
          DC1 = DCMPLX (DD1, DD3)
          DC21 = DC4 - CD20(I1,I2+3,I3)
          DC22 = DC5 - CD20(I1+1,I2+3,I3)
          DC23 = DC1 - CD20(I1+2,I2+3,I3)
          CD20(I1+2,I2+3,I3) = DC23
          CD20(I1+1,I2+3,I3) = DC22
          CD20(I1,I2+3,I3) = DC21
         END DO
         DO I1=II6,NN-1,1
          DD2 = DFLOAT (I1)
          DD1 = DMAX1 (DA40(I1,NN-1,NN-1), DD2)
          DD4 = DFLOAT (I1)
          DD3 = DMAX1 (DA40(I1,NN-1,NN-1), DD4)
          DC1 = DCMPLX (DD1, DD3)
          DC24 = DC1 - CD20(I1,I2,I3)
          DD2 = DFLOAT (I1)
          DD1 = DMAX1 (DA40(I1,NN-1,NN-1), DD2)
          DD4 = DFLOAT (I1)
          DD3 = DMAX1 (DA40(I1,NN-1,NN-1), DD4)
          CD20(I1,I2,I3) = DC24
          DC1 = DCMPLX (DD1, DD3)
          DC25 = DC1 - CD20(I1,I2+1,I3)
          DD2 = DFLOAT (I1)
          DD1 = DMAX1 (DA40(I1,NN-1,NN-1), DD2)
          DD4 = DFLOAT (I1)
          DD3 = DMAX1 (DA40(I1,NN-1,NN-1), DD4)
          CD20(I1,I2+1,I3) = DC25
          DC1 = DCMPLX (DD1, DD3)
          DC26 = DC1 - CD20(I1,I2+2,I3)
          DD2 = DFLOAT (I1)
          DD1 = DMAX1 (DA40(I1,NN-1,NN-1), DD2)
          DD4 = DFLOAT (I1)
          DD3 = DMAX1 (DA40(I1,NN-1,NN-1), DD4)
          CD20(I1,I2+2,I3) = DC26
          DC1 = DCMPLX (DD1, DD3)
          DC27 = DC1 - CD20(I1,I2+3,I3)
          CD20(I1,I2+3,I3) = DC27
         END DO
        END DO
        DO I2=I2,NN-1,1
         DO I1=2,NN-4,4
          DD17 = DFLOAT (I1)
          DD18 = DFLOAT (I1 + 1)
          DD19 = DFLOAT (I1 + 2)
          DD6 = DFLOAT (I1 + 3)
          DD20 = DMAX1 (DA40(I1,NN-1,NN-1), DD17)
          DD21 = DMAX1 (DA40(I1+1,NN-1,NN-1), DD18)
          DD22 = DMAX1 (DA40(I1+2,NN-1,NN-1), DD19)
          DD5 = DMAX1 (DA40(I1+3,NN-1,NN-1), DD6)
          DD23 = DFLOAT (I1)
          DD24 = DFLOAT (I1 + 1)
          DD25 = DFLOAT (I1 + 2)
          DD8 = DFLOAT (I1 + 3)
          DD26 = DMAX1 (DA40(I1,NN-1,NN-1), DD23)
          DD27 = DMAX1 (DA40(I1+1,NN-1,NN-1), DD24)
          DD28 = DMAX1 (DA40(I1+2,NN-1,NN-1), DD25)
          DD7 = DMAX1 (DA40(I1+3,NN-1,NN-1), DD8)
          DC6 = DCMPLX (DD20, DD26)
          DC7 = DCMPLX (DD21, DD27)
          DC8 = DCMPLX (DD22, DD28)
          DC2 = DCMPLX (DD5, DD7)
          DC28 = DC6 - CD20(I1,I2,I3)
          DC29 = DC7 - CD20(I1+1,I2,I3)
          DC30 = DC8 - CD20(I1+2,I2,I3)
          DC31 = DC2 - CD20(I1+3,I2,I3)
          CD20(I1+3,I2,I3) = DC31
          CD20(I1+2,I2,I3) = DC30
          CD20(I1+1,I2,I3) = DC29
          CD20(I1,I2,I3) = DC28
         END DO
         DO I1=II8,NN-1,1
          DD6 = DFLOAT (I1)
          DD5 = DMAX1 (DA40(I1,NN-1,NN-1), DD6)
          DD8 = DFLOAT (I1)
          DD7 = DMAX1 (DA40(I1,NN-1,NN-1), DD8)
          DC2 = DCMPLX (DD5, DD7)
          DC32 = DC2 - CD20(I1,I2,I3)
          CD20(I1,I2,I3) = DC32
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       NZ = (NN - 1) / 2
       II11 = NZ / 4
       II10 = II11 * 4 + 1

       DO I2=1,NN-3
        DO I1=1,NZ
         DO I3=1,NZ
          IF (LD10(I1,I2,I3)) THEN
           DA20(I1,I2,I3) = DA30(I1,I2,I3) / (6D0 + DIMAG (CD20(I1,I2,I3
     X       )) * 2D0)
           DA30(I1,I2,I3) = DA40(I1,I2,I3) / (1D0 + DA10(I1*2-1,I2,I3))
           GO TO 15
          END IF
          DA40(I1,I2,I3) = DIMAG (CD10(I1,I2,I3)) - DREAL (CD20(I1,I2,I3
     X      ))
          LD20(I1,I2,I3) = .NOT.LD20(I1,I2,I3)
   15     CONTINUE
         END DO
         II1 = I1 * 2
         DO I3=1,NZ-3,4
          DA10(II1,I2,I3) = DA20(I1,I2,I3) - DA40(I1+1,I2+2,I3+3)
          DA10(II1,I2,I3+1) = DA20(I1,I2,I3+1) - DA40(I1+1,I2+2,I3+4)
          DA10(II1,I2,I3+2) = DA20(I1,I2,I3+2) - DA40(I1+1,I2+2,I3+5)
          DA10(II1,I2,I3+3) = DA20(I1,I2,I3+3) - DA40(I1+1,I2+2,I3+6)
          DC9 = DCMPLX (DA30(NN-1,I2,I3))
          DC10 = DCMPLX (DA30(NN-1,I2,I3+1))
          DC11 = DCMPLX (DA30(NN-1,I2,I3+2))
          DC3 = DCMPLX (DA30(NN-1,I2,I3+3))
          CD20(I1,I2+1,I3+3) = DC9 + CD10(I1,I2,I3)
          CD20(I1,I2+1,I3+4) = DC10 + CD10(I1,I2,I3+1)
          CD20(I1,I2+1,I3+5) = DC11 + CD10(I1,I2,I3+2)
          CD20(I1,I2+1,I3+6) = DC3 + CD10(I1,I2,I3+3)
         END DO
         DO I3=II10,NZ,1
          DA10(II1,I2,I3) = DA20(I1,I2,I3) - DA40(I1+1,I2+2,I3+3)
          DC3 = DCMPLX (DA30(NN-1,I2,I3))
          CD20(I1,I2+1,I3+3) = DC3 + CD10(I1,I2,I3)
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (NZ,NN,DA10,DA20,LD10,LD20) PRIVATE (I3,I2,I1)
C$OMP DO 
       DO I3=1,NZ

        DO I2=1,NN-6,4
         DO I1=1,NZ
          IF (DA10(I1,I2,I3) .GT. DA20(I1,I2,I3)) THEN
           LD10(I1,I2,I3) = .NOT.LD10(I1,I2,I3) .AND. LD20(I1,I2,I3)
          END IF
          IF (DA10(I1,I2+1,I3) .GT. DA20(I1,I2+1,I3)) THEN
           LD10(I1,I2+1,I3) = .NOT.LD10(I1,I2+1,I3) .AND. LD20(I1,I2+1,
     X       I3)
          END IF
          IF (DA10(I1,I2+2,I3) .GT. DA20(I1,I2+2,I3)) THEN
           LD10(I1,I2+2,I3) = .NOT.LD10(I1,I2+2,I3) .AND. LD20(I1,I2+2,
     X       I3)
          END IF
          IF (DA10(I1,I2+3,I3) .GT. DA20(I1,I2+3,I3)) THEN
           LD10(I1,I2+3,I3) = .NOT.LD10(I1,I2+3,I3) .AND. LD20(I1,I2+3,
     X       I3)
          END IF
         END DO
        END DO
        DO I2=I2,NN-3,1
         DO I1=1,NZ
          IF (DA10(I1,I2,I3) .GT. DA20(I1,I2,I3)) THEN
           LD10(I1,I2,I3) = .NOT.LD10(I1,I2,I3) .AND. LD20(I1,I2,I3)
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       RETURN 
      END
