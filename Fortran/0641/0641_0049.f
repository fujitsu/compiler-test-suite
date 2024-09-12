      PROGRAM MAIN
       IMPLICIT REAL*8 (D)
       DIMENSION DA10(20,20), DA20(20,20), DA30(20,20), DA40(20,20), 
     X   DB10(10,10,10), DB20(10,10,10)
       INTEGER IT5, IT4, IT3, IT2, IT1
       PARAMETER (IT5 = 15, IT4 = 10, IT3 = 3, IT2 = 2, IT1 = 1)

       DATA DA10/400*2.D0/ 
       DATA DA20/400*3.D0/ 
       DATA DA30/400*5.D0/ 
       DATA DA40/200*10.D0,200*-5.D0/ 
       DATA DB10/1000*-1.D0/ 
       DATA DB20/1000*-2.D0/ 
       INTEGER K1
       DOUBLE PRECISION DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, 
     X   DD2, DD1
       DO J=2,15

        DO I=1,6,5
         DA30(I,J) = DA10(I+1,J) - DA20(J+1,I+5)
         DA30(I+1,J) = DA10(I+2,J) - DA20(J+1,I+6)
         DA30(I+2,J) = DA10(I+3,J) - DA20(J+1,I+7)
         DA30(I+3,J) = DA10(I+4,J) - DA20(J+1,I+8)
         DA30(I+4,J) = DA10(I+5,J) - DA20(J+1,I+9)
        END DO

        DO I=1,6,5
         DA10(I,J) = DA30(I,J+3) * DA40(J+1,I+3)
         DA10(I+1,J) = DA30(I+1,J+3) * DA40(J+1,I+4)
         DA10(I+2,J) = DA30(I+2,J+3) * DA40(J+1,I+5)
         DA10(I+3,J) = DA30(I+3,J+3) * DA40(J+1,I+6)
         DA10(I+4,J) = DA30(I+4,J+3) * DA40(J+1,I+7)
        END DO
       END DO

       DO I=1,6,5
        DO J=2,12,4
         DA40(J,I+2) = DA20(I,J) * 2D0
         DA40(J+1,I+2) = DA20(I,J+1) * 2D0
         DA40(J+2,I+2) = DA20(I,J+2) * 2D0
         DA40(J+3,I+2) = DA20(I,J+3) * 2D0
         DA40(J,I+3) = DA20(I+1,J) * 2D0
         DA40(J+1,I+3) = DA20(I+1,J+1) * 2D0
         DA40(J+2,I+3) = DA20(I+1,J+2) * 2D0
         DA40(J+3,I+3) = DA20(I+1,J+3) * 2D0
         DA40(J,I+4) = DA20(I+2,J) * 2D0
         DA40(J+1,I+4) = DA20(I+2,J+1) * 2D0
         DA40(J+2,I+4) = DA20(I+2,J+2) * 2D0
         DA40(J+3,I+4) = DA20(I+2,J+3) * 2D0
         DA40(J,I+5) = DA20(I+3,J) * 2D0
         DA40(J+1,I+5) = DA20(I+3,J+1) * 2D0
         DA40(J+2,I+5) = DA20(I+3,J+2) * 2D0
         DA40(J+3,I+5) = DA20(I+3,J+3) * 2D0
         DA40(J,I+6) = DA20(I+4,J) * 2D0
         DA40(J+1,I+6) = DA20(I+4,J+1) * 2D0
         DA40(J+2,I+6) = DA20(I+4,J+2) * 2D0
         DA40(J+3,I+6) = DA20(I+4,J+3) * 2D0
        END DO
        DO J=14,15,1
         DA40(J,I+2) = DA20(I,J) * 2D0
         DA40(J,I+3) = DA20(I+1,J) * 2D0
         DA40(J,I+4) = DA20(I+2,J) * 2D0
         DA40(J,I+5) = DA20(I+3,J) * 2D0
         DA40(J,I+6) = DA20(I+4,J) * 2D0
        END DO
       END DO

       DO J=2,3
        DO I=2,8,3
         DD2 = DB10(I-1,J+2,3) + DA10(I-1,J+1)
         DD3 = DB10(I,J+2,3) + DA10(I,J+1)
         DD4 = DB10(I+1,J+2,3) + DA10(I+1,J+1)
         DD5 = DB10(I-1,J+2,4) + DA10(I-1,J+2)
         DD6 = DB10(I,J+2,4) + DA10(I,J+2)
         DB10(I+2,J,2) = DB10(I+1,J+2,4) + DA10(I+1,J+2)
         DD7 = DB20(I-1,J,3) + DA20(I+1,I+J)
         DD8 = DB20(I,J,3) + DA20(I+2,I+J+1)
         DD9 = DB20(I+1,J,3) + DA20(I+3,I+J+2)
         DD10 = DB20(I-1,J-1,4) + DA20(I+2,I+J)
         DD11 = DB20(I,J-1,4) + DA20(I+3,I+J+1)
         DB20(I+2,J,2) = DB20(I+1,J-1,4) + DA20(I+4,I+J+2)
         DB20(I+1,J,2) = DD11
         DB20(I,J,2) = DD10
         DB20(I+2,J,1) = DD9
         DB20(I+1,J,1) = DD8
         DB20(I,J,1) = DD7
         DB10(I+1,J,2) = DD6
         DB10(I,J,2) = DD5
         DB10(I+2,J,1) = DD4
         DB10(I+1,J,1) = DD3
         DB10(I,J,1) = DD2
        END DO
       END DO

       DO I=3,2,-1
        N2 = I
        DO J=2,10
         DA20(J+10,I) = DA30(I,N2+1) - DA40(J,I+1)
         IF (DA20(J,I) .GT. 10D0) THEN
          DA10(J+1,I+3) = DA20(J,I) - DA10(J,I)
          N2 = N2 + 1
         END IF
         DA30(I,N2+2) = DA20(J,I+2) * 2D0 + DA40(J+1,I+3) * (-2D0)
        END DO
        DO J=2,8,3
         DA40(J,I+2) = DA10(J,I+10) * 2D0
         DA40(J+1,I+2) = DA10(J+1,I+10) * 2D0
         DA40(J+2,I+2) = DA10(J+2,I+10) * 2D0
        END DO
       END DO

       DO I=3,10
        DB20(1,5,I-2) = DA10(2,I-1)
        DB20(2,5,I-2) = DA10(3,I-1)
        DB20(3,5,I-2) = DA10(4,I-1)
        DB20(4,5,I-2) = DA10(5,I-1)
        DB20(5,5,I-2) = DA10(6,I-1)
        DB20(6,5,I-2) = DA10(7,I-1)
        DB20(7,5,I-2) = DA10(8,I-1)
        DB20(8,5,I-2) = DA10(9,I-1)
        DB20(1,6,I-2) = DA10(2,I-1)
        DB20(2,6,I-2) = DA10(3,I-1)
        DB20(3,6,I-2) = DA10(4,I-1)
        DB20(4,6,I-2) = DA10(5,I-1)
        DB20(5,6,I-2) = DA10(6,I-1)
        DB20(6,6,I-2) = DA10(7,I-1)
        DB20(7,6,I-2) = DA10(8,I-1)
        DB20(8,6,I-2) = DA10(9,I-1)
        DB20(1,7,I-2) = DA10(2,I-1)
        DB20(2,7,I-2) = DA10(3,I-1)
        DB20(3,7,I-2) = DA10(4,I-1)
        DB20(4,7,I-2) = DA10(5,I-1)
        DB20(5,7,I-2) = DA10(6,I-1)
        DB20(6,7,I-2) = DA10(7,I-1)
        DB20(7,7,I-2) = DA10(8,I-1)
        DB20(8,7,I-2) = DA10(9,I-1)
        DB20(1,8,I-2) = DA10(2,I-1)
        DB20(2,8,I-2) = DA10(3,I-1)
        DB20(3,8,I-2) = DA10(4,I-1)
        DB20(4,8,I-2) = DA10(5,I-1)
        DB20(5,8,I-2) = DA10(6,I-1)
        DB20(6,8,I-2) = DA10(7,I-1)
        DB20(7,8,I-2) = DA10(8,I-1)
        DB20(8,8,I-2) = DA10(9,I-1)
        DO J=9,10,1
         DB20(1,J,I-2) = DA10(2,I-1)
         DB20(2,J,I-2) = DA10(3,I-1)
         DB20(3,J,I-2) = DA10(4,I-1)
         DB20(4,J,I-2) = DA10(5,I-1)
         DB20(5,J,I-2) = DA10(6,I-1)
         DB20(6,J,I-2) = DA10(7,I-1)
         DB20(7,J,I-2) = DA10(8,I-1)
         DB20(8,J,I-2) = DA10(9,I-1)
        END DO
        DO J=5,10
         DY = 0D0
         DD1 = DA20(I,J)
         DO K1=2,9
          DX = DMAX1 (DB10(I,J,K1), DD1)
          IF (DX .GE. 10D0) THEN
           DB20(I-1,J-1,K1) = DX
          END IF
          DY = DY + DMIN1 (DX, DB10(J-1,1,K1-1)) * 2D0
         END DO
         DB10(I,J,10) = DY
        END DO
       END DO
       DO K1=2,6,4
        DO J=5,10
         DB10(3,J-1,K1+1) = DB20(2,1,K1-1) + DA30(3,K1)
         DB10(4,J-1,K1+1) = DB20(3,1,K1-1) + DA30(4,K1)
         DB10(5,J-1,K1+1) = DB20(4,1,K1-1) + DA30(5,K1)
         DB10(6,J-1,K1+1) = DB20(5,1,K1-1) + DA30(6,K1)
         DB10(7,J-1,K1+1) = DB20(6,1,K1-1) + DA30(7,K1)
         DB10(8,J-1,K1+1) = DB20(7,1,K1-1) + DA30(8,K1)
         DB10(9,J-1,K1+1) = DB20(8,1,K1-1) + DA30(9,K1)
         DB10(10,J-1,K1+1) = DB20(9,1,K1-1) + DA30(10,K1)
         DB10(3,J-1,K1+2) = DB20(2,1,K1) + DA30(3,K1+1)
         DB10(4,J-1,K1+2) = DB20(3,1,K1) + DA30(4,K1+1)
         DB10(5,J-1,K1+2) = DB20(4,1,K1) + DA30(5,K1+1)
         DB10(6,J-1,K1+2) = DB20(5,1,K1) + DA30(6,K1+1)
         DB10(7,J-1,K1+2) = DB20(6,1,K1) + DA30(7,K1+1)
         DB10(8,J-1,K1+2) = DB20(7,1,K1) + DA30(8,K1+1)
         DB10(9,J-1,K1+2) = DB20(8,1,K1) + DA30(9,K1+1)
         DB10(10,J-1,K1+2) = DB20(9,1,K1) + DA30(10,K1+1)
         DB10(3,J-1,K1+3) = DB20(2,1,K1+1) + DA30(3,K1+2)
         DB10(4,J-1,K1+3) = DB20(3,1,K1+1) + DA30(4,K1+2)
         DB10(5,J-1,K1+3) = DB20(4,1,K1+1) + DA30(5,K1+2)
         DB10(6,J-1,K1+3) = DB20(5,1,K1+1) + DA30(6,K1+2)
         DB10(7,J-1,K1+3) = DB20(6,1,K1+1) + DA30(7,K1+2)
         DB10(8,J-1,K1+3) = DB20(7,1,K1+1) + DA30(8,K1+2)
         DB10(9,J-1,K1+3) = DB20(8,1,K1+1) + DA30(9,K1+2)
         DB10(10,J-1,K1+3) = DB20(9,1,K1+1) + DA30(10,K1+2)
         DB10(3,J-1,K1+4) = DB20(2,1,K1+2) + DA30(3,K1+3)
         DB10(4,J-1,K1+4) = DB20(3,1,K1+2) + DA30(4,K1+3)
         DB10(5,J-1,K1+4) = DB20(4,1,K1+2) + DA30(5,K1+3)
         DB10(6,J-1,K1+4) = DB20(5,1,K1+2) + DA30(6,K1+3)
         DB10(7,J-1,K1+4) = DB20(6,1,K1+2) + DA30(7,K1+3)
         DB10(8,J-1,K1+4) = DB20(7,1,K1+2) + DA30(8,K1+3)
         DB10(9,J-1,K1+4) = DB20(8,1,K1+2) + DA30(9,K1+3)
         DB10(10,J-1,K1+4) = DB20(9,1,K1+2) + DA30(10,K1+3)
        END DO
       END DO

       WRITE (6, *) ' (DA10) ', DA10
       WRITE (6, *) ' (DA20) ', DA20
       WRITE (6, *) ' (DA30) ', DA30
       WRITE (6, *) ' (DA40) ', DA40
       WRITE (6, *) ' (DB10) ', DB10
       WRITE (6, *) ' (DB20) ', DB20
       STOP 
      END
