      PROGRAM MAIN
       IMPLICIT REAL*8 (A-D), LOGICAL*4 (L)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20)
       INTEGER NN, N5, N4, N3, N2, N1
       PARAMETER (NN = 20, N5 = 15, N4 = 10, N3 = 3, N2 = 2)
       PARAMETER (N1 = 1)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       INTEGER II1
       DOUBLE PRECISION DD28, DD27, DD26, DD25, DD24, DD23, DD22, DD21, 
     X   DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, DD12, DD11, 
     X   DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
C$OMP PARALLEL SHARED (DB30,DA20,DB10,DB20) PRIVATE (I,J,K,DD4,DD5,DD6,
C$OMP& DD7,DD8,DD9,DD10,DD11,DD12,DD13,DD14,DD15,DD16,DD17,DD18,DD19,
C$OMP& DD20,DD21,II)

       DO II=1,5
C$OMP DO 
        DO I=2,15
                                                  
         DO J=2,12,4
                                                  
          DO K=2,8,3
           DB30(K,J,I) = DA20(K,I) * DB10(K+2,J+1,I+II)
           DB30(K+1,J,I) = DA20(K+1,I) * DB10(K+3,J+1,I+II)
           DB30(K+2,J,I) = DA20(K+2,I) * DB10(K+4,J+1,I+II)
           DB30(K,J+1,I) = DA20(K,I) * DB10(K+2,J+2,I+II)
           DB30(K+1,J+1,I) = DA20(K+1,I) * DB10(K+3,J+2,I+II)
           DB30(K+2,J+1,I) = DA20(K+2,I) * DB10(K+4,J+2,I+II)
           DB30(K,J+2,I) = DA20(K,I) * DB10(K+2,J+3,I+II)
           DB30(K+1,J+2,I) = DA20(K+1,I) * DB10(K+3,J+3,I+II)
           DB30(K+2,J+2,I) = DA20(K+2,I) * DB10(K+4,J+3,I+II)
           DB30(K,J+3,I) = DA20(K,I) * DB10(K+2,J+4,I+II)
           DB30(K+1,J+3,I) = DA20(K+1,I) * DB10(K+3,J+4,I+II)
           DB30(K+2,J+3,I) = DA20(K+2,I) * DB10(K+4,J+4,I+II)
          END DO
         END DO
         DO J=14,15,1
                                                  
          DO K=2,8,3
           DB30(K,J,I) = DA20(K,I) * DB10(K+2,J+1,I+II)
           DB30(K+1,J,I) = DA20(K+1,I) * DB10(K+3,J+1,I+II)
           DB30(K+2,J,I) = DA20(K+2,I) * DB10(K+4,J+1,I+II)
          END DO
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
        DO I=2,15
                                                  
         DO J=2,13,3
                                                  
          DO K=2,8,3
           DD4 = DB10(K,J+3,I) * DB20(K+9,15,I)
           DD5 = DB10(K+1,J+3,I) * DB20(K+10,15,I)
           DD6 = DB10(K+2,J+3,I) * DB20(K+11,15,I)
           DB10(K,J,I) = DD4
           DD7 = DB30(K,J-1,I) + DB10(K,K+1,I)
           DB10(K+1,J,I) = DD5
           DD8 = DB30(K+1,J-1,I) + DB10(K+1,K+2,I)
           DB10(K+2,J,I) = DD6
           DD9 = DB30(K+2,J-1,I) + DB10(K+2,K+3,I)
           DB20(K,J,I) = DD7
           DD10 = DB10(K,J+4,I) * DB20(K+9,15,I)
           DB20(K+1,J,I) = DD8
           DD11 = DB10(K+1,J+4,I) * DB20(K+10,15,I)
           DB20(K+2,J,I) = DD9
           DD12 = DB10(K+2,J+4,I) * DB20(K+11,15,I)
           DB10(K,J+1,I) = DD10
           DD13 = DB30(K,J,I) + DB10(K,K+1,I)
           DB10(K+1,J+1,I) = DD11
           DD14 = DB30(K+1,J,I) + DB10(K+1,K+2,I)
           DB10(K+2,J+1,I) = DD12
           DD15 = DB30(K+2,J,I) + DB10(K+2,K+3,I)
           DB20(K,J+1,I) = DD13
           DD16 = DB10(K,J+5,I) * DB20(K+9,15,I)
           DB20(K+1,J+1,I) = DD14
           DD17 = DB10(K+1,J+5,I) * DB20(K+10,15,I)
           DB20(K+2,J+1,I) = DD15
           DD18 = DB10(K+2,J+5,I) * DB20(K+11,15,I)
           DB10(K,J+2,I) = DD16
           DB20(K,J+2,I) = DB30(K,J+1,I) + DB10(K,K+1,I)
           DB10(K+1,J+2,I) = DD17
           DB20(K+1,J+2,I) = DB30(K+1,J+1,I) + DB10(K+1,K+2,I)
           DB10(K+2,J+2,I) = DD18
           DB20(K+2,J+2,I) = DB30(K+2,J+1,I) + DB10(K+2,K+3,I)
          END DO
         END DO
         DO J=14,15,1
                                                  
          DO K=2,8,3
           DD19 = DB10(K,J+3,I) * DB20(K+9,15,I)
           DD20 = DB10(K+1,J+3,I) * DB20(K+10,15,I)
           DD21 = DB10(K+2,J+3,I) * DB20(K+11,15,I)
           DB10(K,J,I) = DD19
           DB20(K,J,I) = DB30(K,J-1,I) + DB10(K,K+1,I)
           DB10(K+1,J,I) = DD20
           DB20(K+1,J,I) = DB30(K+1,J-1,I) + DB10(K+1,K+2,I)
           DB10(K+2,J,I) = DD21
           DB20(K+2,J,I) = DB30(K+2,J-1,I) + DB10(K+2,K+3,I)
          END DO
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       END DO
C$OMP END PARALLEL 

       DO I=2,10
        DO J=2,10
         DD1 = DA20(I+10,J)
         DO K=2,12,4
          DA10(I,K+3) = DA30(I+1,K) - DD1
          DA10(I,K+4) = DA30(I+1,K+1) - DD1
          DA10(I,K+5) = DA30(I+1,K+2) - DD1
          DA10(I,K+6) = DA30(I+1,K+3) - DD1
         END DO
         DO K=14,15,1
          DA10(I,K+3) = DA30(I+1,K) - DD1
         END DO
         DO K=2,12,4
          DA30(I,K+2) = DA10(3,K) + DA10(I,K)
          DA30(I,K+3) = DA10(3,K+1) + DA10(I,K+1)
          DA30(I,K+4) = DA10(3,K+2) + DA10(I,K+2)
          DA30(I,K+5) = DA10(3,K+3) + DA10(I,K+3)
         END DO
         DO K=14,15,1
          DA30(I,K+2) = DA10(3,K) + DA10(I,K)
         END DO
         DO K=2,12,4
          DD22 = DA20(I+3,I) * DA30(I,K)
          DD23 = DA20(I+3,I) * DA30(I,K+1)
          DD24 = DA20(I+3,I) * DA30(I,K+2)
          DA20(I+1,K+3) = DA20(I+3,I) * DA30(I,K+3)
          DA20(I+1,K+2) = DD24
          DA20(I+1,K+1) = DD23
          DA20(I+1,K) = DD22
         END DO
         DO K=14,15,1
          DA20(I+1,K) = DA20(I+3,I) * DA30(I,K)
         END DO
        END DO
       END DO

       DO I1=3,15
        DO II=1,3
         DO I2=3,15
          DO I3=3,12,4
           DB20(I1,I2,I3) = DB10(I3,I2,I1) - DB30(I2,I3,I1+3)
           DB20(I1,I2,I3+1) = DB10(I3+1,I2,I1) - DB30(I2,I3+1,I1+3)
           DB20(I1,I2,I3+2) = DB10(I3+2,I2,I1) - DB30(I2,I3+2,I1+3)
           DB20(I1,I2,I3+3) = DB10(I3+3,I2,I1) - DB30(I2,I3+3,I1+3)
           DB10(I3,I1,I2+3) = DA30(I1+1,I3) * 2D0
           DB10(I3+1,I1,I2+3) = DA30(I1+1,I3+1) * 2D0
           DB10(I3+2,I1,I2+3) = DA30(I1+1,I3+2) * 2D0
           DB10(I3+3,I1,I2+3) = DA30(I1+1,I3+3) * 2D0
          END DO
          DB20(I1,I2,15) = DB10(15,I2,I1) - DB30(I2,15,I1+3)
          DB10(15,I1,I2+3) = DA30(I1+1,15) * 2D0
         END DO
        END DO
       END DO

