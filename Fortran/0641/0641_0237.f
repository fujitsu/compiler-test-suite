      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D,O-Z), COMPLEX*16 (C)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20)
       DIMENSION CD10(20,20), CD20(20,20), CD30(20,20)
       PARAMETER (JC5 = 20)
       INTEGER NN
       PARAMETER (NN = 15)
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 2D0)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       DATA CD10/400*(-1.D0,2.D0)/ 
       DATA CD20/400*(3.D0,-2.D0)/ 
       DATA CD30/400*(2.D0,0.1D0)/ 
       INTEGER II2, II1
       DOUBLE PRECISION DD17, DD16, DD15, DD14, DD13, DD12, DD11, DD10, 
     X   DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2
       COMPLEX*16 DC1

       DO I1=2,12,4
        DD10 = DIMAG (CD20(15,I1+1))
        DD11 = DIMAG (CD20(15,I1+2))
        DD12 = DIMAG (CD20(15,I1+3))
        DD9 = DIMAG (CD20(15,I1+4))
        DA10(I1,1) = DA20(I1+1,15) - DD10
        DA10(I1+1,1) = DA20(I1+2,15) - DD11
        DA10(I1+2,1) = DA20(I1+3,15) - DD12
        DA10(I1+3,1) = DA20(I1+4,15) - DD9
       END DO
       DO I1=14,15,1
        DD9 = DIMAG (CD20(15,I1+1))
        DA10(I1,1) = DA20(I1+1,15) - DD9
       END DO
       DO I2=2,12,4

        DO I1=2,12,4
         CD20(I2,I1) = CD10(I1+1,I2-1) - CD30(I1,I2)
         CD20(I2,I1+1) = CD10(I1+2,I2-1) - CD30(I1+1,I2)
         CD20(I2,I1+2) = CD10(I1+3,I2-1) - CD30(I1+2,I2)
         CD20(I2,I1+3) = CD10(I1+4,I2-1) - CD30(I1+3,I2)
         CD20(I2+1,I1) = CD10(I1+1,I2) - CD30(I1,I2+1)
         CD20(I2+1,I1+1) = CD10(I1+2,I2) - CD30(I1+1,I2+1)
         CD20(I2+1,I1+2) = CD10(I1+3,I2) - CD30(I1+2,I2+1)
         CD20(I2+1,I1+3) = CD10(I1+4,I2) - CD30(I1+3,I2+1)
         CD20(I2+2,I1) = CD10(I1+1,I2+1) - CD30(I1,I2+2)
         CD20(I2+2,I1+1) = CD10(I1+2,I2+1) - CD30(I1+1,I2+2)
         CD20(I2+2,I1+2) = CD10(I1+3,I2+1) - CD30(I1+2,I2+2)
         CD20(I2+2,I1+3) = CD10(I1+4,I2+1) - CD30(I1+3,I2+2)
         CD20(I2+3,I1) = CD10(I1+1,I2+2) - CD30(I1,I2+3)
         CD20(I2+3,I1+1) = CD10(I1+2,I2+2) - CD30(I1+1,I2+3)
         CD20(I2+3,I1+2) = CD10(I1+3,I2+2) - CD30(I1+2,I2+3)
         CD20(I2+3,I1+3) = CD10(I1+4,I2+2) - CD30(I1+3,I2+3)
        END DO
        DO I1=14,15,1
         CD20(I2,I1) = CD10(I1+1,I2-1) - CD30(I1,I2)
         CD20(I2+1,I1) = CD10(I1+1,I2) - CD30(I1,I2+1)
         CD20(I2+2,I1) = CD10(I1+1,I2+1) - CD30(I1,I2+2)
         CD20(I2+3,I1) = CD10(I1+1,I2+2) - CD30(I1,I2+3)
        END DO
       END DO
       DO I2=14,15,1

        DO I1=2,12,4
         CD20(I2,I1) = CD10(I1+1,I2-1) - CD30(I1,I2)
         CD20(I2,I1+1) = CD10(I1+2,I2-1) - CD30(I1+1,I2)
         CD20(I2,I1+2) = CD10(I1+3,I2-1) - CD30(I1+2,I2)
         CD20(I2,I1+3) = CD10(I1+4,I2-1) - CD30(I1+3,I2)
        END DO
        DO I1=14,15,1
         CD20(I2,I1) = CD10(I1+1,I2-1) - CD30(I1,I2)
        END DO
       END DO

       DO I1=2,15
        DO I2=2,12,4
         DA20(I1,I2) = DA20(I2,I1) - DIMAG (CD20(I2+1,I1-1))
         DA20(I1,I2+1) = DA20(I2+1,I1) - DIMAG (CD20(I2+2,I1-1))
         DA20(I1,I2+2) = DA20(I2+2,I1) - DIMAG (CD20(I2+3,I1-1))
         DA20(I1,I2+3) = DA20(I2+3,I1) - DIMAG (CD20(I2+4,I1-1))
        END DO
        DO I2=14,15,1
         DA20(I1,I2) = DA20(I2,I1) - DIMAG (CD20(I2+1,I1-1))
        END DO
       END DO

