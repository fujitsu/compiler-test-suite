      PROGRAM MAIN
       REAL*8 DA10(40), DA20(40), DA30(40), DA40(40), DA50(40)
       REAL*8 DB10(40,40), DB20(40,40), DB30(40,40), DB40(40,40)
       INTEGER*4 ID10(-20:20), ID11(-20:20), ID12(-20:20), ID20(-20:20,
     X   -20:20), ID21(-20:20,-20:20), ID22(-20:20,-20:20), ID30(-20:20,
     X   -20:20,-20:20), ID70(-1:1,-1:1,-1:1,-1:1,-1:1,-1:1,-1:1)
       COMPLEX*16 CD10(40), CD20(40), CD30(40)
       LOGICAL*4 LD10(-20:20), LD20(-20:20), LD30(40)
       INTEGER IT7, IT6, IT5, IT4, IT3, IT2, IT1
       PARAMETER (IT7 = 40, IT6 = 20, IT5 = 5, IT4 = 4, IT3 = 3)
       PARAMETER (IT2 = 2, IT1 = 1)
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 2D0)
       DATA DA10/40*1.0D0/ 
       DATA DA20/40*2.0D0/ 
       DATA DA30/40*3.0D0/ 
       DATA DA40/40*4.0D0/ 
       DATA DA50/40*5.0D0/ 
       DATA DB10/1600*6.0D0/ 
       DATA DB20/1600*7.0D0/ 
       DATA DB30/1600*8.0D0/ 
       DATA DB40/1600*10.0D0/ 
       DATA ID10/41*1/ 
       DATA ID11/41*2/ 
       DATA ID12/41*3/ 
       DATA LD10/41*.FALSE./ 
       DATA LD20/41*.FALSE./ 
       DATA LD30/40*.FALSE./ 
       INTEGER ID702, ID701, II7, II6, II5, II4, II3, II2, II1, K1, J1, 
     X   I8
       DOUBLE PRECISION DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, 
     X   DD2

       DO I8=-20,17,4
        ID10(I8) = I8
        ID10(I8+1) = I8 + 1
        ID10(I8+2) = I8 + 2
        ID10(I8+3) = I8 + 3
        ID11(I8) = I8 + 20
        ID11(I8+1) = I8 + 21
        ID11(I8+2) = I8 + 22
        ID11(I8+3) = I8 + 23
        ID12(I8) = 21 - I8
        ID12(I8+1) = 20 - I8
        ID12(I8+2) = 19 - I8
        ID12(I8+3) = 18 - I8
       END DO
       ID10(20) = 20
       ID11(20) = 40
       ID12(20) = 1
