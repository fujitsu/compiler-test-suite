      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20), CD10(20,20), CD20(20,20), CD30(
     X   20,20,20), LD10(20,20), LD20(20,20), LD30(20,20,20)
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 2D0)

       DATA DA10/400*2.D0/ 
       DATA DA20/400*1.D0/ 
       DATA DA30/400*4.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*2.D0/ 
       DATA DB30/8000*3.D0/ 
       DATA CD10/400*(1.D0,2.D0)/ 
       DATA CD20/400*(2.D0,1.D0)/ 
       DATA CD30/8000*(4.D0,2.D0)/ 
       DATA LD10/400*.FALSE./ 
       DATA LD20/400*.FALSE./ 
       DATA LD30/8000*.FALSE./ 
       INTEGER ICNT21, II5, II4, II3, II2, II1
       DOUBLE PRECISION DD25, DD24, DD23, DD22, DD21, DD20, DD19, DD18, 
     X   DD17, DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, 
     X   DD6, DD5, DD4, DD3, DD2

       ICNT1 = 0
       ICNT2 = 0
       DO III=1,2
C$OMP PARALLEL SHARED (DA10,DA20,DA30,DB10,LD10,CD10,LD20,CD20,DB20,DB30
C$OMP& ,LD30,CD30) PRIVATE (II1,I1,J1,DX1,DY1,DD2,II3,II2,DD7,DD8,DD9,K1
C$OMP& ,DX2,DY2)
C$OMP DO 
        DO I1=2,10
         II1 = I1 * 2
         DO J1=2,II1
          DA10(I1,J1) = DA20(I1+1,J1) * DA30(II1,J1)
          DA10(I1+10,J1) = DA20(I1+2,J1) * DA30(II1-1,J1)
          DX1 = DSQRT (DA10(I1,J1)) + DA20(I1,J1)
          DY1 = DB10(I1,J1,1) - DA20(I1,J1) * DD1
          IF (DX1 .GT. DY1) THEN
           LD10(I1,J1) = .TRUE.
           CD10(I1,J1) = DCMPLX (DX1, DY1)
          ELSE
           LD20(I1,J1) = .TRUE.
           CD20(I1,J1) = DCMPLX (DY1, DX1)
          END IF
          DA30(II1,J1) = DX1 + DY1
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
        DO K1=10,1,-1
         DO I1=2,10
          II3 = (I1 * 2 - 1) / 4
          II2 = II3 * 4 + 2
          DO J1=2,I1*2-3,4
           DD7 = DB10(I1,J1,K1) * 2D0
           DD8 = DB10(I1,J1+1,K1) * 2D0
           DD9 = DB10(I1,J1+2,K1) * 2D0
           DD2 = DB10(I1,J1+3,K1) * 2D0
           DB20(I1,J1,K1) = DD7 - DB30(I1,J1,K1)
           DB20(I1,J1+1,K1) = DD8 - DB30(I1,J1+1,K1)
           DB20(I1,J1+2,K1) = DD9 - DB30(I1,J1+2,K1)
           DB20(I1,J1+3,K1) = DD2 - DB30(I1,J1+3,K1)
          END DO
          DO J1=II2,I1*2,1
           DD2 = DB10(I1,J1,K1) * 2D0
           DB20(I1,J1,K1) = DD2 - DB30(I1,J1,K1)
          END DO
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
        DO K1=10,1,-1
         DO I1=2,10
          DO J1=2,I1*2
           DB30(I1,J1,K1) = DB10(I1+10,J1,K1) * 2D0 - DB20(I1,J1,K1+1)
           DX2 = DMAX1 (DB20(I1,J1,K1), DB30(I1,J1,K1))
           DY2 = DDIM (DB20(I1,J1,K1), DB30(I1,J1,K1))
           IF (DY2 .NE. 0D0) THEN
            LD30(I1,J1,K1) = .TRUE.
           END IF
           CD30(I1,J1,K1) = DCMPLX (DX2, DY2)
           DB10(I1,J1,K1) = DX2 - DY2
          END DO
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
        DO I1=2,10
         II5 = (I1 * 2 - 1) / 4
         II4 = II5 * 4 + 2
         DO J1=2,I1*2-3,4
          DA20(I1,J1) = DB10(I1-1,J1-1,10) + DA30(I1,J1)
          DA20(I1,J1+1) = DB10(I1-1,J1,10) + DA30(I1,J1+1)
          DA20(I1,J1+2) = DB10(I1-1,J1+1,10) + DA30(I1,J1+2)
          DA20(I1,J1+3) = DB10(I1-1,J1+2,10) + DA30(I1,J1+3)
         END DO
         DO J1=II4,I1*2,1
          DA20(I1,J1) = DB10(I1-1,J1-1,10) + DA30(I1,J1)
         END DO
        END DO

        IF (LD10(2,III)) THEN

