      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D,O-Z), COMPLEX*16 (C)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20)
       DIMENSION CD10(20,20), CD20(20,20), CD30(20,20)
       PARAMETER (JC5 = 20)
       INTEGER N2, N1, NN
       PARAMETER (N2 = 2, N1 = 1, NN = 14)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       DATA CD10/400*(-1.D0,2.D0)/ 
       DATA CD20/400*(3.D0,-2.D0)/ 
       DATA CD30/400*(2.D0,0.1D0)/ 
       INTEGER II3, II2, II1
       DOUBLE PRECISION DD24, DD23, DD22, DD21, DD20, DD19, DD18, DD17, 
     X   DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, 
     X   DD5, DD4, DD3, DD2, DD1
       COMPLEX*16 DC1
       DO I2=1,14

        DO I1=1,11,4
         DD2 = DREAL (CD10(I1,I2+1))
         DD3 = DREAL (CD10(I1+1,I2+1))
         DD4 = DREAL (CD10(I1+2,I2+1))
         DD1 = DREAL (CD10(I1+3,I2+1))
         DA20(I1,I2) = DA10(I1+1,I2) - DD2
         DA20(I1+1,I2) = DA10(I1+2,I2) - DD3
         DA20(I1+2,I2) = DA10(I1+3,I2) - DD4
         DA20(I1+3,I2) = DA10(I1+4,I2) - DD1
        END DO
        DO I1=13,14,1
         DD1 = DREAL (CD10(I1,I2+1))
         DA20(I1,I2) = DA10(I1+1,I2) - DD1
        END DO

        DO I1=1,11,4
         DA10(I1,I2) = DA20(I1,I2+1) + DA30(I1+1,I2)
         DA10(I1+1,I2) = DA20(I1+1,I2+1) + DA30(I1+2,I2)
         DA10(I1+2,I2) = DA20(I1+2,I2+1) + DA30(I1+3,I2)
         DA10(I1+3,I2) = DA20(I1+3,I2+1) + DA30(I1+4,I2)
        END DO
        DO I1=13,14,1
         DA10(I1,I2) = DA20(I1,I2+1) + DA30(I1+1,I2)
        END DO
       END DO