C$OMP PARALLEL SHARED (ID20,ID22,ID21,ID30,ID70) PRIVATE (J1,I8,K1,I7,I5
C$OMP& ,I4,I3,I2)
C$OMP DO 
       DO J1=-20,20,1
        DO I8=-20,17,4
         ID20(I8,J1) = I8 + J1
         ID20(I8+1,J1) = I8 + J1 + 1
         ID20(I8+2,J1) = I8 + J1 + 2
         ID20(I8+3,J1) = I8 + J1 + 3
         ID22(I8,J1) = I8 - J1
         ID22(I8+1,J1) = I8 - J1 + 1
         ID22(I8+2,J1) = I8 - J1 + 2
         ID22(I8+3,J1) = I8 - J1 + 3
        END DO
        ID20(20,J1) = J1 + 20
        ID22(20,J1) = 20 - J1
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO I8=-20,20
        DO J1=-20,17,4
         ID21(J1,I8) = J1 - I8
         ID21(J1+1,I8) = J1 - I8 + 1
         ID21(J1+2,I8) = J1 - I8 + 2
         ID21(J1+3,I8) = J1 - I8 + 3
        END DO
        ID21(20,I8) = 20 - I8
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I8=20,-20,-1
        DO J1=-20,17,4
         DO K1=20,-17,-4
          ID30(K1,J1,I8) = K1 + I8 + J1
          ID30(K1-1,J1,I8) = K1 + I8 + J1 - 1
          ID30(K1-2,J1,I8) = K1 + I8 + J1 - 2
          ID30(K1-3,J1,I8) = K1 + I8 + J1 - 3
          ID30(K1,J1+1,I8) = K1 + I8 + J1 + 1
          ID30(K1-1,J1+1,I8) = K1 + I8 + J1
          ID30(K1-2,J1+1,I8) = K1 + I8 + J1 - 1
          ID30(K1-3,J1+1,I8) = K1 + I8 + J1 - 2
          ID30(K1,J1+2,I8) = K1 + I8 + J1 + 2
          ID30(K1-1,J1+2,I8) = K1 + I8 + J1 + 1
          ID30(K1-2,J1+2,I8) = K1 + I8 + J1
          ID30(K1-3,J1+2,I8) = K1 + I8 + J1 - 1
          ID30(K1,J1+3,I8) = K1 + I8 + J1 + 3
          ID30(K1-1,J1+3,I8) = K1 + I8 + J1 + 2
          ID30(K1-2,J1+3,I8) = K1 + I8 + J1 + 1
          ID30(K1-3,J1+3,I8) = K1 + I8 + J1
         END DO
         ID30(-20,J1,I8) = I8 + J1 - 20
         ID30(-20,J1+1,I8) = I8 + J1 - 19
         ID30(-20,J1+2,I8) = I8 + J1 - 18
         ID30(-20,J1+3,I8) = I8 + J1 - 17
        END DO
        DO K1=20,-17,-4
         ID30(K1,20,I8) = K1 + I8 + 20
         ID30(K1-1,20,I8) = K1 + I8 + 19
         ID30(K1-2,20,I8) = K1 + I8 + 18
         ID30(K1-3,20,I8) = K1 + I8 + 17
        END DO
        ID30(-20,20,I8) = I8
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO I7=-1,1
        DO I5=-1,1
         DO I4=-1,1
          DO I3=-1,1
           DO I2=-1,1
            ID70(-1,I2,I3,I4,I5,-1,I7) = I2 - I3 + I4 + I5
            ID70(0,I2,I3,I4,I5,-1,I7) = I2 - I3 + I4 + I5 + 1
            ID70(1,I2,I3,I4,I5,-1,I7) = I2 - I3 + I4 + I5 + 2
            ID70(-1,I2,I3,I4,I5,0,I7) = I2 - I3 + I4 + I5 - 1
            ID70(0,I2,I3,I4,I5,0,I7) = I2 - I3 + I4 + I5
            ID70(1,I2,I3,I4,I5,0,I7) = I2 - I3 + I4 + I5 + 1
            ID70(-1,I2,I3,I4,I5,1,I7) = I2 - I3 + I4 + I5 - 2
            ID70(0,I2,I3,I4,I5,1,I7) = I2 - I3 + I4 + I5 - 1
            ID70(1,I2,I3,I4,I5,1,I7) = I2 - I3 + I4 + I5
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       DO I8=2,17,4
        DA10(I8) = DA10(I8*2) + DA20(I8+4) + DA30(I8+20) - DA40(I8+5)
        DA10(I8+1) = DA10(I8*2+2) + DA20(I8+5) + DA30(I8+21) - DA40(I8+6
     X    )
        DA10(I8+2) = DA10(I8*2+4) + DA20(I8+6) + DA30(I8+22) - DA40(I8+7
     X    )
        DA10(I8+3) = DA10(I8*2+6) + DA20(I8+7) + DA30(I8+23) - DA40(I8+8
     X    )
       END DO
       DO I8=18,20,1
        DA10(I8) = DA10(I8*2) + DA20(I8+4) + DA30(I8+20) - DA40(I8+5)
       END DO

       DO I8=2,17,4
        DD5 = DB20(I8,I8+1) * DB30(I8+1,I8*2)
        DD6 = DB20(I8+1,I8+2) * DB30(I8+2,I8*2+2)
        DD7 = DB20(I8+2,I8+3) * DB30(I8+3,I8*2+4)
        DD3 = DB20(I8+3,I8+4) * DB30(I8+4,I8*2+6)
        DB10(I8,1) = DD5 - DB40(I8,20)
        DB10(I8+1,1) = DD6 - DB40(I8+1,20)
        DB10(I8+2,1) = DD7 - DB40(I8+2,20)
        DB10(I8+3,1) = DD3 - DB40(I8+3,20)
        II3 = ID10(I8-21) * ID11(I8-22)
        II4 = ID10(I8-20) * ID11(I8-21)
        II5 = ID10(I8-19) * ID11(I8-20)
        II6 = ID10(I8-18) * ID11(I8-19)
        ID21(21-I8,21-I8) = ID22(20,22-I8) + ID20(22-I8,I8-22) + ID30(I8
     X    -22,22-I8,2) * (-2)
        ID21(20-I8,20-I8) = ID22(20,21-I8) + ID20(21-I8,I8-21) + ID30(I8
     X    -21,21-I8,2) * (-2)
        ID21(19-I8,19-I8) = ID22(20,20-I8) + ID20(20-I8,I8-20) + ID30(I8
     X    -20,20-I8,2) * (-2)
        ID21(18-I8,18-I8) = ID22(20,19-I8) + ID20(19-I8,I8-19) + ID30(I8
     X    -19,19-I8,2) * (-2)
        ID30(I8-19,18-I8,5) = II6
        ID30(I8-20,19-I8,5) = II5
        ID30(I8-21,20-I8,5) = II4
        ID30(I8-22,21-I8,5) = II3
       END DO
       DO I8=18,20,1
        DD3 = DB20(I8,I8+1) * DB30(I8+1,I8*2)
        DB10(I8,1) = DD3 - DB40(I8,20)
        II7 = ID10(I8-21) * ID11(I8-22)
        ID21(21-I8,21-I8) = ID22(20,22-I8) + ID20(22-I8,I8-22) + ID30(I8
     X    -22,22-I8,2) * (-2)
        ID30(I8-22,21-I8,5) = II7
       END DO

       II1 = ID70(1,1,-1,0,0,0,-1)
       DO I8=2,17,4
        DA10(1) = DA10(1) + DA50(I8)
        ID10(I8-22) = ID11(I8-20) - ID30(I8-22,22-I8,5)
        ID20(21-I8,I8-22) = ID21(22-I8,22-I8) + ID22(22-I8,20)
        DA30(I8) = DA20(I8+4) - DA40(I8+4) + DA10(I8+20)
        II1 = II1 + ID21(22-I8,22-I8)
        DB30(I8,I8+2) = DB10(I8,I8) - DB40(I8,I8) + DB20(I8,I8)
        DA10(1) = DA10(1) + DA50(I8+1)
        ID10(I8-21) = ID11(I8-19) - ID30(I8-21,21-I8,5)
        ID20(20-I8,I8-21) = ID21(21-I8,21-I8) + ID22(21-I8,20)
        DA30(I8+1) = DA20(I8+5) - DA40(I8+5) + DA10(I8+21)
        II1 = II1 + ID21(21-I8,21-I8)
        DB30(I8+1,I8+3) = DB10(I8+1,I8+1) - DB40(I8+1,I8+1) + DB20(I8+1,
     X    I8+1)
        DA10(1) = DA10(1) + DA50(I8+2)
        ID10(I8-20) = ID11(I8-18) - ID30(I8-20,20-I8,5)
        ID20(19-I8,I8-20) = ID21(20-I8,20-I8) + ID22(20-I8,20)
        DA30(I8+2) = DA20(I8+6) - DA40(I8+6) + DA10(I8+22)
        II1 = II1 + ID21(20-I8,20-I8)
        DB30(I8+2,I8+4) = DB10(I8+2,I8+2) - DB40(I8+2,I8+2) + DB20(I8+2,
     X    I8+2)
        DA10(1) = DA10(1) + DA50(I8+3)
        ID10(I8-19) = ID11(I8-17) - ID30(I8-19,19-I8,5)
        ID20(18-I8,I8-19) = ID21(19-I8,19-I8) + ID22(19-I8,20)
        DA30(I8+3) = DA20(I8+7) - DA40(I8+7) + DA10(I8+23)
        II1 = II1 + ID21(19-I8,19-I8)
        DB30(I8+3,I8+5) = DB10(I8+3,I8+3) - DB40(I8+3,I8+3) + DB20(I8+3,
     X    I8+3)
       END DO
       DO I8=18,20,1
        DA10(1) = DA10(1) + DA50(I8)
        ID10(I8-22) = ID11(I8-20) - ID30(I8-22,22-I8,5)
        ID20(21-I8,I8-22) = ID21(22-I8,22-I8) + ID22(22-I8,20)
        DA30(I8) = DA20(I8+4) - DA40(I8+4) + DA10(I8+20)
        II1 = II1 + ID21(22-I8,22-I8)
        DB30(I8,I8+2) = DB10(I8,I8) - DB40(I8,I8) + DB20(I8,I8)
       END DO
       ID70(1,1,-1,0,0,0,-1) = II1
       I = 21

       WRITE (6, 99) (DA10(K), K=1,20)
       WRITE (6, 99) (DA30(K), K=1,20)
       WRITE (6, 99) (DB10(K,1), K=1,20)
       WRITE (6, 99) (DB30(K,K+2), K=2,20)
       WRITE (6, 999) (ID10(K), K=-20,1)
       WRITE (6, 999) ((ID20(I,J), I=0,20), J=-20,0)
       WRITE (6, 999) ((ID21(I,J), I=1,20), J=1,20)
       WRITE (6, 999) ((ID30(I,J,5), I=-20,-1), J=1,20)
       WRITE (6, *) ' ID70 = ', ID70(1,1,1,0,0,0,-1)
   99  FORMAT(8F10.6)
  999  FORMAT(16I5)

       DO I8=2,20,2
        DA20(I8) = DA20(I8+20) + DA30(I8+4) + DA40(I8+6)
        IF (DA20(I8) .GE. DA10(I8)) THEN
         LD30(I8) = .TRUE.
         GO TO 32
        END IF
        DA10(I8+2) = DA20(I8+2) + DA30(I8+2) - DA40(I8+2) + DA50(I8+2) *
     X     DD1
   32   CONTINUE
       END DO

       DD2 = DA50(20)
       DO I8=2,12,10
        DD8 = DA10(I8) - DA10(I8+1)
        DD9 = DA10(I8+2) - DA10(I8+3)
        DD10 = DA10(I8+4) - DA10(I8+5)
        DD11 = DA10(I8+6) - DA10(I8+7)
        DD4 = DA10(I8+8) - DA10(I8+9)
        DA30(I8) = DD8 + DD2
        DA30(I8+2) = DD9 + DD2
        DA30(I8+4) = DD10 + DD2
        DA30(I8+6) = DD11 + DD2
        DA30(I8+8) = DD4 + DD2
        DD8 = DB10(I8,I8*2) + DB20(I8*2,I8)
        DD9 = DB10(I8+2,I8*2+4) + DB20(I8*2+4,I8+2)
        DD10 = DB10(I8+4,I8*2+8) + DB20(I8*2+8,I8+4)
        DD11 = DB10(I8+6,I8*2+12) + DB20(I8*2+12,I8+6)
        DD4 = DB10(I8+8,I8*2+16) + DB20(I8*2+16,I8+8)
        DA40(I8) = DD8 + DB30(I8,I8)
        DA40(I8+2) = DD9 + DB30(I8+2,I8+2)
        DA40(I8+4) = DD10 + DB30(I8+4,I8+4)
        DA40(I8+6) = DD11 + DB30(I8+6,I8+6)
        DA40(I8+8) = DD4 + DB30(I8+8,I8+8)
       END DO
       WRITE (6, 99) (DA10(K), K=4,22)
       WRITE (6, 99) (DA20(K), K=2,20)
       WRITE (6, 99) (DA30(K), K=2,20)
       WRITE (6, 99) (DA40(K), K=2,20)
       WRITE (6, *) (LD30(K), K=2,20)

       DO J1=1,40
        J = J1
        IF (LD30(J1) .EQV. .TRUE.) GO TO 26
       END DO
       J = 41
   26  WRITE (6, *) J

       DO I8=-20,20,1
        IF (ID10(I8) .GE. ID11(I8) .AND. ID10(I8) .GE. ID12(I8)) THEN
         LD10(I8) = .TRUE.
        ELSE
         IF (ID11(I8) .GT. ID10(I8) .AND. ID11(I8) .GT. ID12(I8)) THEN
          LD20(I8) = .TRUE.
         ELSE
          LD10(I8) = .TRUE.
          LD20(I8) = .TRUE.
         END IF
        END IF
       END DO

       ICNT1 = 0
       ICNT2 = 0
       ICNT3 = 0
       DO I8=-20,20
        IF (LD10(I8) .AND. LD20(I8)) THEN
         ICNT1 = ICNT1 + 1
         LD10(I8) = .FALSE.
         LD20(I8) = LD10(I8)
        END IF
        IF (LD10(I8)) THEN
         ICNT2 = ICNT2 + 1
        END IF
        IF (LD20(I8)) THEN
         ICNT3 = ICNT3 + 1
        END IF
       END DO
       WRITE (6, *) LD10
       WRITE (6, *) LD20
       WRITE (6, *) ' ICNT1 = ', ICNT1, ' ICNT2 = ', ICNT2, ' ICNT3 = '
     X   , ICNT3
       II2 = ID70(1,1,1,1,1,1,1)

       II2 = II2 + ID12(1) + ID11(1) + ID10(1)
       II2 = II2 + ID12(0) + ID11(0) + ID10(0)
       II2 = II2 + ID12(-1) + ID11(-1) + ID10(-1)
       ID70(1,1,1,1,1,1,1) = II2
