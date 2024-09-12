      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L)
       DIMENSION DA40(10,10,10), DA30(10,10,10), DA20(10,10,10), DA10(10
     X   ,10,10)
       COMMON /BLK1/ DA10, DA20, DA30, DA40
       DIMENSION LD20(20,20), LD10(10,10,10)
       COMMON /BLK2/ LD10, LD20
       DIMENSION DB10(20,20,20), DB20(20,20,20)
       DIMENSION DC10(20,20), DC20(20,20)
       INTEGER IT3
       PARAMETER (IT3 = 10)
       INTEGER II10, II9, II8, II7, II6, II5, II4, II3, II2, II1, I1, J1
     X   , K1
       DOUBLE PRECISION DD5, DD4, DD3, DD2, DD1
       N1 = 20

       DATA DB10/8000*1.D0/ 
       DATA DB20/8000*4.D0/ 
       DATA DC10/400*2.D0/ 
       DATA DC20/400*-1.D0/ 

C$OMP PARALLEL SHARED (LD10) PRIVATE (K1,J1)
C$OMP DO 
       DO K1=1,10
        DO J1=1,7,4
         LD10(2,J1,K1) = .TRUE.
         LD10(4,J1,K1) = .TRUE.
         LD10(6,J1,K1) = .TRUE.
         LD10(8,J1,K1) = .TRUE.
         LD10(10,J1,K1) = .TRUE.
         LD10(2,J1+1,K1) = .TRUE.
         LD10(4,J1+1,K1) = .TRUE.
         LD10(6,J1+1,K1) = .TRUE.
         LD10(8,J1+1,K1) = .TRUE.
         LD10(10,J1+1,K1) = .TRUE.
         LD10(2,J1+2,K1) = .TRUE.
         LD10(4,J1+2,K1) = .TRUE.
         LD10(6,J1+2,K1) = .TRUE.
         LD10(8,J1+2,K1) = .TRUE.
         LD10(10,J1+2,K1) = .TRUE.
         LD10(2,J1+3,K1) = .TRUE.
         LD10(4,J1+3,K1) = .TRUE.
         LD10(6,J1+3,K1) = .TRUE.
         LD10(8,J1+3,K1) = .TRUE.
         LD10(10,J1+3,K1) = .TRUE.
         LD10(1,J1,K1) = .FALSE.
         LD10(3,J1,K1) = .FALSE.
         LD10(5,J1,K1) = .FALSE.
         LD10(7,J1,K1) = .FALSE.
         LD10(9,J1,K1) = .FALSE.
         LD10(1,J1+1,K1) = .FALSE.
         LD10(3,J1+1,K1) = .FALSE.
         LD10(5,J1+1,K1) = .FALSE.
         LD10(7,J1+1,K1) = .FALSE.
         LD10(9,J1+1,K1) = .FALSE.
         LD10(1,J1+2,K1) = .FALSE.
         LD10(3,J1+2,K1) = .FALSE.
         LD10(5,J1+2,K1) = .FALSE.
         LD10(7,J1+2,K1) = .FALSE.
         LD10(9,J1+2,K1) = .FALSE.
         LD10(1,J1+3,K1) = .FALSE.
         LD10(3,J1+3,K1) = .FALSE.
         LD10(5,J1+3,K1) = .FALSE.
         LD10(7,J1+3,K1) = .FALSE.
         LD10(9,J1+3,K1) = .FALSE.
        END DO
        DO J1=9,10,1
         LD10(2,J1,K1) = .TRUE.
         LD10(4,J1,K1) = .TRUE.
         LD10(6,J1,K1) = .TRUE.
         LD10(8,J1,K1) = .TRUE.
         LD10(10,J1,K1) = .TRUE.
         LD10(1,J1,K1) = .FALSE.
         LD10(3,J1,K1) = .FALSE.
         LD10(5,J1,K1) = .FALSE.
         LD10(7,J1,K1) = .FALSE.
         LD10(9,J1,K1) = .FALSE.
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO J1=1,17,4
        DO I1=2,12,10
         LD20(I1,J1) = .TRUE.
         LD20(I1+2,J1) = .TRUE.
         LD20(I1+4,J1) = .TRUE.
         LD20(I1+6,J1) = .TRUE.
         LD20(I1+8,J1) = .TRUE.
         LD20(I1,J1+1) = .TRUE.
         LD20(I1+2,J1+1) = .TRUE.
         LD20(I1+4,J1+1) = .TRUE.
         LD20(I1+6,J1+1) = .TRUE.
         LD20(I1+8,J1+1) = .TRUE.
         LD20(I1,J1+2) = .TRUE.
         LD20(I1+2,J1+2) = .TRUE.
         LD20(I1+4,J1+2) = .TRUE.
         LD20(I1+6,J1+2) = .TRUE.
         LD20(I1+8,J1+2) = .TRUE.
         LD20(I1,J1+3) = .TRUE.
         LD20(I1+2,J1+3) = .TRUE.
         LD20(I1+4,J1+3) = .TRUE.
         LD20(I1+6,J1+3) = .TRUE.
         LD20(I1+8,J1+3) = .TRUE.
         LD20(I1-1,J1) = .FALSE.
         LD20(I1+1,J1) = .FALSE.
         LD20(I1+3,J1) = .FALSE.
         LD20(I1+5,J1) = .FALSE.
         LD20(I1+7,J1) = .FALSE.
         LD20(I1-1,J1+1) = .FALSE.
         LD20(I1+1,J1+1) = .FALSE.
         LD20(I1+3,J1+1) = .FALSE.
         LD20(I1+5,J1+1) = .FALSE.
         LD20(I1+7,J1+1) = .FALSE.
         LD20(I1-1,J1+2) = .FALSE.
         LD20(I1+1,J1+2) = .FALSE.
         LD20(I1+3,J1+2) = .FALSE.
         LD20(I1+5,J1+2) = .FALSE.
         LD20(I1+7,J1+2) = .FALSE.
         LD20(I1-1,J1+3) = .FALSE.
         LD20(I1+1,J1+3) = .FALSE.
         LD20(I1+3,J1+3) = .FALSE.
         LD20(I1+5,J1+3) = .FALSE.
         LD20(I1+7,J1+3) = .FALSE.
        END DO
       END DO
