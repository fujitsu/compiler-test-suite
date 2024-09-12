      PROGRAM MAIN
       IMPLICIT REAL*8 (A-D), LOGICAL*4 (L)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20)
       INTEGER NN, N3, N2, N1
       PARAMETER (NN = 20, N3 = 10, N2 = 2, N1 = 1)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       INTEGER II2, II1
       DOUBLE PRECISION DD23, DD22, DD21, DD20, DD19, DD18, DD17, DD16, 
     X   DD15, DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, 
     X   DD4, DD3, DD2, DD1
       DO J=1,10,1
        DO K=1,10
         DO II=2,8,3

          DO I=1,17,4
           DD1 = DB20(I,J,II) * DB30(I,J+1,II)
           DD2 = DB20(I+1,J,II) * DB30(I+1,J+1,II)
           DD3 = DB20(I+2,J,II) * DB30(I+2,J+1,II)
           DD4 = DB20(I+3,J,II) * DB30(I+3,J+1,II)
           DD13 = DD1 + DB20(I,J+1,II)
           DD14 = DD2 + DB20(I+1,J+1,II)
           DD15 = DD3 + DB20(I+2,J+1,II)
           DD16 = DD4 + DB20(I+3,J+1,II)
           DD5 = DB20(I,J,II+1) * DB30(I,J+1,II+1)
           DD6 = DB20(I+1,J,II+1) * DB30(I+1,J+1,II+1)
           DD7 = DB20(I+2,J,II+1) * DB30(I+2,J+1,II+1)
           DD8 = DB20(I+3,J,II+1) * DB30(I+3,J+1,II+1)
           DB20(I,1,II-1) = DD13
           DB10(I,K,II) = DD1
           DD17 = DD5 + DB20(I,J+1,II+1)
           DB20(I+1,1,II-1) = DD14
           DB10(I+1,K,II) = DD2
           DD18 = DD6 + DB20(I+1,J+1,II+1)
           DB20(I+2,1,II-1) = DD15
           DB10(I+2,K,II) = DD3
           DD19 = DD7 + DB20(I+2,J+1,II+1)
           DB20(I+3,1,II-1) = DD16
           DB10(I+3,K,II) = DD4
           DD20 = DD8 + DB20(I+3,J+1,II+1)
           DD9 = DB20(I,J,II+2) * DB30(I,J+1,II+2)
           DD10 = DB20(I+1,J,II+2) * DB30(I+1,J+1,II+2)
           DD11 = DB20(I+2,J,II+2) * DB30(I+2,J+1,II+2)
           DD12 = DB20(I+3,J,II+2) * DB30(I+3,J+1,II+2)
           DB20(I,1,II) = DD17
           DB10(I,K,II+1) = DD5
           DD21 = DD9 + DB20(I,J+1,II+2)
           DB20(I+1,1,II) = DD18
           DB10(I+1,K,II+1) = DD6
           DD22 = DD10 + DB20(I+1,J+1,II+2)
           DB20(I+2,1,II) = DD19
           DB10(I+2,K,II+1) = DD7
           DD23 = DD11 + DB20(I+2,J+1,II+2)
           DB20(I+3,1,II) = DD20
           DB10(I+3,K,II+1) = DD8
           DB20(I+3,1,II+1) = DD12 + DB20(I+3,J+1,II+2)
           DB20(I+2,1,II+1) = DD23
           DB20(I+1,1,II+1) = DD22
           DB20(I,1,II+1) = DD21
           DB10(I+3,K,II+2) = DD12
           DB10(I+2,K,II+2) = DD11
           DB10(I+1,K,II+2) = DD10
           DB10(I,K,II+2) = DD9
          END DO
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (DB30,DA20,DA30) PRIVATE (II,J,K,I)
C$OMP DO 
       DO II=2,10
        DO J=1,7,4
         DO K=1,10

          DO I=1,17,4
           DB30(I,J,II) = DA20(I,II) * DA30(I,II)
           DB30(I+1,J,II) = DA20(I+1,II) * DA30(I+1,II)
           DB30(I+2,J,II) = DA20(I+2,II) * DA30(I+2,II)
           DB30(I+3,J,II) = DA20(I+3,II) * DA30(I+3,II)
           DB30(I,J+1,II) = DA20(I,II) * DA30(I,II)
           DB30(I+1,J+1,II) = DA20(I+1,II) * DA30(I+1,II)
           DB30(I+2,J+1,II) = DA20(I+2,II) * DA30(I+2,II)
           DB30(I+3,J+1,II) = DA20(I+3,II) * DA30(I+3,II)
           DB30(I,J+2,II) = DA20(I,II) * DA30(I,II)
           DB30(I+1,J+2,II) = DA20(I+1,II) * DA30(I+1,II)
           DB30(I+2,J+2,II) = DA20(I+2,II) * DA30(I+2,II)
           DB30(I+3,J+2,II) = DA20(I+3,II) * DA30(I+3,II)
           DB30(I,J+3,II) = DA20(I,II) * DA30(I,II)
           DB30(I+1,J+3,II) = DA20(I+1,II) * DA30(I+1,II)
           DB30(I+2,J+3,II) = DA20(I+2,II) * DA30(I+2,II)
           DB30(I+3,J+3,II) = DA20(I+3,II) * DA30(I+3,II)
          END DO
         END DO
        END DO
        DO J=9,10,1
         DO K=1,10

          DO I=1,17,4
           DB30(I,J,II) = DA20(I,II) * DA30(I,II)
           DB30(I+1,J,II) = DA20(I+1,II) * DA30(I+1,II)
           DB30(I+2,J,II) = DA20(I+2,II) * DA30(I+2,II)
           DB30(I+3,J,II) = DA20(I+3,II) * DA30(I+3,II)
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I=1,10
        DO J=I,20
         II2 = (11 - J) / 4
         II1 = J + II2 * 4
         DO K=J,7,4
          DA10(I,K) = DA20(I,K) * DA10(1,J)
          DA30(I,K) = DA30(10,10) + DA10(I,J)
          DA10(I,K+1) = DA20(I,K+1) * DA10(1,J)
          DA30(I,K+1) = DA30(10,10) + DA10(I,J)
          DA10(I,K+2) = DA20(I,K+2) * DA10(1,J)
          DA30(I,K+2) = DA30(10,10) + DA10(I,J)
          DA10(I,K+3) = DA20(I,K+3) * DA10(1,J)
          DA30(I,K+3) = DA30(10,10) + DA10(I,J)
         END DO
         DO K=II1,10,1
          DA10(I,K) = DA20(I,K) * DA10(1,J)
          DA30(I,K) = DA30(10,10) + DA10(I,J)
         END DO
        END DO
       END DO

       DO I1=2,10
        DO I3=2,10
         DO I2=2,7,5
          DA20(I1,I1) = DA20(I1,I1) + DA10(I1,I3)
          DA10(I1,I3) = DA10(I2,I3+10) * DA20(I1+1,I2)
          DA20(I1,I1) = DA20(I1,I1) + DA10(I1,I3)
          DA10(I1,I3) = DA10(I2+1,I3+10) * DA20(I1+1,I2+1)
          DA20(I1,I1) = DA20(I1,I1) + DA10(I1,I3)
          DA10(I1,I3) = DA10(I2+2,I3+10) * DA20(I1+1,I2+2)
          DA20(I1,I1) = DA20(I1,I1) + DA10(I1,I3)
          DA10(I1,I3) = DA10(I2+3,I3+10) * DA20(I1+1,I2+3)
          DA20(I1,I1) = DA20(I1,I1) + DA10(I1,I3)
          DA10(I1,I3) = DA10(I2+4,I3+10) * DA20(I1+1,I2+4)
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (DB30,DB20) PRIVATE (I3,I2,I1)
C$OMP DO 
       DO I3=2,10
        DO I2=2,8,4

         DO I1=2,8,3
          DB30(I2,I3,I3) = DB30(I1,I3+1,I3) - DB20(I1,I2,I2+1)
          DB30(I2+1,I3,I3) = DB30(I1,I3+1,I3) - DB20(I1,I2+1,I2+2)
          DB30(I2+2,I3,I3) = DB30(I1,I3+1,I3) - DB20(I1,I2+2,I2+3)
          DB30(I2+3,I3,I3) = DB30(I1,I3+1,I3) - DB20(I1,I2+3,I2+4)
          DB30(I2,I3,I3) = DB30(I1+1,I3+1,I3) - DB20(I1+1,I2,I2+1)
          DB30(I2+1,I3,I3) = DB30(I1+1,I3+1,I3) - DB20(I1+1,I2+1,I2+2)
          DB30(I2+2,I3,I3) = DB30(I1+1,I3+1,I3) - DB20(I1+1,I2+2,I2+3)
          DB30(I2+3,I3,I3) = DB30(I1+1,I3+1,I3) - DB20(I1+1,I2+3,I2+4)
          DB30(I2,I3,I3) = DB30(I1+2,I3+1,I3) - DB20(I1+2,I2,I2+1)
          DB30(I2+1,I3,I3) = DB30(I1+2,I3+1,I3) - DB20(I1+2,I2+1,I2+2)
          DB30(I2+2,I3,I3) = DB30(I1+2,I3+1,I3) - DB20(I1+2,I2+2,I2+3)
          DB30(I2+3,I3,I3) = DB30(I1+2,I3+1,I3) - DB20(I1+2,I2+3,I2+4)
         END DO
        END DO

        DO I1=2,8,3
         DB30(10,I3,I3) = DB30(I1,I3+1,I3) - DB20(I1,10,11)
         DB30(11,I3,I3) = DB30(I1,I3+1,I3) - DB20(I1,11,12)
         DB30(10,I3,I3) = DB30(I1+1,I3+1,I3) - DB20(I1+1,10,11)
         DB30(11,I3,I3) = DB30(I1+1,I3+1,I3) - DB20(I1+1,11,12)
         DB30(10,I3,I3) = DB30(I1+2,I3+1,I3) - DB20(I1+2,10,11)
         DB30(11,I3,I3) = DB30(I1+2,I3+1,I3) - DB20(I1+2,11,12)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I1=2,10
        DO I2=2,11
         DO I3=2,8,3
          DB10(I3,I1,I2) = DA30(I1,I3) * 2D0
          DB10(I3+1,I1,I2) = DA30(I1,I3+1) * 2D0
          DB10(I3+2,I1,I2) = DA30(I1,I3+2) * 2D0
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
