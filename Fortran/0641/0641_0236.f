      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D,O-Z), COMPLEX*16 (C)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20)
       DIMENSION CD10(20,20), CD20(20,20), CD30(20,20)
       PARAMETER (JC5 = 20)
       INTEGER NN
       PARAMETER (NN = 15)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       DATA CD10/400*(-1.D0,2.D0)/ 
       DATA CD20/400*(3.D0,-2.D0)/ 
       DATA CD30/400*(2.D0,0.1D0)/ 
       INTEGER K4, J1, I5
       DOUBLE PRECISION DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, 
     X   DD2, DD1
       COMPLEX*16 DC2, DC1

       DO I5=1,17,4
        CD20(I5,20) = (1.D0,2.D0)
        CD20(I5+1,20) = (1.D0,2.D0)
        CD20(I5+2,20) = (1.D0,2.D0)
        CD20(I5+3,20) = (1.D0,2.D0)
       END DO
C$OMP PARALLEL SHARED (CD10,CD20,CD30,DA10,DA20,DA30) PRIVATE (J1,I5)
C$OMP DO 
       DO J1=1,20

        DO I5=1,17,4
         CD10(I5,J1) = CD20(I5,J1) - CD30(I5,J1)
         CD10(I5+1,J1) = CD20(I5+1,J1) - CD30(I5+1,J1)
         CD10(I5+2,J1) = CD20(I5+2,J1) - CD30(I5+2,J1)
         CD10(I5+3,J1) = CD20(I5+3,J1) - CD30(I5+3,J1)
         DA10(I5,J1) = DA20(I5,J1) / DA30(I5,J1)
         DA10(I5+1,J1) = DA20(I5+1,J1) / DA30(I5+1,J1)
         DA10(I5+2,J1) = DA20(I5+2,J1) / DA30(I5+2,J1)
         DA10(I5+3,J1) = DA20(I5+3,J1) / DA30(I5+3,J1)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I5=1,20
        DO J1=1,20
         DO L=1,15
          DO K4=1,11,5
           DB10(J1,K4,L) = DB20(J1,K4,L+1) + DB30(J1,K4+1,L+1)
           DB10(J1,K4+1,L) = DB20(J1,K4+1,L+1) + DB30(J1,K4+2,L+1)
           DB10(J1,K4+2,L) = DB20(J1,K4+2,L+1) + DB30(J1,K4+3,L+1)
           DB10(J1,K4+3,L) = DB20(J1,K4+3,L+1) + DB30(J1,K4+4,L+1)
           DB10(J1,K4+4,L) = DB20(J1,K4+4,L+1) + DB30(J1,K4+5,L+1)
           DD4 = DIMAG (CD30(K4,L))
           DD5 = DIMAG (CD30(K4+1,L))
           DD6 = DIMAG (CD30(K4+2,L))
           DD7 = DIMAG (CD30(K4+3,L))
           DD3 = DIMAG (CD30(K4+4,L))
           DB20(J1,K4,L) = DD4 - DB30(I5,J1,K4)
           DB20(J1,K4+1,L) = DD5 - DB30(I5,J1,K4+1)
           DB20(J1,K4+2,L) = DD6 - DB30(I5,J1,K4+2)
           DB20(J1,K4+3,L) = DD7 - DB30(I5,J1,K4+3)
           DB20(J1,K4+4,L) = DD3 - DB30(I5,J1,K4+4)
          END DO
         END DO
         DC1 = CD20(I5,J1)
         DC2 = CD30(1,1)
         DO K4=1,11,5
          DC2 = DC2 + DC1
          DC2 = DC2 + DC1
          DC2 = DC2 + DC1
          DC2 = DC2 + DC1
          DC2 = DC2 + DC1
         END DO
         CD30(1,1) = DC2
        END DO
       END DO

       DD1 = DA20(1,1)
       DO I5=1,17,4
        DD1 = DD1 + DA10(I5,1)
        DD1 = DD1 + DA10(I5+1,1)
        DD1 = DD1 + DA10(I5+2,1)
        DD1 = DD1 + DA10(I5+3,1)
       END DO
       DA20(1,1) = DD1
       I = 21

       WRITE (6, *) ' (DA10) ', ((DA10(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DA20) ', DA20(1,1)
       WRITE (6, *) ' (CD10) ', ((CD10(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (CD20) ', (CD20(I,20), I=1,20)
       WRITE (6, *) ' (CD30) ', CD30(1,1)
       WRITE (6, *) ' (DB10) ', (((DB10(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
       WRITE (6, *) ' (DB20) ', (((DB20(I,J,K), I=1,10), J=1,10), K=1,10
     X   )
C$OMP PARALLEL SHARED (DA10,CD10,CD20,CD30,DB20,DA20,DB10,DB30,DA30) 
C$OMP& PRIVATE (DD2,DD8,DD9,DD10,DD11,I3,I1,I2,I4)
C$OMP DO 
       DO I3=1,20

        DO I1=1,15
         DD2 = DA10(I1,I3)
         DO I2=1,15
          CD10(I2,I3) = DCMPLX (DIMAG (CD20(I1+1,I2)), DREAL (CD30(I1,I2
     X      +1)))
          DO I4=1,17,4
           DD8 = DB20(I2+1,I4,I3) - DA20(I4,I3)
           DD9 = DB20(I2+1,I4+1,I3) - DA20(I4+1,I3)
           DD10 = DB20(I2+1,I4+2,I3) - DA20(I4+2,I3)
           DD11 = DB20(I2+1,I4+3,I3) - DA20(I4+3,I3)
           DB10(I4,I3,I2) = DB30(I2+1,I4,I3) + DA30(I4,I3)
           DB10(I4+1,I3,I2) = DB30(I2+1,I4+1,I3) + DA30(I4+1,I3)
           DB10(I4+2,I3,I2) = DB30(I2+1,I4+2,I3) + DA30(I4+2,I3)
           DB10(I4+3,I3,I2) = DB30(I2+1,I4+3,I3) + DA30(I4+3,I3)
           DB30(I2,I4+3,I3) = DD11
           DB30(I2,I4+2,I3) = DD10
           DB30(I2,I4+1,I3) = DD9
           DB30(I2,I4,I3) = DD8
          END DO
          DA20(I1,I3) = DIMAG (CD10(I2,I3)) - DD2
          DA30(1,I3) = DREAL (CD10(I1,I3)) - DA10(I2,I3)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) ' (CD10) ', ((CD10(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DA20) ', ((DA20(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DA30) ', (DA20(1,K2), K2=1,10)
       WRITE (6, *) ' (DB10) ', (((DB10(K1,K2,K3), K1=1,10), K2=1,10), 
     X   K3=1,10)
       WRITE (6, *) ' (DB30) ', (((DB30(K1,K2,K3), K1=1,10), K2=1,10), 
     X   K3=1,10)
       STOP 
      END