C$OMP PARALLEL SHARED (DA20,DB20,DB10,DA30) PRIVATE (DD2,DD3,DD4,DD5,DD6
C$OMP& ,I1,I2,I3,DD7)
C$OMP DO 
       DO I1=2,15
        DO I2=2,12,4
         DD2 = DA20(2,I2)
         DD3 = DA20(2,I2+1)
         DD4 = DA20(2,I2+2)
         DD5 = DA20(2,I2+3)
         DO I3=2,12,4
          DB20(I3,I2,I1) = DB10(I1+1,I3,I1-1) - DD2
          DB20(I3+1,I2,I1) = DB10(I1+1,I3+1,I1-1) - DD2
          DB20(I3+2,I2,I1) = DB10(I1+1,I3+2,I1-1) - DD2
          DB20(I3+3,I2,I1) = DB10(I1+1,I3+3,I1-1) - DD2
          DB20(I3,I2+1,I1) = DB10(I1+1,I3,I1-1) - DD3
          DB20(I3+1,I2+1,I1) = DB10(I1+1,I3+1,I1-1) - DD3
          DB20(I3+2,I2+1,I1) = DB10(I1+1,I3+2,I1-1) - DD3
          DB20(I3+3,I2+1,I1) = DB10(I1+1,I3+3,I1-1) - DD3
          DB20(I3,I2+2,I1) = DB10(I1+1,I3,I1-1) - DD4
          DB20(I3+1,I2+2,I1) = DB10(I1+1,I3+1,I1-1) - DD4
          DB20(I3+2,I2+2,I1) = DB10(I1+1,I3+2,I1-1) - DD4
          DB20(I3+3,I2+2,I1) = DB10(I1+1,I3+3,I1-1) - DD4
          DB20(I3,I2+3,I1) = DB10(I1+1,I3,I1-1) - DD5
          DB20(I3+1,I2+3,I1) = DB10(I1+1,I3+1,I1-1) - DD5
          DB20(I3+2,I2+3,I1) = DB10(I1+1,I3+2,I1-1) - DD5
          DB20(I3+3,I2+3,I1) = DB10(I1+1,I3+3,I1-1) - DD5
         END DO
         DO I3=14,15,1
          DB20(I3,I2,I1) = DB10(I1+1,I3,I1-1) - DD2
          DB20(I3,I2+1,I1) = DB10(I1+1,I3,I1-1) - DD3
          DB20(I3,I2+2,I1) = DB10(I1+1,I3,I1-1) - DD4
          DB20(I3,I2+3,I1) = DB10(I1+1,I3,I1-1) - DD5
         END DO
        END DO
        DO I2=14,15,1
         DD6 = DA20(2,I2)
         DO I3=2,12,4
          DB20(I3,I2,I1) = DB10(I1+1,I3,I1-1) - DD6
          DB20(I3+1,I2,I1) = DB10(I1+1,I3+1,I1-1) - DD6
          DB20(I3+2,I2,I1) = DB10(I1+1,I3+2,I1-1) - DD6
          DB20(I3+3,I2,I1) = DB10(I1+1,I3+3,I1-1) - DD6
         END DO
         DO I3=14,15,1
          DB20(I3,I2,I1) = DB10(I1+1,I3,I1-1) - DD6
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO I1=2,12,4
        DO I2=2,15
         DD7 = DA30(15,I2)
         DO I3=2,12,4
          DB10(I1,I3,I1) = DB20(I3-1,I2,I1) + DD7
          DB10(I1,I3+1,I1) = DB20(I3,I2,I1) + DD7
          DB10(I1,I3+2,I1) = DB20(I3+1,I2,I1) + DD7
          DB10(I1,I3+3,I1) = DB20(I3+2,I2,I1) + DD7
          DB10(I1+1,I3,I1+1) = DB20(I3-1,I2,I1+1) + DD7
          DB10(I1+1,I3+1,I1+1) = DB20(I3,I2,I1+1) + DD7
          DB10(I1+1,I3+2,I1+1) = DB20(I3+1,I2,I1+1) + DD7
          DB10(I1+1,I3+3,I1+1) = DB20(I3+2,I2,I1+1) + DD7
          DB10(I1+2,I3,I1+2) = DB20(I3-1,I2,I1+2) + DD7
          DB10(I1+2,I3+1,I1+2) = DB20(I3,I2,I1+2) + DD7
          DB10(I1+2,I3+2,I1+2) = DB20(I3+1,I2,I1+2) + DD7
          DB10(I1+2,I3+3,I1+2) = DB20(I3+2,I2,I1+2) + DD7
          DB10(I1+3,I3,I1+3) = DB20(I3-1,I2,I1+3) + DD7
          DB10(I1+3,I3+1,I1+3) = DB20(I3,I2,I1+3) + DD7
          DB10(I1+3,I3+2,I1+3) = DB20(I3+1,I2,I1+3) + DD7
          DB10(I1+3,I3+3,I1+3) = DB20(I3+2,I2,I1+3) + DD7
         END DO
         DO I3=14,15,1
          DB10(I1,I3,I1) = DB20(I3-1,I2,I1) + DD7
          DB10(I1+1,I3,I1+1) = DB20(I3-1,I2,I1+1) + DD7
          DB10(I1+2,I3,I1+2) = DB20(I3-1,I2,I1+2) + DD7
          DB10(I1+3,I3,I1+3) = DB20(I3-1,I2,I1+3) + DD7
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I1=14,15,1
        DO I2=2,15
         DD8 = DA30(15,I2)
         DO I3=2,12,4
          DB10(I1,I3,I1) = DB20(I3-1,I2,I1) + DD8
          DB10(I1,I3+1,I1) = DB20(I3,I2,I1) + DD8
          DB10(I1,I3+2,I1) = DB20(I3+1,I2,I1) + DD8
          DB10(I1,I3+3,I1) = DB20(I3+2,I2,I1) + DD8
         END DO
         DO I3=14,15,1
          DB10(I1,I3,I1) = DB20(I3-1,I2,I1) + DD8
         END DO
        END DO
       END DO

       DO I1=2,15
        DO I2=2,12,4
         DA30(I1,I2) = DA30(I2,I1) * DB10(I1,I2,I1-1)
         DA30(I1,I2+1) = DA30(I2+1,I1) * DB10(I1,I2+1,I1-1)
         DA30(I1,I2+2) = DA30(I2+2,I1) * DB10(I1,I2+2,I1-1)
         DA30(I1,I2+3) = DA30(I2+3,I1) * DB10(I1,I2+3,I1-1)
        END DO
        DO I2=14,15,1
         DA30(I1,I2) = DA30(I2,I1) * DB10(I1,I2,I1-1)
        END DO
       END DO
       DC1 = 1 / (2.D0,2.D0)

       DO I1=2,12,4
        CD10(I1,1) = CD20(15,I1) * DC1
        CD10(I1+1,1) = CD20(15,I1+1) * DC1
        CD10(I1+2,1) = CD20(15,I1+2) * DC1
        CD10(I1+3,1) = CD20(15,I1+3) * DC1
       END DO
       DO I1=14,15,1
        CD10(I1,1) = CD20(15,I1) * DC1
       END DO

       WRITE (6, *) ' (DA10) ', ((DA10(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DA20) ', DA20(1,1)
       WRITE (6, *) ' (DA30) ', ((DA30(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (CD10) ', (CD10(I,1), I=1,10)
       WRITE (6, *) ' (CD20) ', ((CD20(I,J), I=1,20), J=1,10)
       WRITE (6, *) ' (DB10) ', (((DB10(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (DB20) ', (((DB20(I,J,K), I=1,10), J=1,10), K=1,10
     X   )

       DO J1=2,15
        CD10(J1,15) = DCMPLX (DA20(J1,1) * DD1, DA10(J1,1) - DA30(J1,1))
        DO J2=2,J1
         CD20(J2,J1) = CD30(J1,J1) - CD10(J2,15)
         II2 = (J2 - 2) / 4
         II1 = II2 * 4 + 2
         DO J3=2,J2-4,4
          DD13 = DB20(J2,J2,J1) * DB10(J3,J2,J1)
          DD14 = DB20(J2,J2,J1) * DB10(J3+1,J2,J1)
          DD15 = DB20(J2,J2,J1) * DB10(J3+2,J2,J1)
          DD16 = DB20(J2,J2,J1) * DB10(J3+3,J2,J1)
          DB20(J3,J2,J1) = DB30(J3,J1,J1+1) - DB10(J3,J2,J1)
          DB20(J3+1,J2,J1) = DB30(J3+1,J1,J1+1) - DB10(J3+1,J2,J1)
          DB20(J3+2,J2,J1) = DB30(J3+2,J1,J1+1) - DB10(J3+2,J2,J1)
          DB20(J3+3,J2,J1) = DB30(J3+3,J1,J1+1) - DB10(J3+3,J2,J1)
          DB30(J3+3,J2,J1) = DD16
          DB30(J3+2,J2,J1) = DD15
          DB30(J3+1,J2,J1) = DD14
          DB30(J3,J2,J1) = DD13
         END DO
         DO J3=II1,J2-1,1
          DD17 = DB20(J2,J2,J1) * DB10(J3,J2,J1)
          DB20(J3,J2,J1) = DB30(J3,J1,J1+1) - DB10(J3,J2,J1)
          DB30(J3,J2,J1) = DD17
         END DO
         CD30(J2,J1) = CD20(J2-1,J1)
        END DO
       END DO

       DO J1=2,12,4
        DA10(J1,1) = DMIN1 (DA20(J1,1), DA20(J1,1))
        DA10(J1+1,1) = DMIN1 (DA20(J1+1,1), DA20(J1+1,1))
        DA10(J1+2,1) = DMIN1 (DA20(J1+2,1), DA20(J1+2,1))
        DA10(J1+3,1) = DMIN1 (DA20(J1+3,1), DA20(J1+3,1))
       END DO
       DO J1=14,15,1
        DA10(J1,1) = DMIN1 (DA20(J1,1), DA20(J1,1))
       END DO

       WRITE (6, *) ' (CD10) ', (CD10(I,15), I=1,10)
       WRITE (6, *) ' (CD20) ', ((CD20(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (CD30) ', ((CD30(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DA10) ', (DA10(I,1), I=1,15)
       WRITE (6, *) ' (DB20) ', (((DB20(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (DB30) ', (((DB30(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       STOP 
      END