C$OMP PARALLEL SHARED (DA10,DA20,DA30,DA40) PRIVATE (DD1,DD2,DD3,DD4,DD5
C$OMP& ,II1,II2,II3,II4,II5,II6,II7,II8,II9,II10,K1,J1,I1)
C$OMP DO 
       DO K1=1,10
        DD1 = DFLOAT (K1)
        DO J1=1,8,3
         DD2 = DFLOAT (J1)
         DD3 = DFLOAT (J1 + 1)
         DD4 = DFLOAT (J1 + 2)

         DO I1=1,6,5
          DA10(I1,J1,K1) = DD1
          DA10(I1+1,J1,K1) = DD1
          DA10(I1+2,J1,K1) = DD1
          DA10(I1+3,J1,K1) = DD1
          DA10(I1+4,J1,K1) = DD1
          DA10(I1,J1+1,K1) = DD1
          DA10(I1+1,J1+1,K1) = DD1
          DA10(I1+2,J1+1,K1) = DD1
          DA10(I1+3,J1+1,K1) = DD1
          DA10(I1+4,J1+1,K1) = DD1
          DA10(I1,J1+2,K1) = DD1
          DA10(I1+1,J1+2,K1) = DD1
          DA10(I1+2,J1+2,K1) = DD1
          DA10(I1+3,J1+2,K1) = DD1
          DA10(I1+4,J1+2,K1) = DD1
          DA20(I1,J1,K1) = DD2
          DA20(I1+1,J1,K1) = DD2
          DA20(I1+2,J1,K1) = DD2
          DA20(I1+3,J1,K1) = DD2
          DA20(I1+4,J1,K1) = DD2
          DA20(I1,J1+1,K1) = DD3
          DA20(I1+1,J1+1,K1) = DD3
          DA20(I1+2,J1+1,K1) = DD3
          DA20(I1+3,J1+1,K1) = DD3
          DA20(I1+4,J1+1,K1) = DD3
          DA20(I1,J1+2,K1) = DD4
          DA20(I1+1,J1+2,K1) = DD4
          DA20(I1+2,J1+2,K1) = DD4
          DA20(I1+3,J1+2,K1) = DD4
          DA20(I1+4,J1+2,K1) = DD4
          DA30(I1,J1,K1) = DFLOAT (I1)
          DA30(I1+1,J1,K1) = DFLOAT (I1 + 1)
          DA30(I1+2,J1,K1) = DFLOAT (I1 + 2)
          DA30(I1+3,J1,K1) = DFLOAT (I1 + 3)
          DA30(I1+4,J1,K1) = DFLOAT (I1 + 4)
          DA30(I1,J1+1,K1) = DFLOAT (I1)
          DA30(I1+1,J1+1,K1) = DFLOAT (I1 + 1)
          DA30(I1+2,J1+1,K1) = DFLOAT (I1 + 2)
          DA30(I1+3,J1+1,K1) = DFLOAT (I1 + 3)
          DA30(I1+4,J1+1,K1) = DFLOAT (I1 + 4)
          DA30(I1,J1+2,K1) = DFLOAT (I1)
          DA30(I1+1,J1+2,K1) = DFLOAT (I1 + 1)
          DA30(I1+2,J1+2,K1) = DFLOAT (I1 + 2)
          DA30(I1+3,J1+2,K1) = DFLOAT (I1 + 3)
          DA30(I1+4,J1+2,K1) = DFLOAT (I1 + 4)
          II3 = K1 - I1
          II4 = K1 - I1 - 1
          II5 = K1 - I1 - 2
          II6 = K1 - I1 - 3
          II1 = K1 - I1 - 4
          DA40(I1,J1,K1) = DFLOAT (II3)
          DA40(I1+1,J1,K1) = DFLOAT (II4)
          DA40(I1+2,J1,K1) = DFLOAT (II5)
          DA40(I1+3,J1,K1) = DFLOAT (II6)
          DA40(I1+4,J1,K1) = DFLOAT (II1)
          II3 = K1 - I1
          II4 = K1 - I1 - 1
          II5 = K1 - I1 - 2
          II6 = K1 - I1 - 3
          II1 = K1 - I1 - 4
          DA40(I1,J1+1,K1) = DFLOAT (II3)
          DA40(I1+1,J1+1,K1) = DFLOAT (II4)
          DA40(I1+2,J1+1,K1) = DFLOAT (II5)
          DA40(I1+3,J1+1,K1) = DFLOAT (II6)
          DA40(I1+4,J1+1,K1) = DFLOAT (II1)
          II3 = K1 - I1
          II4 = K1 - I1 - 1
          II5 = K1 - I1 - 2
          II6 = K1 - I1 - 3
          II1 = K1 - I1 - 4
          DA40(I1,J1+2,K1) = DFLOAT (II3)
          DA40(I1+1,J1+2,K1) = DFLOAT (II4)
          DA40(I1+2,J1+2,K1) = DFLOAT (II5)
          DA40(I1+3,J1+2,K1) = DFLOAT (II6)
          DA40(I1+4,J1+2,K1) = DFLOAT (II1)
         END DO
        END DO
        DD5 = DFLOAT (K1)

        DO I1=1,6,5
         DA10(I1,10,K1) = DD5
         DA10(I1+1,10,K1) = DD5
         DA10(I1+2,10,K1) = DD5
         DA10(I1+3,10,K1) = DD5
         DA10(I1+4,10,K1) = DD5
         DA20(I1,10,K1) = 10D0
         DA20(I1+1,10,K1) = 10D0
         DA20(I1+2,10,K1) = 10D0
         DA20(I1+3,10,K1) = 10D0
         DA20(I1+4,10,K1) = 10D0
         DA30(I1,10,K1) = DFLOAT (I1)
         DA30(I1+1,10,K1) = DFLOAT (I1 + 1)
         DA30(I1+2,10,K1) = DFLOAT (I1 + 2)
         DA30(I1+3,10,K1) = DFLOAT (I1 + 3)
         DA30(I1+4,10,K1) = DFLOAT (I1 + 4)
         II7 = K1 - I1
         II8 = K1 - I1 - 1
         II9 = K1 - I1 - 2
         II10 = K1 - I1 - 3
         II2 = K1 - I1 - 4
         DA40(I1,10,K1) = DFLOAT (II7)
         DA40(I1+1,10,K1) = DFLOAT (II8)
         DA40(I1+2,10,K1) = DFLOAT (II9)
         DA40(I1+3,10,K1) = DFLOAT (II10)
         DA40(I1+4,10,K1) = DFLOAT (II2)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 11

       CALL SUB (DB10,DB20,DC10,DC20,N1)

       WRITE (6, *) (((DA10(I,J,K), I=1,10), J=1,10), K=1,5)
       WRITE (6, *) ((DC10(I,J), I=1,10), J=1,10)
       STOP 
      END

      SUBROUTINE SUB ( DB10, DB20, DC10, DC20, NN )
       IMPLICIT REAL*8 (D), LOGICAL*4 (L)
       DIMENSION DA40(10,10,10), DA30(10,10,10), DA20(10,10,10), DA10(10
     X   ,10,10)
       COMMON /BLK1/ DA10, DA20, DA30, DA40
       DIMENSION LD20(20,20), LD10(10,10,10)
       COMMON /BLK2/ LD10, LD20
       DIMENSION DB10(NN,NN,NN), DB20(NN,NN,NN)
       DIMENSION DC10(NN,NN), DC20(NN,NN)
       INTEGER II8, II7, II6, II5, II4, II3, II2, II1
       DOUBLE PRECISION DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, 
     X   DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1

       III = 0
    5  CONTINUE
       III = III + 1
       II2 = (NN - 1) / 4
       II1 = II2 * 4 + 2
       II4 = (NN - 1) / 4
       II3 = II4 * 4 + 2
       II6 = NN / 4
       II5 = II6 * 4 + 1
       II8 = NN / 4
       II7 = II8 * 4 + 1