C$OMP PARALLEL SHARED (ID20,ID21,ID22,ID70) PRIVATE (I2,I1,ID701,ID702)
       ID701 = 0
       ID702 = 0
C$OMP DO 
       DO I2=-20,20
        DO I1=20,-17,-4
         ID701 = ID701 - ID22(I1,I2) + ID21(I2,I1) + ID20(I1,I2)
         ID701 = ID701 - ID22(I1-1,I2) + ID21(I2,I1-1) + ID20(I1-1,I2)
         ID701 = ID701 - ID22(I1-2,I2) + ID21(I2,I1-2) + ID20(I1-2,I2)
         ID701 = ID701 - ID22(I1-3,I2) + ID21(I2,I1-3) + ID20(I1-3,I2)
        END DO
        ID702 = ID702 - ID22(-20,I2) + ID21(I2,-20) + ID20(-20,I2)
       END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II8)
       ID70(-1,-1,-1,-1,-1,-1,-1) = ID70(-1,-1,-1,-1,-1,-1,-1) + ID701
       ID70(-1,-1,-1,-1,-1,-1,-1) = ID70(-1,-1,-1,-1,-1,-1,-1) + ID702
C$OMP END CRITICAL (II8)
C$OMP END PARALLEL 
       ID70(0,1,1,1,1,1,1) = ID70(0,1,1,1,1,1,1) + ID30(1,2,0)
       ID70(0,0,0,0,0,0,0) = ID70(0,0,0,0,0,0,0) + ID30(0,1,-1)
       ID70(0,-1,-1,-1,-1,-1,-1) = ID70(0,-1,-1,-1,-1,-1,-1) + ID30(-1,0
     X   ,-2)
       WRITE (6, *) ID70(1,1,1,1,1,1,1)
       WRITE (6, *) ID70(-1,-1,-1,-1,-1,-1,-1)
       WRITE (6, *) (ID70(0,K,K,K,K,K,K), K=-1,1)
       STOP 
      END
