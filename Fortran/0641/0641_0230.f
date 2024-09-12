      PROGRAM MAIN
       IMPLICIT REAL*8 (A-D), LOGICAL*4 (L)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20)
       INTEGER NN, N4, N3, N2, N1
       PARAMETER (NN = 19, N4 = 15, N3 = 10, N2 = 2, N1 = 1)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       INTEGER II6, II5, II4, II3, II2, II1
       DOUBLE PRECISION DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
C$OMP PARALLEL SHARED (DB30,DA20,DB20,DB10) PRIVATE (II2,II,II1,II4,II3,
C$OMP& II6,II5,I,K,J)

       DO II=1,5
        II2 = (16 - II) / 4
        II1 = II + II2 * 4
        II4 = (16 - II) / 4
        II3 = II + II4 * 4
        II6 = (16 - II) / 2
        II5 = II + II6 * 2
C$OMP DO 
        DO I=2,10
         DO K=2,7,4
          DO J=II,12,4
           DB30(J,K,I-1) = DA20(J,I) + DA20(J,K)
           DB30(J+1,K,I-1) = DA20(J+1,I) + DA20(J+1,K)
           DB30(J+2,K,I-1) = DA20(J+2,I) + DA20(J+2,K)
           DB30(J+3,K,I-1) = DA20(J+3,I) + DA20(J+3,K)
           DB30(J,K+1,I-1) = DA20(J,I) + DA20(J,K+1)
           DB30(J+1,K+1,I-1) = DA20(J+1,I) + DA20(J+1,K+1)
           DB30(J+2,K+1,I-1) = DA20(J+2,I) + DA20(J+2,K+1)
           DB30(J+3,K+1,I-1) = DA20(J+3,I) + DA20(J+3,K+1)
           DB30(J,K+2,I-1) = DA20(J,I) + DA20(J,K+2)
           DB30(J+1,K+2,I-1) = DA20(J+1,I) + DA20(J+1,K+2)
           DB30(J+2,K+2,I-1) = DA20(J+2,I) + DA20(J+2,K+2)
           DB30(J+3,K+2,I-1) = DA20(J+3,I) + DA20(J+3,K+2)
           DB30(J,K+3,I-1) = DA20(J,I) + DA20(J,K+3)
           DB30(J+1,K+3,I-1) = DA20(J+1,I) + DA20(J+1,K+3)
           DB30(J+2,K+3,I-1) = DA20(J+2,I) + DA20(J+2,K+3)
           DB30(J+3,K+3,I-1) = DA20(J+3,I) + DA20(J+3,K+3)
          END DO
          DO J=II1,15,1
           DB30(J,K,I-1) = DA20(J,I) + DA20(J,K)
           DB30(J,K+1,I-1) = DA20(J,I) + DA20(J,K+1)
           DB30(J,K+2,I-1) = DA20(J,I) + DA20(J,K+2)
           DB30(J,K+3,I-1) = DA20(J,I) + DA20(J,K+3)
          END DO
         END DO
         DO J=II,12,4
          DB30(J,10,I-1) = DA20(J,I) + DA20(J,10)
          DB30(J+1,10,I-1) = DA20(J+1,I) + DA20(J+1,10)
          DB30(J+2,10,I-1) = DA20(J+2,I) + DA20(J+2,10)
          DB30(J+3,10,I-1) = DA20(J+3,I) + DA20(J+3,10)
         END DO
         DO J=II3,15,1
          DB30(J,10,I-1) = DA20(J,I) + DA20(J,10)
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
        DO I=2,8,3
         DO K=2,8,3
          DO J=II,14,2
           DB20(J,K,I) = DB30(J,K-1,I) + DB10(J,K+1,I)
           DB20(J,K,I+1) = DB30(J,K-1,I+1) + DB10(J,K+1,I+1)
           DB20(J,K,I+2) = DB30(J,K-1,I+2) + DB10(J,K+1,I+2)
           DB10(J,K,I) = DB10(15,10,I) * DB20(II,2,I)
           DB10(J,K,I+1) = DB10(15,10,I+1) * DB20(II,2,I+1)
           DB10(J,K,I+2) = DB10(15,10,I+2) * DB20(II,2,I+2)
           DB20(J,K+1,I) = DB30(J,K,I) + DB10(J,K+2,I)
           DB20(J,K+1,I+1) = DB30(J,K,I+1) + DB10(J,K+2,I+1)
           DB20(J,K+1,I+2) = DB30(J,K,I+2) + DB10(J,K+2,I+2)
           DB10(J,K+1,I) = DB10(15,10,I) * DB20(II,2,I)
           DB10(J,K+1,I+1) = DB10(15,10,I+1) * DB20(II,2,I+1)
           DB10(J,K+1,I+2) = DB10(15,10,I+2) * DB20(II,2,I+2)
           DB20(J,K+2,I) = DB30(J,K+1,I) + DB10(J,K+3,I)
           DB20(J,K+2,I+1) = DB30(J,K+1,I+1) + DB10(J,K+3,I+1)
           DB20(J,K+2,I+2) = DB30(J,K+1,I+2) + DB10(J,K+3,I+2)
           DB10(J,K+2,I) = DB10(15,10,I) * DB20(II,2,I)
           DB10(J,K+2,I+1) = DB10(15,10,I+1) * DB20(II,2,I+1)
           DB10(J,K+2,I+2) = DB10(15,10,I+2) * DB20(II,2,I+2)
           DB20(J+1,K,I) = DB30(J+1,K-1,I) + DB10(J+1,K+1,I)
           DB20(J+1,K,I+1) = DB30(J+1,K-1,I+1) + DB10(J+1,K+1,I+1)
           DB20(J+1,K,I+2) = DB30(J+1,K-1,I+2) + DB10(J+1,K+1,I+2)
           DB10(J+1,K,I) = DB10(15,10,I) * DB20(II,2,I)
           DB10(J+1,K,I+1) = DB10(15,10,I+1) * DB20(II,2,I+1)
           DB10(J+1,K,I+2) = DB10(15,10,I+2) * DB20(II,2,I+2)
           DB20(J+1,K+1,I) = DB30(J+1,K,I) + DB10(J+1,K+2,I)
           DB20(J+1,K+1,I+1) = DB30(J+1,K,I+1) + DB10(J+1,K+2,I+1)
           DB20(J+1,K+1,I+2) = DB30(J+1,K,I+2) + DB10(J+1,K+2,I+2)
           DB10(J+1,K+1,I) = DB10(15,10,I) * DB20(II,2,I)
           DB10(J+1,K+1,I+1) = DB10(15,10,I+1) * DB20(II,2,I+1)
           DB10(J+1,K+1,I+2) = DB10(15,10,I+2) * DB20(II,2,I+2)
           DB20(J+1,K+2,I) = DB30(J+1,K+1,I) + DB10(J+1,K+3,I)
           DB20(J+1,K+2,I+1) = DB30(J+1,K+1,I+1) + DB10(J+1,K+3,I+1)
           DB20(J+1,K+2,I+2) = DB30(J+1,K+1,I+2) + DB10(J+1,K+3,I+2)
           DB10(J+1,K+2,I) = DB10(15,10,I) * DB20(II,2,I)
           DB10(J+1,K+2,I+1) = DB10(15,10,I+1) * DB20(II,2,I+1)
           DB10(J+1,K+2,I+2) = DB10(15,10,I+2) * DB20(II,2,I+2)
          END DO
          IF (15 .GE. II5) THEN
           DB20(II5,K,I) = DB30(II5,K-1,I) + DB10(II5,K+1,I)
           DB20(II5,K,I+1) = DB30(II5,K-1,I+1) + DB10(II5,K+1,I+1)
           DB20(II5,K,I+2) = DB30(II5,K-1,I+2) + DB10(II5,K+1,I+2)
           DB10(II5,K,I) = DB10(15,10,I) * DB20(II,2,I)
           DB10(II5,K,I+1) = DB10(15,10,I+1) * DB20(II,2,I+1)
           DB10(II5,K,I+2) = DB10(15,10,I+2) * DB20(II,2,I+2)
           DB20(II5,K+1,I) = DB30(II5,K,I) + DB10(II5,K+2,I)
           DB20(II5,K+1,I+1) = DB30(II5,K,I+1) + DB10(II5,K+2,I+1)
           DB20(II5,K+1,I+2) = DB30(II5,K,I+2) + DB10(II5,K+2,I+2)
           DB10(II5,K+1,I) = DB10(15,10,I) * DB20(II,2,I)
           DB10(II5,K+1,I+1) = DB10(15,10,I+1) * DB20(II,2,I+1)
           DB10(II5,K+1,I+2) = DB10(15,10,I+2) * DB20(II,2,I+2)
           DB20(II5,K+2,I) = DB30(II5,K+1,I) + DB10(II5,K+3,I)
           DB20(II5,K+2,I+1) = DB30(II5,K+1,I+1) + DB10(II5,K+3,I+1)
           DB20(II5,K+2,I+2) = DB30(II5,K+1,I+2) + DB10(II5,K+3,I+2)
           DB10(II5,K+2,I) = DB10(15,10,I) * DB20(II,2,I)
           DB10(II5,K+2,I+1) = DB10(15,10,I+1) * DB20(II,2,I+1)
           DB10(II5,K+2,I+2) = DB10(15,10,I+2) * DB20(II,2,I+2)
          END IF
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       END DO
C$OMP END PARALLEL 

       DO I=2,10
        DO J=2,10
         DO K=2,17,3
          DA10(I,K) = DA30(K-1,I) - DA20(K,I-1)
          DA20(I,K) = DA20(20-K,I) * DA30(K,19-I)
          DA30(I,K) = DA10(2,2) + DA10(K,I)
          DA10(I,K+1) = DA30(K,I) - DA20(K+1,I-1)
          DA20(I,K+1) = DA20(19-K,I) * DA30(K+1,19-I)
          DA30(I,K+1) = DA10(2,2) + DA10(K+1,I)
          DA10(I,K+2) = DA30(K+1,I) - DA20(K+2,I-1)
          DA20(I,K+2) = DA20(18-K,I) * DA30(K+2,19-I)
          DA30(I,K+2) = DA10(2,2) + DA10(K+2,I)
         END DO
        END DO
       END DO
       DO II=1,2
        DO I2=1,20
         DO I3=1,20

          DO I1=1,17,4
           DD2 = DA20(I1,I2) + DA10(I1,I3)
           DD4 = DA20(I1+1,I2) + DA10(I1+1,I3)
           DD6 = DA20(I1+2,I2) + DA10(I1+2,I3)
           DD8 = DA20(I1+3,I2) + DA10(I1+3,I3)
           DD1 = DA10(I1,I3) - DA20(I1,I2)
           DD3 = DA10(I1+1,I3) - DA20(I1+1,I2)
           DD5 = DA10(I1+2,I3) - DA20(I1+2,I2)
           DD7 = DA10(I1+3,I3) - DA20(I1+3,I2)
           DA10(I1+3,I3) = DD7
           DA10(I1+2,I3) = DD5
           DA10(I1+1,I3) = DD3
           DA10(I1,I3) = DD1
           DA20(I1+3,I2) = DD8
           DA20(I1+2,I2) = DD6
           DA20(I1+1,I2) = DD4
           DA20(I1,I2) = DD2
          END DO
         END DO
        END DO
       END DO

       DO I1=1,20
        DO II=1,2
         DO I2=1,20
          IF (I1 .EQ. I2 .OR. I2 .EQ. I1) THEN
           DO I3=1,17,4
            DB30(I2,I3,I1) = DB30(I1,I1,I3) * 2D0 - DB20(I1,I2,I3)
            DB30(I2,I3+1,I1) = DB30(I1,I1,I3+1) * 2D0 - DB20(I1,I2,I3+1)
            DB30(I2,I3+2,I1) = DB30(I1,I1,I3+2) * 2D0 - DB20(I1,I2,I3+2)
            DB30(I2,I3+3,I1) = DB30(I1,I1,I3+3) * 2D0 - DB20(I1,I2,I3+3)
           END DO
          ELSE
           DO I3=1,17,4
            DB30(I2,I3,I1) = DB30(I1,I1,I3) * 2D0 - DB20(I1,I2,I3)
            DB30(I2,I3+1,I1) = DB30(I1,I1,I3+1) * 2D0 - DB20(I1,I2,I3+1)
            DB30(I2,I3+2,I1) = DB30(I1,I1,I3+2) * 2D0 - DB20(I1,I2,I3+2)
            DB30(I2,I3+3,I1) = DB30(I1,I1,I3+3) * 2D0 - DB20(I1,I2,I3+3)
           END DO
          END IF
         END DO
         DO I2=1,20
          DO I3=1,17,4
           DB20(I1,I2,I3) = DB10(I3,I2,I1) - DB30(I2,I3,I2)
           DB20(I1,I2,I3+1) = DB10(I3+1,I2,I1) - DB30(I2,I3+1,I2)
           DB20(I1,I2,I3+2) = DB10(I3+2,I2,I1) - DB30(I2,I3+2,I2)
           DB20(I1,I2,I3+3) = DB10(I3+3,I2,I1) - DB30(I2,I3+3,I2)
           DB10(I3,I1,I2) = DA30(I1,I3) * 2D0
           DB10(I3+1,I1,I2) = DA30(I1,I3+1) * 2D0
           DB10(I3+2,I1,I2) = DA30(I1,I3+2) * 2D0
           DB10(I3+3,I1,I2) = DA30(I1,I3+3) * 2D0
          END DO
         END DO
        END DO
       END DO

       WRITE (6, *) ' (DA10) ', ((DA10(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DA20) ', ((DA20(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DA30) ', ((DA30(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DB10) ', (((DB10(K1,K2,K3), K1=1,10), K2=1,10), 
     X   K3=1,5)
       WRITE (6, *) ' (DB20) ', (((DB10(K1,K2,K3), K1=1,10), K2=1,5), K3
     X   =1,5)
       WRITE (6, *) ' (DB30) ', (((DB10(K1,K2,K3), K1=1,10), K2=1,5), K3
     X   =1,5)
       STOP 
      END
