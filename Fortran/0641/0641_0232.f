      PROGRAM MAIN
       IMPLICIT REAL*8 (A-D), LOGICAL*4 (L)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20)
       INTEGER N5, N4, N3, N2, N1
       PARAMETER (N5 = 20, N4 = 15, N3 = 10, N2 = 2, N1 = 1)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       INTEGER II23, II22, II21, II20, II19, II18, II17, II16, II15, 
     X   II14, II13, II12, II11, II10, II9, II8, II7, II6, II5, II4, II3
     X   , II2, II1, K21, K11
       DOUBLE PRECISION DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1

       DO I=1,15
        II1 = 21 - I
        II2 = 21 - I
        II7 = (21 - I) / 4
        II6 = I + II7 * 4
        II9 = (21 - I) / 4
        II8 = I + II9 * 4
        IF (II1 .GT. 0) THEN
         DD1 = DA30(15,I)
         DO J=I,17,4
          DA10(I,J) = DA20(20,J) * DD1
          DA10(I,J+1) = DA20(20,J+1) * DD1
          DA10(I,J+2) = DA20(20,J+2) * DD1
          DA10(I,J+3) = DA20(20,J+3) * DD1
         END DO
         DO J=II6,20,1
          DA10(I,J) = DA20(20,J) * DD1
         END DO
        END IF
        IF (II2 .GT. 0) THEN
         DD2 = DA10(I,I)
         DO J=I,17,4
          DA20(J,I) = DD2 + DA30(I,J)
          DA20(J+1,I) = DD2 + DA30(I,J+1)
          DA20(J+2,I) = DD2 + DA30(I,J+2)
          DA20(J+3,I) = DD2 + DA30(I,J+3)
         END DO
         DO J=II8,20,1
          DA20(J,I) = DD2 + DA30(I,J)
         END DO
        END IF
       END DO

       DO K11=15,5,-1
        II3 = K11
        II11 = K11 / 4
        II10 = K11 + II11 * (-4)
        II13 = K11 / 4
        II12 = K11 + II13 * (-4)
        DO K21=K11,4,-4
         DA30(K11,K21) = DA10(K11,K21) * DB10(K11,K21,K21)
         DA30(K11,K21-1) = DA10(K11,K21-1) * DB10(K11,K21-1,K21-1)
         DA30(K11,K21-2) = DA10(K11,K21-2) * DB10(K11,K21-2,K21-2)
         DA30(K11,K21-3) = DA10(K11,K21-3) * DB10(K11,K21-3,K21-3)
        END DO
        DO K21=II10,1,-1
         DA30(K11,K21) = DA10(K11,K21) * DB10(K11,K21,K21)
        END DO
        IF (II3 .GT. 0) THEN
         DD3 = DA30(15,K11)
         DO K21=K11,4,-4
          DB10(K21,15,K11) = DB20(1,K21,K11) - DA20(K11,K21)
          DB10(K21-1,15,K11) = DB20(1,K21-1,K11) - DA20(K11,K21-1)
          DB10(K21-2,15,K11) = DB20(1,K21-2,K11) - DA20(K11,K21-2)
          DB10(K21-3,15,K11) = DB20(1,K21-3,K11) - DA20(K11,K21-3)
          DB20(K11,K11,K21) = DD3 + DB30(K11,K21,2)
          DB20(K11,K11,K21-1) = DD3 + DB30(K11,K21-1,2)
          DB20(K11,K11,K21-2) = DD3 + DB30(K11,K21-2,2)
          DB20(K11,K11,K21-3) = DD3 + DB30(K11,K21-3,2)
         END DO
         DO K21=II12,1,-1
          DB10(K21,15,K11) = DB20(1,K21,K11) - DA20(K11,K21)
          DB20(K11,K11,K21) = DD3 + DB30(K11,K21,2)
         END DO
        END IF
       END DO

       DO I1=15,2,-1
        II15 = (21 - I1) / 4
        II14 = I1 + II15 * 4
        DO I2=I1,17,4
         DD7 = DA10(I1,2) - DB30(1,1,I2)
         DD8 = DA10(I1,2) - DB30(1,1,I2+1)
         DD9 = DA10(I1,2) - DB30(1,1,I2+2)
         DA10(I2+3,1) = DA10(I1,2) - DB30(1,1,I2+3)
         DB30(1,I2,I1) = DA20(I1,I2) * DA30(I2,I1)
         DB30(1,I2+1,I1) = DA20(I1,I2+1) * DA30(I2+1,I1)
         DB30(1,I2+2,I1) = DA20(I1,I2+2) * DA30(I2+2,I1)
         DB30(1,I2+3,I1) = DA20(I1,I2+3) * DA30(I2+3,I1)
         DA10(I2+2,1) = DD9
         DA10(I2+1,1) = DD8
         DA10(I2,1) = DD7
        END DO
        DO I2=II14,20,1
         DA10(I2,1) = DA10(I1,2) - DB30(1,1,I2)
         DB30(1,I2,I1) = DA20(I1,I2) * DA30(I2,I1)
        END DO
       END DO

       DO I1=15,2,-1
        II17 = (21 - I1) / 4
        II16 = I1 + II17 * 4
        DO I2=I1,17,4
         DA20(I1,I2-1) = DB10(I1,I1,I2)
         DA20(I1,I2) = DB10(I1,I1,I2+1)
         DA20(I1,I2+1) = DB10(I1,I1,I2+2)
         DA20(I1,I2+2) = DB10(I1,I1,I2+3)
        END DO
        DO I2=II16,20,1
         DA20(I1,I2-1) = DB10(I1,I1,I2)
        END DO
       END DO

       DO J1=10,1,-1
        II19 = (21 - J1) / 4
        II18 = J1 + II19 * 4
        DO J2=J1,17,4
         DB10(J2,2,1) = DB30(J2,10,2) - DA10(J1,J2)
         DB10(J2+1,2,1) = DB30(J2+1,10,2) - DA10(J1,J2+1)
         DB10(J2+2,2,1) = DB30(J2+2,10,2) - DA10(J1,J2+2)
         DB10(J2+3,2,1) = DB30(J2+3,10,2) - DA10(J1,J2+3)
        END DO
        DO J2=II18,20,1
         DB10(J2,2,1) = DB30(J2,10,2) - DA10(J1,J2)
        END DO
       END DO

       DO J1=10,1,-1
        II4 = 21 - J1
        IF (II4 .GT. 0) THEN
         DD4 = DB10(J1,1,2)
         II21 = (21 - J1) / 4
         II20 = J1 + II21 * 4
         DO J2=J1,17,4
          DA20(J2,10) = DA30(J2,J1) + DD4
          DA20(J2+1,10) = DA30(J2+1,J1) + DD4
          DA20(J2+2,10) = DA30(J2+2,J1) + DD4
          DA20(J2+3,10) = DA30(J2+3,J1) + DD4
         END DO
         DO J2=II20,20,1
          DA20(J2,10) = DA30(J2,J1) + DD4
         END DO
        END IF
        II5 = 21 - J1
        IF (II5 .GT. 0) THEN
         DD5 = DA20(J1,10)
         DD6 = DB30(J1,1,1)
         II23 = (21 - J1) / 4
         II22 = J1 + II23 * 4
         DO J2=J1,17,4
          DD6 = DD6 + DD5
          DD6 = DD6 + DD5
          DD6 = DD6 + DD5
          DD6 = DD6 + DD5
         END DO
         DO J2=II22,20,1
          DD6 = DD6 + DD5
         END DO
         DB30(J1,1,1) = DD6
        END IF
       END DO

       WRITE (6, *) ' (DA10) ', ((DA10(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DA20) ', ((DA20(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DA30) ', ((DA30(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DB10) ', (((DB10(K1,K2,K3), K1=1,10), K2=1,10), 
     X   K3=1,5)
       WRITE (6, *) ' (DB20) ', (((DB20(K1,K2,K3), K1=1,10), K2=1,5), K3
     X   =1,5)
       WRITE (6, *) ' (DB30) ', (((DB30(K1,K2,K3), K1=1,10), K2=1,5), K3
     X   =1,5)
       STOP 
      END