C$OMP PARALLEL SHARED (DA30,DA40,DA10,DA20) PRIVATE (DD1,DD2,DD3,DD4,DD5
C$OMP& ,I3,I2,I,I1)
C$OMP DO 
       DO I3=1,10
        DO I2=1,10
         DD1 = DA30(10,I2,I3)
         DD2 = DA40(10,I2,I3) - DD1
         DO I=1,5
          DO I1=1,8,3
           DA10(I1,I2,I3) = DA20(I1,I2,I3) + DA30(I1,I2,I3)
           DA10(I1+1,I2,I3) = DA20(I1+1,I2,I3) + DA30(I1+1,I2,I3)
           DA10(I1+2,I2,I3) = DA20(I1+2,I2,I3) + DA30(I1+2,I2,I3)
           DD3 = DA40(I1,I2,I3) - DA30(I1,I2,I3)
           DD4 = DA40(I1+1,I2,I3) - DA30(I1+1,I2,I3)
           DD5 = DA40(I1+2,I2,I3) - DA30(I1+2,I2,I3)
           DA20(I1+2,I2,I3) = DD5
           DA20(I1+1,I2,I3) = DD4
           DA20(I1,I2,I3) = DD3
          END DO
          DA10(10,I2,I3) = DA20(10,I2,I3) + DD1
          DA20(10,I2,I3) = DD2
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=1,5
        DO JJ=1,5
         DO J2=1,NN-4,3
          DO J1=2,NN-3,4
           DB10(J1,J2,JJ) = DC10(J1,J2) + DC20(J1,J2)
           DB10(J1,J2+1,JJ) = DC10(J1,J2+1) + DC20(J1,J2+1)
           DB10(J1,J2+2,JJ) = DC10(J1,J2+2) + DC20(J1,J2+2)
           DC10(J1-1,J2) = DB20(J1,J2,JJ)
           DC10(J1-1,J2+1) = DB20(J1,J2+1,JJ)
           DC10(J1-1,J2+2) = DB20(J1,J2+2,JJ)
           DB10(J1+1,J2,JJ) = DC10(J1+1,J2) + DC20(J1+1,J2)
           DB10(J1+1,J2+1,JJ) = DC10(J1+1,J2+1) + DC20(J1+1,J2+1)
           DB10(J1+1,J2+2,JJ) = DC10(J1+1,J2+2) + DC20(J1+1,J2+2)
           DC10(J1,J2) = DB20(J1+1,J2,JJ)
           DC10(J1,J2+1) = DB20(J1+1,J2+1,JJ)
           DC10(J1,J2+2) = DB20(J1+1,J2+2,JJ)
           DB10(J1+2,J2,JJ) = DC10(J1+2,J2) + DC20(J1+2,J2)
           DB10(J1+2,J2+1,JJ) = DC10(J1+2,J2+1) + DC20(J1+2,J2+1)
           DB10(J1+2,J2+2,JJ) = DC10(J1+2,J2+2) + DC20(J1+2,J2+2)
           DC10(J1+1,J2) = DB20(J1+2,J2,JJ)
           DC10(J1+1,J2+1) = DB20(J1+2,J2+1,JJ)
           DC10(J1+1,J2+2) = DB20(J1+2,J2+2,JJ)
           DB10(J1+3,J2,JJ) = DC10(J1+3,J2) + DC20(J1+3,J2)
           DB10(J1+3,J2+1,JJ) = DC10(J1+3,J2+1) + DC20(J1+3,J2+1)
           DB10(J1+3,J2+2,JJ) = DC10(J1+3,J2+2) + DC20(J1+3,J2+2)
           DC10(J1+2,J2) = DB20(J1+3,J2,JJ)
           DC10(J1+2,J2+1) = DB20(J1+3,J2+1,JJ)
           DC10(J1+2,J2+2) = DB20(J1+3,J2+2,JJ)
          END DO
          DO J1=II1,NN,1
           DB10(J1,J2,JJ) = DC10(J1,J2) + DC20(J1,J2)
           DB10(J1,J2+1,JJ) = DC10(J1,J2+1) + DC20(J1,J2+1)
           DB10(J1,J2+2,JJ) = DC10(J1,J2+2) + DC20(J1,J2+2)
           DC10(J1-1,J2) = DB20(J1,J2,JJ)
           DC10(J1-1,J2+1) = DB20(J1,J2+1,JJ)
           DC10(J1-1,J2+2) = DB20(J1,J2+2,JJ)
          END DO
         END DO
         DO J2=J2,NN-2,1
          DO J1=2,NN-3,4
           DB10(J1,J2,JJ) = DC10(J1,J2) + DC20(J1,J2)
           DC10(J1-1,J2) = DB20(J1,J2,JJ)
           DB10(J1+1,J2,JJ) = DC10(J1+1,J2) + DC20(J1+1,J2)
           DC10(J1,J2) = DB20(J1+1,J2,JJ)
           DB10(J1+2,J2,JJ) = DC10(J1+2,J2) + DC20(J1+2,J2)
           DC10(J1+1,J2) = DB20(J1+2,J2,JJ)
           DB10(J1+3,J2,JJ) = DC10(J1+3,J2) + DC20(J1+3,J2)
           DC10(J1+2,J2) = DB20(J1+3,J2,JJ)
          END DO
          DO J1=II3,NN,1
           DB10(J1,J2,JJ) = DC10(J1,J2) + DC20(J1,J2)
           DC10(J1-1,J2) = DB20(J1,J2,JJ)
          END DO
         END DO
         DO J1=2,NN
          DO J2=1,NN-2
           IF (DB10(J1,J2,JJ) .GT. DB20(J1,J2,JJ)) THEN
            LD10(MIN (J1, 10),MIN (J2, 10),JJ) = .NOT.LD20(J1,J2)
           END IF
          END DO
         END DO
         DO J4=1,10

          DO J3=1,5
           IF (LD10(J3,J4,JJ)) THEN
            DX = DC10(J3,J4) * DC20(J4,J3)
           ELSE
            DX = DB10(J3,J4,JJ)
           END IF
           DB20(J3,J4+1,JJ) = DB20(J3,J4,JJ) - DC10(J3,J4) + DX
          END DO
         END DO