C$OMP PARALLEL SHARED (DB10,DB20,DB30,CD10) PRIVATE (DD13,DD14,DD15,DD16
C$OMP& ,DD17,DD18,DD19,DD20,DD9,DD10,DD11,DD12,DD5,DD6,DD7,DD8,DD23,DD24
C$OMP& ,DD22,DD21,I3,I2,I1)
C$OMP DO 
       DO I3=1,14
        DO I2=1,13,2

         DO I1=1,11,4
          DD13 = DB10(I1,I2,I3+2) + DB20(I1,I2+1,I3)
          DD14 = DB10(I1+1,I2,I3+2) + DB20(I1+1,I2+1,I3)
          DD15 = DB10(I1+2,I2,I3+2) + DB20(I1+2,I2+1,I3)
          DD16 = DB10(I1+3,I2,I3+2) + DB20(I1+3,I2+1,I3)
          DD17 = DB10(I1,I2,I3+2) + DB30(I1,I2+1,I3)
          DD18 = DB10(I1+1,I2,I3+2) + DB30(I1+1,I2+1,I3)
          DD19 = DB10(I1+2,I2,I3+2) + DB30(I1+2,I2+1,I3)
          DD20 = DB10(I1+3,I2,I3+2) + DB30(I1+3,I2+1,I3)
          DD9 = DB10(I1,I2+1,I3+2) + DB20(I1,I2+2,I3)
          DD10 = DB10(I1+1,I2+1,I3+2) + DB20(I1+1,I2+2,I3)
          DD11 = DB10(I1+2,I2+1,I3+2) + DB20(I1+2,I2+2,I3)
          DD12 = DB10(I1+3,I2+1,I3+2) + DB20(I1+3,I2+2,I3)
          DD5 = DB10(I1,I2+1,I3+2) + DB30(I1,I2+2,I3)
          DD6 = DB10(I1+1,I2+1,I3+2) + DB30(I1+1,I2+2,I3)
          DD7 = DB10(I1+2,I2+1,I3+2) + DB30(I1+2,I2+2,I3)
          DD8 = DB10(I1+3,I2+1,I3+2) + DB30(I1+3,I2+2,I3)
          DB20(I1+3,I2+1,I3) = DD8
          DB20(I1+2,I2+1,I3) = DD7
          DB20(I1+1,I2+1,I3) = DD6
          DB20(I1,I2+1,I3) = DD5
          DB30(I1+3,I2+1,I3) = DD12
          DB30(I1+2,I2+1,I3) = DD11
          DB30(I1+1,I2+1,I3) = DD10
          DB30(I1,I2+1,I3) = DD9
          DB20(I1+3,I2,I3) = DD20
          DB20(I1+2,I2,I3) = DD19
          DB20(I1+1,I2,I3) = DD18
          DB20(I1,I2,I3) = DD17
          DB30(I1+3,I2,I3) = DD16
          DB30(I1+2,I2,I3) = DD15
          DB30(I1+1,I2,I3) = DD14
          DB30(I1,I2,I3) = DD13
         END DO
         DO I1=13,14,1
          DD23 = DB10(I1,I2,I3+2) + DB20(I1,I2+1,I3)
          DD24 = DB10(I1,I2,I3+2) + DB30(I1,I2+1,I3)
          DD22 = DB10(I1,I2+1,I3+2) + DB20(I1,I2+2,I3)
          DD21 = DB10(I1,I2+1,I3+2) + DB30(I1,I2+2,I3)
          DB20(I1,I2+1,I3) = DD21
          DB30(I1,I2+1,I3) = DD22
          DB20(I1,I2,I3) = DD24
          DB30(I1,I2,I3) = DD23
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I2=1,14

        DO I1=1,14
         DO I3=1,11,4
          DB10(I1,I2,1) = DB10(I1,I2,1) + DIMAG (CD10(I3,I2))
          DB10(I1,I2,1) = DB10(I1,I2,1) + DIMAG (CD10(I3+1,I2))
          DB10(I1,I2,1) = DB10(I1,I2,1) + DIMAG (CD10(I3+2,I2))
          DB10(I1,I2,1) = DB10(I1,I2,1) + DIMAG (CD10(I3+3,I2))
         END DO
         DO I3=13,14,1
          DB10(I1,I2,1) = DB10(I1,I2,1) + DIMAG (CD10(I3,I2))
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I2=1,11,4

        DO I1=1,11,4
         DA30(I1,I2) = DB30(I1,I2,1) - DB20(I1,I2,15)
         DA30(I1+1,I2) = DB30(I1+1,I2,1) - DB20(I1+1,I2,15)
         DA30(I1+2,I2) = DB30(I1+2,I2,1) - DB20(I1+2,I2,15)
         DA30(I1+3,I2) = DB30(I1+3,I2,1) - DB20(I1+3,I2,15)
         DA30(I1,I2+1) = DB30(I1,I2+1,1) - DB20(I1,I2+1,15)
         DA30(I1+1,I2+1) = DB30(I1+1,I2+1,1) - DB20(I1+1,I2+1,15)
         DA30(I1+2,I2+1) = DB30(I1+2,I2+1,1) - DB20(I1+2,I2+1,15)
         DA30(I1+3,I2+1) = DB30(I1+3,I2+1,1) - DB20(I1+3,I2+1,15)
         DA30(I1,I2+2) = DB30(I1,I2+2,1) - DB20(I1,I2+2,15)
         DA30(I1+1,I2+2) = DB30(I1+1,I2+2,1) - DB20(I1+1,I2+2,15)
         DA30(I1+2,I2+2) = DB30(I1+2,I2+2,1) - DB20(I1+2,I2+2,15)
         DA30(I1+3,I2+2) = DB30(I1+3,I2+2,1) - DB20(I1+3,I2+2,15)
         DA30(I1,I2+3) = DB30(I1,I2+3,1) - DB20(I1,I2+3,15)
         DA30(I1+1,I2+3) = DB30(I1+1,I2+3,1) - DB20(I1+1,I2+3,15)
         DA30(I1+2,I2+3) = DB30(I1+2,I2+3,1) - DB20(I1+2,I2+3,15)
         DA30(I1+3,I2+3) = DB30(I1+3,I2+3,1) - DB20(I1+3,I2+3,15)
        END DO
        DO I1=13,14,1
         DA30(I1,I2) = DB30(I1,I2,1) - DB20(I1,I2,15)
         DA30(I1,I2+1) = DB30(I1,I2+1,1) - DB20(I1,I2+1,15)
         DA30(I1,I2+2) = DB30(I1,I2+2,1) - DB20(I1,I2+2,15)
         DA30(I1,I2+3) = DB30(I1,I2+3,1) - DB20(I1,I2+3,15)
        END DO
       END DO
       DO I2=13,14,1

        DO I1=1,11,4
         DA30(I1,I2) = DB30(I1,I2,1) - DB20(I1,I2,15)
         DA30(I1+1,I2) = DB30(I1+1,I2,1) - DB20(I1+1,I2,15)
         DA30(I1+2,I2) = DB30(I1+2,I2,1) - DB20(I1+2,I2,15)
         DA30(I1+3,I2) = DB30(I1+3,I2,1) - DB20(I1+3,I2,15)
        END DO
        DO I1=13,14,1
         DA30(I1,I2) = DB30(I1,I2,1) - DB20(I1,I2,15)
        END DO
       END DO

       WRITE (6, *) ' (DA10) ', ((DA10(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DA20) ', ((DA20(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DA30) ', ((DA30(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DB10) ', ((DB10(I,J,1), I=1,10), J=1,10)
       WRITE (6, *) ' (DB20) ', (((DB20(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (DB30) ', (((DB30(I,J,K), I=1,10), J=1,10), K=1,10
     X   )


C$OMP PARALLEL SHARED (CD10,DA30,DA10,CD20,DA20,CD30,DB10,DB20) 
C$OMP& PRIVATE (J1,J2,DX,DC1,II1,II3,II2,J3)
C$OMP DO 
       DO J1=2,14
        CD10(J1,14) = DCMPLX (DA30(J1,14), DA30(14,J1))
        DO J2=1,J1
         DX = DREAL (CD10(J1,J2)) + DA10(J1,J2)
         CD20(J1,J2) = DCMPLX (DX, DMIN1 (DX, DIMAG (CD10(J1,J2)) + DA20
     X     (J1,J2)))
         IF (DIMAG (CD20(J1,J2)) .GE. 1D0) THEN
          DA10(J1,J2) = DMAX1 (DA20(J1,J2), DA20(J2,J1)) - DIMAG (CD20(
     X      J1,J2))
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

       DO J1=2,14
C$OMP DO 
        DO J2=1,J1
         II1 = 14 - J2
         IF (II1 .GT. 0) THEN
          DC1 = CD20(J1,J2)
          II3 = (14 - J2) / 4
          II2 = J2 + II3 * 4 + 1
          DO J3=J2+1,11,4
           CD30(J2,J3) = CD10(J3,1) - DC1
           DB10(J1,J2,J3) = DB20(J1,J2,J3+1) - DREAL (CD30(J2,J3))
           DB20(J1,J2,J3) = DB10(J1,J2,J3-1) - DIMAG (CD30(J2,J3))
           CD30(J2,J3+1) = CD10(J3+1,1) - DC1
           DB10(J1,J2,J3+1) = DB20(J1,J2,J3+2) - DREAL (CD30(J2,J3+1))
           DB20(J1,J2,J3+1) = DB10(J1,J2,J3) - DIMAG (CD30(J2,J3+1))
           CD30(J2,J3+2) = CD10(J3+2,1) - DC1
           DB10(J1,J2,J3+2) = DB20(J1,J2,J3+3) - DREAL (CD30(J2,J3+2))
           DB20(J1,J2,J3+2) = DB10(J1,J2,J3+1) - DIMAG (CD30(J2,J3+2))
           CD30(J2,J3+3) = CD10(J3+3,1) - DC1
           DB10(J1,J2,J3+3) = DB20(J1,J2,J3+4) - DREAL (CD30(J2,J3+3))
           DB20(J1,J2,J3+3) = DB10(J1,J2,J3+2) - DIMAG (CD30(J2,J3+3))
          END DO
          DO J3=II2,14,1
           CD30(J2,J3) = CD10(J3,1) - DC1
           DB10(J1,J2,J3) = DB20(J1,J2,J3+1) - DREAL (CD30(J2,J3))
           DB20(J1,J2,J3) = DB10(J1,J2,J3-1) - DIMAG (CD30(J2,J3))
          END DO
         END IF
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       END DO
C$OMP END PARALLEL 

       WRITE (6, *) ' (DA10) ', ((DA10(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (CD10) ', (CD10(I,14), I=1,20)
       WRITE (6, *) ' (CD20) ', ((CD20(I,J), I=1,20), J=1,10)
       WRITE (6, *) ' (CD30) ', ((CD30(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DB20) ', (((DB20(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (DB30) ', (((DB30(I,J,K), I=1,10), J=1,10), K=1,10
     X   )

       STOP 
      END