C$OMP PARALLEL SHARED (DA20,DA10,DB30,DB20) PRIVATE (DD2,DD3,DD25,DD26,
C$OMP& DD27,DD28,II1,I1,II,I2,I3)
C$OMP DO 
       DO II1=0,1
        GO TO (21), II1
        DO I1=3,15
         DO II=1,3
          DO I2=3,15
           DD2 = DA20(I1+1,I2)
           DD3 = DA20(I1,I2+2)
           DO I3=3,12,4
            DD2 = DD2 + DA10(I1,I3)
            DD25 = DA10(I1+1,I3) * DD3
            DD2 = DD2 + DA10(I1,I3+1)
            DD26 = DA10(I1+1,I3+1) * DD3
            DD2 = DD2 + DA10(I1,I3+2)
            DD27 = DA10(I1+1,I3+2) * DD3
            DD2 = DD2 + DA10(I1,I3+3)
            DD28 = DA10(I1+1,I3+3) * DD3
            DA10(I1,I3+3) = DD28
            DA10(I1,I3+2) = DD27
            DA10(I1,I3+1) = DD26
            DA10(I1,I3) = DD25
           END DO
           DD2 = DD2 + DA10(I1,15)
           DA10(I1,15) = DA10(I1+1,15) * DD3
           DA20(I1+1,I2) = DD2
          END DO
         END DO
        END DO
C$OMP FLUSH
        GO TO 22

   21   DO I1=3,15
         DO II=1,3
          DO I2=3,15
           DO I3=3,12,4
            DB30(I2,I3+2,I1) = DB30(I1,I2,I3) - DB20(I1-1,I2,I3)
            DB30(I2,I3+3,I1) = DB30(I1,I2,I3+1) - DB20(I1-1,I2,I3+1)
            DB30(I2,I3+4,I1) = DB30(I1,I2,I3+2) - DB20(I1-1,I2,I3+2)
            DB30(I2,I3+5,I1) = DB30(I1,I2,I3+3) - DB20(I1-1,I2,I3+3)
           END DO
           DB30(I2,17,I1) = DB30(I1,I2,15) - DB20(I1-1,I2,15)
          END DO
         END DO
        END DO
C$OMP FLUSH
   22   CONTINUE
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
       STOP 
      END
