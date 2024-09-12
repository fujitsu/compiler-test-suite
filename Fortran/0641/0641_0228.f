      PROGRAM MAIN
       IMPLICIT REAL*8 (A-D), LOGICAL*4 (L)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), LD10(20,20), 
     X   DB10(20,20,20), DB20(20,20,20), DB30(20,20,20)
       INTEGER NN, N4, N3, N2, N1
       PARAMETER (NN = 20, N4 = 15, N3 = 10, N2 = 2, N1 = 1)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       DATA LD10/400*.FALSE./ 
       INTEGER II5, II4, II3, II2, II1
       DOUBLE PRECISION DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, 
     X   DD2, DD1

       DO I=1,10
        DO J=1,10,1
         DD2 = DA30(I,J)
         DO II=1,15,2
          DD1 = DA30(II,II)
          DO K=1,17,4
           DD4 = DA20(K,J+1) * DD1
           DD5 = DA20(K+1,J+1) * DD1
           DD6 = DA20(K+2,J+1) * DD1
           DD7 = DA20(K+3,J+1) * DD1
           DD8 = DB20(K,10,II) + DB30(K,I,II)
           DD9 = DB20(K+1,10,II) + DB30(K+1,I,II)
           DD10 = DB20(K+2,10,II) + DB30(K+2,I,II)
           DD11 = DB20(K+3,10,II) + DB30(K+3,I,II)
           DA20(K,J) = DB10(K,J+10,II+2) - DB20(K,J,20)
           DA20(K+1,J) = DB10(K+1,J+10,II+2) - DB20(K+1,J,20)
           DA20(K+2,J) = DB10(K+2,J+10,II+2) - DB20(K+2,J,20)
           DA20(K+3,J) = DB10(K+3,J+10,II+2) - DB20(K+3,J,20)
           DB10(K,J,II) = DD8
           DB20(K,J,II) = DD4 + DD2
           DB10(K+1,J,II) = DD9
           DB20(K+1,J,II) = DD5 + DD2
           DB10(K+2,J,II) = DD10
           DB20(K+2,J,II) = DD6 + DD2
           DB10(K+3,J,II) = DD11
           DB20(K+3,J,II) = DD7 + DD2
           DA10(K+3,II) = DD7
           DA10(K+2,II) = DD6
           DA10(K+1,II) = DD5
           DA10(K,II) = DD4
          END DO
         END DO
        END DO
       END DO

C$OMP PARALLEL SHARED (DA30,DA10,DB30,DB20,DA20,DB10,LD10) PRIVATE (II3,
C$OMP& II2,II5,II4,II1,I,J,K,DD3,I3,I1,I2,DX)
C$OMP DO 
       DO II1=0,1
        GO TO (8), II1
        DO I=1,10
         DO J=I,10
          II3 = (11 - J) / 4
          II2 = J + II3 * 4
          DO K=J,7,4
           DA30(I,K) = DA30(K,I) + DA10(I,K)
           DA30(I,K+1) = DA30(K+1,I) + DA10(I,K+1)
           DA30(I,K+2) = DA30(K+2,I) + DA10(I,K+2)
           DA30(I,K+3) = DA30(K+3,I) + DA10(I,K+3)
          END DO
          DO K=II2,10,1
           DA30(I,K) = DA30(K,I) + DA10(I,K)
          END DO
         END DO
        END DO
C$OMP FLUSH
        GO TO 9

    8   DO I=1,10
         DO J=I,10
          II5 = (11 - J) / 4
          II4 = J + II5 * 4
          DO K=J,7,4
           DB30(I,J,K) = DB30(K,10,I) * DB20(I,J,K)
           DB30(I,J,K+1) = DB30(K+1,10,I) * DB20(I,J,K+1)
           DB30(I,J,K+2) = DB30(K+2,10,I) * DB20(I,J,K+2)
           DB30(I,J,K+3) = DB30(K+3,10,I) * DB20(I,J,K+3)
          END DO
          DO K=II4,10,1
           DB30(I,J,K) = DB30(K,10,I) * DB20(I,J,K)
          END DO
         END DO
        END DO
C$OMP FLUSH
    9   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I3=2,10,2

        DO I1=2,10
         DD3 = DA20(I1,I3)
         DO I2=2,15,2
          DX = DMAX1 (DA10(I2,I3), DB10(I1,I2,I3))
          IF (DX .GT. DMAX1 (DD3, DB20(I1,I2,I3))) THEN
           LD10(I2,I3) = .TRUE.
           DB10(I1+2,I2,I3) = DX
          ELSE
           LD10(I1,I3) = .NOT.LD10(I3,I3)
           DB20(I1,I2+2,I3) = DX
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) ' (DA10) ', ((DA10(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DA20) ', ((DA20(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DA30) ', ((DA30(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DB10) ', (((DB10(K1,K2,K3), K1=1,10), K2=1,10), 
     X   K3=1,5)
       WRITE (6, *) ' (DB20) ', (((DB10(K1,K2,K3), K1=1,10), K2=1,5), K3
     X   =1,5)
       WRITE (6, *) ' (DB30) ', (((DB10(K1,K2,K3), K1=1,10), K2=1,5), K3
     X   =1,5)
       WRITE (6, *) ' (LD10) ', ((DA30(K1,K2), K1=1,20), K2=1,20)
       STOP 
      END
