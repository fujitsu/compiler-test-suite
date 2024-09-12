      PROGRAM MAIN
       IMPLICIT REAL*8 (A-B,D,O-Z), LOGICAL*4 (L), COMPLEX*16 (C)
       DIMENSION DA10(20,20), DA20(20,30), DA30(30,20), DB10(20,20,30), 
     X   DB20(20,20,20), DB30(20,20,20)
       DIMENSION CD10(20,20), CD20(20,20)
       INTEGER N5, N4, N3, N2, N1
       PARAMETER (N5 = 20, N4 = 15, N3 = 10, N2 = 2, N1 = 1)
       DATA DA10/400*1.0D0/ 
       DATA DA20/600*2.D0/ 
       DATA DA30/600*3.D0/ 
       DATA DB10/12000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       DATA CD10/400*(-1.D0,2.D0)/ 
       DATA CD20/400*(3.D0,-2.D0)/ 
       INTEGER II10, II9, II8, II7, II6, II5, II4, II3, II2, II1
       DOUBLE PRECISION DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, 
     X   DD3, DD2, DD1

       DO K=1,9
        DO I=10,20
         DO J=2,12,4
          DA10(I,J) = DA20(K,J-1) * DA30(I+10,J+1)
          DA10(I,J+1) = DA20(K,J) * DA30(I+10,J+2)
          DA10(I,J+2) = DA20(K,J+1) * DA30(I+10,J+3)
          DA10(I,J+3) = DA20(K,J+2) * DA30(I+10,J+4)
         END DO
         DO J=14,15,1
          DA10(I,J) = DA20(K,J-1) * DA30(I+10,J+1)
         END DO
         DO J=2,12,4
          DA30(I,J) = DA10(K,J-1) - DA20(I,J+9)
          DA30(I,J+1) = DA10(K,J) - DA20(I,J+10)
          DA30(I,J+2) = DA10(K,J+1) - DA20(I,J+11)
          DA30(I,J+3) = DA10(K,J+2) - DA20(I,J+12)
         END DO
         DO J=14,15,1
          DA30(I,J) = DA10(K,J-1) - DA20(I,J+9)
         END DO
         DO J=2,12,4
          DA20(I,J) = DA30(K,J-1) + DA10(15,J-1)
          DA20(I,J+1) = DA30(K,J) + DA10(15,J)
          DA20(I,J+2) = DA30(K,J+1) + DA10(15,J+1)
          DA20(I,J+3) = DA30(K,J+2) + DA10(15,J+2)
         END DO
         DO J=14,15,1
          DA20(I,J) = DA30(K,J-1) + DA10(15,J-1)
         END DO
        END DO
       END DO

       DO I=15,2,-1
        II1 = I - 1
        II2 = I - 1
        II3 = I - 1
        II6 = (I - 1) / 4
        II5 = I + II6 * (-4)
        II8 = (I - 1) / 4
        II7 = I + II8 * (-4)
        II10 = (I - 1) / 4
        II9 = I + II10 * (-4)
        IF (II1 .GT. 0) THEN
         DO K=20,2,-1
          DD1 = DB20(2,I+1,K-1)
          DO J=I,5,-4
           DD8 = DD1 + DB30(I,J,K-1)
           DD9 = DD1 + DB30(I,J-1,K-1)
           DD10 = DD1 + DB30(I,J-2,K-1)
           DD11 = DD1 + DB30(I,J-3,K-1)
           DB30(I,J,K) = DB20(I,J,K) * DB10(I,J,K-1)
           DB30(I,J-1,K) = DB20(I,J-1,K) * DB10(I,J-1,K-1)
           DB30(I,J-2,K) = DB20(I,J-2,K) * DB10(I,J-2,K-1)
           DB30(I,J-3,K) = DB20(I,J-3,K) * DB10(I,J-3,K-1)
           DB10(I,J-3,K+1) = DD11
           DB10(I,J-2,K+1) = DD10
           DB10(I,J-1,K+1) = DD9
           DB10(I,J,K+1) = DD8
          END DO
          DO J=II5,2,-1
           DD12 = DD1 + DB30(I,J,K-1)
           DB30(I,J,K) = DB20(I,J,K) * DB10(I,J,K-1)
           DB10(I,J,K+1) = DD12
          END DO
         END DO
        END IF
        IF (II2 .GT. 0) THEN
         DO K=20,5,-4
          DD2 = DB10(15,I+1,K)
          DD3 = DB10(15,I+1,K-1)
          DD4 = DB10(15,I+1,K-2)
          DD5 = DB10(15,I+1,K-3)
          DO J=I,5,-4
           DB20(I-1,J,K) = DD2 - DB30(1,J,K)
           DB20(I-1,J-1,K) = DD2 - DB30(1,J-1,K)
           DB20(I-1,J-2,K) = DD2 - DB30(1,J-2,K)
           DB20(I-1,J-3,K) = DD2 - DB30(1,J-3,K)
           DB20(I-1,J,K-1) = DD3 - DB30(1,J,K-1)
           DB20(I-1,J-1,K-1) = DD3 - DB30(1,J-1,K-1)
           DB20(I-1,J-2,K-1) = DD3 - DB30(1,J-2,K-1)
           DB20(I-1,J-3,K-1) = DD3 - DB30(1,J-3,K-1)
           DB20(I-1,J,K-2) = DD4 - DB30(1,J,K-2)
           DB20(I-1,J-1,K-2) = DD4 - DB30(1,J-1,K-2)
           DB20(I-1,J-2,K-2) = DD4 - DB30(1,J-2,K-2)
           DB20(I-1,J-3,K-2) = DD4 - DB30(1,J-3,K-2)
           DB20(I-1,J,K-3) = DD5 - DB30(1,J,K-3)
           DB20(I-1,J-1,K-3) = DD5 - DB30(1,J-1,K-3)
           DB20(I-1,J-2,K-3) = DD5 - DB30(1,J-2,K-3)
           DB20(I-1,J-3,K-3) = DD5 - DB30(1,J-3,K-3)
          END DO
          DO J=II7,2,-1
           DB20(I-1,J,K) = DD2 - DB30(1,J,K)
           DB20(I-1,J,K-1) = DD3 - DB30(1,J,K-1)
           DB20(I-1,J,K-2) = DD4 - DB30(1,J,K-2)
           DB20(I-1,J,K-3) = DD5 - DB30(1,J,K-3)
          END DO
         END DO
        END IF
        IF (II3 .GT. 0) THEN
         DO K=4,2,-1
          DD6 = DB10(15,I+1,K)
          DO J=I,5,-4
           DB20(I-1,J,K) = DD6 - DB30(1,J,K)
           DB20(I-1,J-1,K) = DD6 - DB30(1,J-1,K)
           DB20(I-1,J-2,K) = DD6 - DB30(1,J-2,K)
           DB20(I-1,J-3,K) = DD6 - DB30(1,J-3,K)
          END DO
          DO J=II9,2,-1
           DB20(I-1,J,K) = DD6 - DB30(1,J,K)
          END DO
         END DO
        END IF
       END DO

       DO I1=2,15
        DO I2=I1,2,-1
         II4 = 21 - I2
         IF (II4 .GT. 0) THEN
          DD7 = DA10(I1,I2)
          DO I3=I2,20
           DX = DD7 + DIMAG (CD10(I1,I3))
           DY = DA20(I1,I3) * DIMAG (CD20(I1,I3))
           IF (DX .GT. DY) THEN
            DZ = DX + DREAL (CD10(I1-1,I3))
           ELSE
            DZ = DY + DREAL (CD20(I1-1,I3))
           END IF
           CD10(I2,I3) = DCMPLX (DX, DMAX1 (DZ, DY))
           CD20(I2,I3) = DCMPLX (DY, DMIN1 (DX, DZ))
          END DO
         END IF
        END DO
       END DO

       WRITE (6, *) ' (DA10) ', ((DA10(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DA20) ', ((DA20(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DA30) ', ((DA30(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (CD10) ', ((CD10(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (CD20) ', ((CD20(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DB10) ', (((DB10(K1,K2,K3), K1=1,10), K2=1,10), 
     X   K3=1,5)
       WRITE (6, *) ' (DB20) ', (((DB20(K1,K2,K3), K1=1,10), K2=1,10), 
     X   K3=1,5)
       WRITE (6, *) ' (DB30) ', (((DB30(K1,K2,K3), K1=1,10), K2=1,10), 
     X   K3=1,5)
       STOP 
      END