C$OMP PARALLEL SHARED (CD10,CD20,DA10,DA20,CD30,DB30,DB10,DB20) 
C$OMP& PRIVATE (DD3,DD4,DD10,DD11,DD12,DD13,DD14,DD15,J2,I2,DD5,DD6,DD16
C$OMP& ,DD17,DD18,DD19,DD20,DD21,K2)
C$OMP DO 
         DO J2=1,20
          DO I2=1,17,4
           DD10 = DREAL (CD10(I2,J2))
           DD11 = DREAL (CD10(I2+1,J2))
           DD12 = DREAL (CD10(I2+2,J2))
           DD3 = DREAL (CD10(I2+3,J2))
           DD13 = DIMAG (CD20(I2,J2))
           DD14 = DIMAG (CD20(I2+1,J2))
           DD15 = DIMAG (CD20(I2+2,J2))
           DD4 = DIMAG (CD20(I2+3,J2))
           DA10(I2,J2) = DD10 + DD13
           DA10(I2+1,J2) = DD11 + DD14
           DA10(I2+2,J2) = DD12 + DD15
           DA10(I2+3,J2) = DD3 + DD4
           DD10 = DIMAG (CD10(I2,J2))
           DD11 = DIMAG (CD10(I2+1,J2))
           DD12 = DIMAG (CD10(I2+2,J2))
           DD3 = DIMAG (CD10(I2+3,J2))
           DD13 = DREAL (CD20(I2,J2))
           DD14 = DREAL (CD20(I2+1,J2))
           DD15 = DREAL (CD20(I2+2,J2))
           DD4 = DREAL (CD20(I2+3,J2))
           DA20(I2,J2) = DD10 - DD13
           DA20(I2+1,J2) = DD11 - DD14
           DA20(I2+2,J2) = DD12 - DD15
           DA20(I2+3,J2) = DD3 - DD4
          END DO
         END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
         DO J2=1,20
          DO I2=1,19,2
           DO K2=1,17,4
            DD16 = DIMAG (CD30(K2,I2,J2))
            DD17 = DIMAG (CD30(K2+1,I2,J2))
            DD18 = DIMAG (CD30(K2+2,I2,J2))
            DD6 = DIMAG (CD30(K2+3,I2,J2))
            DD19 = DB30(K2,I2,J2) - DD16
            DD20 = DB30(K2+1,I2,J2) - DD17
            DD21 = DB30(K2+2,I2,J2) - DD18
            DD5 = DB30(K2+3,I2,J2) - DD6
            DB10(K2,I2,J2) = DD19 + DB20(K2,I2,J2)
            DB10(K2+1,I2,J2) = DD20 + DB20(K2+1,I2,J2)
            DB10(K2+2,I2,J2) = DD21 + DB20(K2+2,I2,J2)
            DB10(K2+3,I2,J2) = DD5 + DB20(K2+3,I2,J2)
            DD16 = DIMAG (CD30(K2,I2+1,J2))
            DD17 = DIMAG (CD30(K2+1,I2+1,J2))
            DD18 = DIMAG (CD30(K2+2,I2+1,J2))
            DD6 = DIMAG (CD30(K2+3,I2+1,J2))
            DD19 = DB30(K2,I2+1,J2) - DD16
            DD20 = DB30(K2+1,I2+1,J2) - DD17
            DD21 = DB30(K2+2,I2+1,J2) - DD18
            DD5 = DB30(K2+3,I2+1,J2) - DD6
            DB10(K2,I2+1,J2) = DD19 + DB20(K2,I2+1,J2)
            DB10(K2+1,I2+1,J2) = DD20 + DB20(K2+1,I2+1,J2)
            DB10(K2+2,I2+1,J2) = DD21 + DB20(K2+2,I2+1,J2)
            DB10(K2+3,I2+1,J2) = DD5 + DB20(K2+3,I2+1,J2)
           END DO
          END DO
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
        ELSE
         IF (LD20(3,III)) THEN
          DO J3=2,15
C$OMP PARALLEL SHARED (J3,CD30,LD30,DA30,DB20) PRIVATE (K3,I3,CDX,DX3)
C$OMP DO 
           DO K3=12,8,-1
            DO I3=1,20
             CDX = CDSQRT (CD30(I3,J3,K3)) + (1.D0,1.D0)
             DX3 = DNINT (DREAL (CDX))
             IF (LD30(I3,J3,K3)) THEN
              DX3 = DNINT (DSQRT (DA30(I3,K3)))
             END IF
             DB20(I3,J3,K3) = DB20(I3,J3+1,K3) + DMIN1 (DX3, DNINT (
     X         DIMAG (CDX)))
            END DO
           END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
           DO I3=1,17,4
            DD22 = DA30(I3,12) + DA10(I3,J3)
            DD23 = DA30(I3+1,12) + DA10(I3+1,J3)
            DD24 = DA30(I3+2,12) + DA10(I3+2,J3)
            DD25 = DA30(I3+3,12) + DA10(I3+3,J3)
            DA30(I3+3,12) = DD25
            DA30(I3+2,12) = DD24
            DA30(I3+1,12) = DD23
            DA30(I3,12) = DD22
           END DO
          END DO
         END IF
        END IF
        DO J4=1,20
         DO I4=1,20
          IF (LD10(I4,J4)) THEN
           ICNT1 = ICNT1 + 1
          END IF
         END DO
        END DO
C$OMP PARALLEL SHARED (LD30,ICNT2) PRIVATE (K4,J4,I4,ICNT21)
        ICNT21 = 0
C$OMP DO 
        DO K4=1,20
         DO J4=1,20
          DO I4=1,20
           IF (LD30(I4,J4,K4)) THEN
            ICNT21 = ICNT21 + 1
           END IF
          END DO
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II6)
        ICNT2 = ICNT2 + ICNT21
C$OMP END CRITICAL (II6)
C$OMP END PARALLEL 
        WRITE (6, *) ' ICNT1 = ', ICNT1, ' ICNT2 = ', ICNT2
       END DO

       WRITE (6, *) ' (DA10) ', DA10
       WRITE (6, *) ' (DA20) ', DA20
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (CD10) ', CD10
       WRITE (6, *) ' (CD20) ', CD20
       WRITE (6, *) ' (DB10) ', (((DB10(I,J,K), I=1,10), J=2,20,2), K=1,
     X   10)
       WRITE (6, *) ' (DB20) ', (((DB20(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (DB30) ', (((DB30(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (CD30) ', (((CD30(I,J,K), I=1,10), J=1,10), K=1,10
     X   )

       STOP 
      END