C$OMP PARALLEL SHARED (NN,DB10,DB20,II5,II7) PRIVATE (DD6,DD7,DD8,DD9,
C$OMP& DD10,DD11,DD12,DD13,DD14,DD15,DD16,DD17,DD18,DD19,DD20,DD21,DD22,
C$OMP& DD23,DD24,DD25,DD26,DD27,DD28,DD29,DD30,K3,K2,K1)
C$OMP DO 
         DO K3=1,NN
          DO K2=1,NN-3,4
           DO K1=1,NN-3,4
            DD6 = DMIN1 (DB10(K1,K2,K3), DB20(K1,K2,K3))
            DD7 = DMIN1 (DB10(K1+1,K2,K3), DB20(K1+1,K2,K3))
            DD8 = DMIN1 (DB10(K1+2,K2,K3), DB20(K1+2,K2,K3))
            DD9 = DMIN1 (DB10(K1+3,K2,K3), DB20(K1+3,K2,K3))
            DD10 = DMIN1 (DB10(K1,K2+1,K3), DB20(K1,K2+1,K3))
            DD11 = DMIN1 (DB10(K1+1,K2+1,K3), DB20(K1+1,K2+1,K3))
            DD12 = DMIN1 (DB10(K1+2,K2+1,K3), DB20(K1+2,K2+1,K3))
            DD13 = DMIN1 (DB10(K1+3,K2+1,K3), DB20(K1+3,K2+1,K3))
            DD14 = DMIN1 (DB10(K1,K2+2,K3), DB20(K1,K2+2,K3))
            DD15 = DMIN1 (DB10(K1+1,K2+2,K3), DB20(K1+1,K2+2,K3))
            DD16 = DMIN1 (DB10(K1+2,K2+2,K3), DB20(K1+2,K2+2,K3))
            DD17 = DMIN1 (DB10(K1+3,K2+2,K3), DB20(K1+3,K2+2,K3))
            DD18 = DMIN1 (DB10(K1,K2+3,K3), DB20(K1,K2+3,K3))
            DD19 = DMIN1 (DB10(K1+1,K2+3,K3), DB20(K1+1,K2+3,K3))
            DD20 = DMIN1 (DB10(K1+2,K2+3,K3), DB20(K1+2,K2+3,K3))
            DD21 = DMIN1 (DB10(K1+3,K2+3,K3), DB20(K1+3,K2+3,K3))
            DB10(K1+3,K2+3,K3) = DD21
            DB10(K1+2,K2+3,K3) = DD20
            DB10(K1+1,K2+3,K3) = DD19
            DB10(K1,K2+3,K3) = DD18
            DB10(K1+3,K2+2,K3) = DD17
            DB10(K1+2,K2+2,K3) = DD16
            DB10(K1+1,K2+2,K3) = DD15
            DB10(K1,K2+2,K3) = DD14
            DB10(K1+3,K2+1,K3) = DD13
            DB10(K1+2,K2+1,K3) = DD12
            DB10(K1+1,K2+1,K3) = DD11
            DB10(K1,K2+1,K3) = DD10
            DB10(K1+3,K2,K3) = DD9
            DB10(K1+2,K2,K3) = DD8
            DB10(K1+1,K2,K3) = DD7
            DB10(K1,K2,K3) = DD6
           END DO
           DO K1=II5,NN,1
            DD22 = DMIN1 (DB10(K1,K2,K3), DB20(K1,K2,K3))
            DD23 = DMIN1 (DB10(K1,K2+1,K3), DB20(K1,K2+1,K3))
            DD24 = DMIN1 (DB10(K1,K2+2,K3), DB20(K1,K2+2,K3))
            DD25 = DMIN1 (DB10(K1,K2+3,K3), DB20(K1,K2+3,K3))
            DB10(K1,K2+3,K3) = DD25
            DB10(K1,K2+2,K3) = DD24
            DB10(K1,K2+1,K3) = DD23
            DB10(K1,K2,K3) = DD22
           END DO
          END DO
          DO K2=K2,NN,1

           DO K1=1,NN-3,4
            DD26 = DMIN1 (DB10(K1,K2,K3), DB20(K1,K2,K3))
            DD27 = DMIN1 (DB10(K1+1,K2,K3), DB20(K1+1,K2,K3))
            DD28 = DMIN1 (DB10(K1+2,K2,K3), DB20(K1+2,K2,K3))
            DD29 = DMIN1 (DB10(K1+3,K2,K3), DB20(K1+3,K2,K3))
            DB10(K1+3,K2,K3) = DD29
            DB10(K1+2,K2,K3) = DD28
            DB10(K1+1,K2,K3) = DD27
            DB10(K1,K2,K3) = DD26
           END DO
           DO K1=II7,NN,1
            DD30 = DMIN1 (DB10(K1,K2,K3), DB20(K1,K2,K3))
            DB10(K1,K2,K3) = DD30
           END DO
          END DO
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
        END DO
       END DO

       LX = LD10(III,1,1) .AND. LD20(III,1)
       IF (LX .AND. III .LT. 10) GO TO 5

       RETURN 
      END
