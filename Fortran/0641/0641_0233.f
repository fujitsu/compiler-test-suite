      PROGRAM MAIN
       IMPLICIT REAL*8 (A-D), LOGICAL*4 (L)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DB10(20,20,20), 
     X   DB20(20,20,20), DB30(20,20,20)
       PARAMETER (JC2 = 2)
       INTEGER N5, N4, N3, N2, N1
       PARAMETER (N5 = 20, N4 = 15, N3 = 10, N2 = 2, N1 = 1)
       DATA DA10/400*1.0D0/ 
       DATA DA20/400*2.D0/ 
       DATA DA30/400*3.D0/ 
       DATA DB10/8000*4.D0/ 
       DATA DB20/8000*5.D0/ 
       DATA DB30/8000*3.D0/ 
       DOUBLE PRECISION DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1

       DD1 = DA10(15,2)
       DO I=13,5,-1
        DO J=2,12,4
         DA30(15,J) = DD1 - DB10(I,J,1)
         DA30(15,J+1) = DD1 - DB10(I,J+1,1)
         DA30(15,J+2) = DD1 - DB10(I,J+2,1)
         DA30(15,J+3) = DD1 - DB10(I,J+3,1)
        END DO
        DO J=14,15,1
         DA30(15,J) = DD1 - DB10(I,J,1)
        END DO

        DO J=2,12,4
         DA20(I,J) = DA10(15,J+1) + DA30(15,J-1)
         DA20(I,J+1) = DA10(15,J+2) + DA30(15,J)
         DA20(I,J+2) = DA10(15,J+3) + DA30(15,J+1)
         DA20(I,J+3) = DA10(15,J+4) + DA30(15,J+2)
        END DO
        DO J=14,15,1
         DA20(I,J) = DA10(15,J+1) + DA30(15,J-1)
        END DO
       END DO

       DO J=2,12,4


        DO I=13,7,-3
         DA10(I,J) = DA20(I,J-1) * DA30(I,15)
         DA10(I-1,J) = DA20(I-1,J-1) * DA30(I-1,15)
         DA10(I-2,J) = DA20(I-2,J-1) * DA30(I-2,15)
         DA10(I,J+1) = DA20(I,J) * DA30(I,15)
         DA10(I-1,J+1) = DA20(I-1,J) * DA30(I-1,15)
         DA10(I-2,J+1) = DA20(I-2,J) * DA30(I-2,15)
         DA10(I,J+2) = DA20(I,J+1) * DA30(I,15)
         DA10(I-1,J+2) = DA20(I-1,J+1) * DA30(I-1,15)
         DA10(I-2,J+2) = DA20(I-2,J+1) * DA30(I-2,15)
         DA10(I,J+3) = DA20(I,J+2) * DA30(I,15)
         DA10(I-1,J+3) = DA20(I-1,J+2) * DA30(I-1,15)
         DA10(I-2,J+3) = DA20(I-2,J+2) * DA30(I-2,15)
        END DO
       END DO
       DO J=14,15,1

        DO I=13,7,-3
         DA10(I,J) = DA20(I,J-1) * DA30(I,15)
         DA10(I-1,J) = DA20(I-1,J-1) * DA30(I-1,15)
         DA10(I-2,J) = DA20(I-2,J-1) * DA30(I-2,15)
        END DO
       END DO

       DO I1=15,2,-1
        DO I3=20,5,-4
         DD2 = DA10(I1,I3)
         DD3 = DA10(I1,I3-1)
         DD4 = DA10(I1,I3-2)
         DD5 = DA10(I1,I3-3)

         DO I2=2,8,3
          DB10(I1,I2,I3) = DB20(15,10,I3) * DD2
          DB10(I1,I2,I3-1) = DB20(15,10,I3-1) * DD3
          DB10(I1,I2,I3-2) = DB20(15,10,I3-2) * DD4
          DB10(I1,I2,I3-3) = DB20(15,10,I3-3) * DD5
          DB20(I1,I2,I3) = DB10(I1,I2,I3) + DB30(10,I2,I3-1)
          DB20(I1,I2,I3-1) = DB10(I1,I2,I3-1) + DB30(10,I2,I3-2)
          DB20(I1,I2,I3-2) = DB10(I1,I2,I3-2) + DB30(10,I2,I3-3)
          DB20(I1,I2,I3-3) = DB10(I1,I2,I3-3) + DB30(10,I2,I3-4)
          DB10(I1,I2+1,I3) = DB20(15,10,I3) * DD2
          DB10(I1,I2+1,I3-1) = DB20(15,10,I3-1) * DD3
          DB10(I1,I2+1,I3-2) = DB20(15,10,I3-2) * DD4
          DB10(I1,I2+1,I3-3) = DB20(15,10,I3-3) * DD5
          DB20(I1,I2+1,I3) = DB10(I1,I2+1,I3) + DB30(10,I2+1,I3-1)
          DB20(I1,I2+1,I3-1) = DB10(I1,I2+1,I3-1) + DB30(10,I2+1,I3-2)
          DB20(I1,I2+1,I3-2) = DB10(I1,I2+1,I3-2) + DB30(10,I2+1,I3-3)
          DB20(I1,I2+1,I3-3) = DB10(I1,I2+1,I3-3) + DB30(10,I2+1,I3-4)
          DB10(I1,I2+2,I3) = DB20(15,10,I3) * DD2
          DB10(I1,I2+2,I3-1) = DB20(15,10,I3-1) * DD3
          DB10(I1,I2+2,I3-2) = DB20(15,10,I3-2) * DD4
          DB10(I1,I2+2,I3-3) = DB20(15,10,I3-3) * DD5
          DB20(I1,I2+2,I3) = DB10(I1,I2+2,I3) + DB30(10,I2+2,I3-1)
          DB20(I1,I2+2,I3-1) = DB10(I1,I2+2,I3-1) + DB30(10,I2+2,I3-2)
          DB20(I1,I2+2,I3-2) = DB10(I1,I2+2,I3-2) + DB30(10,I2+2,I3-3)
          DB20(I1,I2+2,I3-3) = DB10(I1,I2+2,I3-3) + DB30(10,I2+2,I3-4)
         END DO
        END DO
        DO I3=4,2,-1
         DD6 = DA10(I1,I3)

         DO I2=2,8,3
          DB10(I1,I2,I3) = DB20(15,10,I3) * DD6
          DB20(I1,I2,I3) = DB10(I1,I2,I3) + DB30(10,I2,I3-1)
          DB10(I1,I2+1,I3) = DB20(15,10,I3) * DD6
          DB20(I1,I2+1,I3) = DB10(I1,I2+1,I3) + DB30(10,I2+1,I3-1)
          DB10(I1,I2+2,I3) = DB20(15,10,I3) * DD6
          DB20(I1,I2+2,I3) = DB10(I1,I2+2,I3) + DB30(10,I2+2,I3-1)
         END DO
        END DO
        DD7 = DB20(15,2,20)
        DO I3=20,5,-4

         DO I2=2,8,3
          DB30(I1,I2,I3) = DD7 + DB10(15,I2,I3)
          DB30(I1,I2+1,I3) = DD7 + DB10(15,I2+1,I3)
          DB30(I1,I2+2,I3) = DD7 + DB10(15,I2+2,I3)
          DB30(I1,I2,I3-1) = DD7 + DB10(15,I2,I3-1)
          DB30(I1,I2+1,I3-1) = DD7 + DB10(15,I2+1,I3-1)
          DB30(I1,I2+2,I3-1) = DD7 + DB10(15,I2+2,I3-1)
          DB30(I1,I2,I3-2) = DD7 + DB10(15,I2,I3-2)
          DB30(I1,I2+1,I3-2) = DD7 + DB10(15,I2+1,I3-2)
          DB30(I1,I2+2,I3-2) = DD7 + DB10(15,I2+2,I3-2)
          DB30(I1,I2,I3-3) = DD7 + DB10(15,I2,I3-3)
          DB30(I1,I2+1,I3-3) = DD7 + DB10(15,I2+1,I3-3)
          DB30(I1,I2+2,I3-3) = DD7 + DB10(15,I2+2,I3-3)
         END DO
        END DO
        DD8 = DB20(15,2,20)
        DO I3=4,2,-1
         DO I2=2,8,3
          DB30(I1,I2,I3) = DD8 + DB10(15,I2,I3)
          DB30(I1,I2+1,I3) = DD8 + DB10(15,I2+1,I3)
          DB30(I1,I2+2,I3) = DD8 + DB10(15,I2+2,I3)
         END DO
        END DO
       END DO

       WRITE (6, *) ' (DA10) ', ((DA10(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DA20) ', ((DA20(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DA30) ', ((DA30(K1,K2), K1=1,10), K2=1,10)
       WRITE (6, *) ' (DB10) ', (((DB10(K1,K2,K3), K1=1,10), K2=1,10), 
     X   K3=1,5)
       WRITE (6, *) ' (DB20) ', (((DB20(K1,K2,K3), K1=1,10), K2=1,10), 
     X   K3=1,5)
       WRITE (6, *) ' (DB30) ', (((DB30(K1,K2,K3), K1=1,10), K2=1,10), 
     X   K3=1,5)
       STOP 
      END
