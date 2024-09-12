      PROGRAM MAIN
       REAL*8 DA10(40), DA20(40), DA30(40), DA40(40), DB10(40,40), DB20(
     X   40,40), DB30(40,40), DC10(20,20,20), DC20(20,20,20), DC30(20,20
     X   ,20), DD10(8,8,8,8,8), DD20(8,8,8,8,8)
       LOGICAL*4 LD10(40), LD20(40,40), LD30(20,20,20)
       INTEGER IT5, IT4, IT3, IT2, IT1
       PARAMETER (IT5 = 10, IT4 = 4, IT3 = 3, IT2 = 2, IT1 = 1)
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 2D0)
       COMMON /COM/ DD20, RR1, DD10

       DATA DA10/40*1.0D0/ 
       DATA DA20/40*2.0D0/ 
       DATA DA30/40*3.0D0/ 
       DATA DA40/40*4.0D0/ 
       DATA DB10/1600*5.0D0/ 
       DATA DB20/1600*4.0D0/ 
       DATA DB30/1600*2.5D0/ 
       DATA DC10/8000*2.0D0/ 
       DATA DC20/5000*4.0D0,3000*10.0D0/ 
       DATA DC30/8000*4.0D0/ 
       DATA LD10/40*.FALSE./ 
       DATA LD20/1600*.FALSE./ 
       DATA LD30/8000*.FALSE./ 
       INTEGER N31, N21, II9, II8, II7, II6, II5, II4, II3, II2, II1, K4
     X   , I31, I21, I11, K31, K11, J1, I6
       DOUBLE PRECISION DD40, DD39, DD38, DD37, DD36, DD35, DD34, DD33, 
     X   DD32, DD31, DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, 
     X   DD22, DD21, DD19, DD18, DD17, DD16, DD15, DD14, DD13, DD12, 
     X   DD11, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2
       LOGICAL LL13, LL12, LL11, LL10, LL9, LL8, LL7, LL6, LL5, LL4, LL3
     X   , LL2, LL1
       REAL RR1 (86)

       DO I6=1,13,4
        DA10(I6*2+1) = DA20(I6+4) * DA30(I6+10)
        DA10(I6*2+3) = DA20(I6+5) * DA30(I6+11)
        DA10(I6*2+5) = DA20(I6+6) * DA30(I6+12)
        DA10(I6*2+7) = DA20(I6+7) * DA30(I6+13)
        DA10(I6*2+8) = DA40(I6) - DA20(I6)
        DA10(I6*2+10) = DA40(I6+1) - DA20(I6+1)
        DA10(I6*2+12) = DA40(I6+2) - DA20(I6+2)
        DA10(I6*2+14) = DA40(I6+3) - DA20(I6+3)
        DA40(I6+16) = DA20(I6+1) + DA30(I6)
        DA40(I6+17) = DA20(I6+2) + DA30(I6+1)
        DA40(I6+18) = DA20(I6+3) + DA30(I6+2)
        DA40(I6+19) = DA20(I6+4) + DA30(I6+3)
       END DO
C$OMP PARALLEL SHARED (DC20,DC10,DC30,DD10,DB30,DD20) PRIVATE (K11,J1,I6
C$OMP& ,LL4,LL5,LL6,LL1,K31)
C$OMP DO 
       DO K11=1,10
        DO J1=1,5,4
         DO I6=1,13,4
          DC20(I6,J1,K11+10) = DC10(I6,J1,K11+1) * DC30(I6,J1,K11)
          DC20(I6+1,J1,K11+10) = DC10(I6+1,J1,K11+1) * DC30(I6+1,J1,K11)
          DC20(I6+2,J1,K11+10) = DC10(I6+2,J1,K11+1) * DC30(I6+2,J1,K11)
          DC20(I6+3,J1,K11+10) = DC10(I6+3,J1,K11+1) * DC30(I6+3,J1,K11)
          DC20(I6,J1+1,K11+10) = DC10(I6,J1+1,K11+1) * DC30(I6,J1+1,K11)
          DC20(I6+1,J1+1,K11+10) = DC10(I6+1,J1+1,K11+1) * DC30(I6+1,J1+
     X      1,K11)
          DC20(I6+2,J1+1,K11+10) = DC10(I6+2,J1+1,K11+1) * DC30(I6+2,J1+
     X      1,K11)
          DC20(I6+3,J1+1,K11+10) = DC10(I6+3,J1+1,K11+1) * DC30(I6+3,J1+
     X      1,K11)
          DC20(I6,J1+2,K11+10) = DC10(I6,J1+2,K11+1) * DC30(I6,J1+2,K11)
          DC20(I6+1,J1+2,K11+10) = DC10(I6+1,J1+2,K11+1) * DC30(I6+1,J1+
     X      2,K11)
          DC20(I6+2,J1+2,K11+10) = DC10(I6+2,J1+2,K11+1) * DC30(I6+2,J1+
     X      2,K11)
          DC20(I6+3,J1+2,K11+10) = DC10(I6+3,J1+2,K11+1) * DC30(I6+3,J1+
     X      2,K11)
          DC20(I6,J1+3,K11+10) = DC10(I6,J1+3,K11+1) * DC30(I6,J1+3,K11)
          DC20(I6+1,J1+3,K11+10) = DC10(I6+1,J1+3,K11+1) * DC30(I6+1,J1+
     X      3,K11)
          DC20(I6+2,J1+3,K11+10) = DC10(I6+2,J1+3,K11+1) * DC30(I6+2,J1+
     X      3,K11)
          DC20(I6+3,J1+3,K11+10) = DC10(I6+3,J1+3,K11+1) * DC30(I6+3,J1+
     X      3,K11)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K11=1,10
        LL6 = K11 .LE. 8
        DO J1=1,8
         LL4 = LL6
         LL5 = J1 .LE. 8
         DO I6=1,16
          DC10(I6,J1,K11) = DC20(I6,J1,K11) + DC30(I6,J1,K11+1)
          LL1 = I6 .LE. 8 .AND. LL5 .AND. LL4
          IF (LL1) THEN
           DO K31=1,5,4
            DD10(I6,J1,K11,1,K31) = DB30(1,K31)
            DD10(I6,J1,K11,1,K31+1) = DB30(1,K31+1)
            DD10(I6,J1,K11,1,K31+2) = DB30(1,K31+2)
            DD10(I6,J1,K11,1,K31+3) = DB30(1,K31+3)
            DD10(I6,J1,K11,2,K31) = DB30(2,K31)
            DD10(I6,J1,K11,2,K31+1) = DB30(2,K31+1)
            DD10(I6,J1,K11,2,K31+2) = DB30(2,K31+2)
            DD10(I6,J1,K11,2,K31+3) = DB30(2,K31+3)
            DD10(I6,J1,K11,3,K31) = DB30(3,K31)
            DD10(I6,J1,K11,3,K31+1) = DB30(3,K31+1)
            DD10(I6,J1,K11,3,K31+2) = DB30(3,K31+2)
            DD10(I6,J1,K11,3,K31+3) = DB30(3,K31+3)
            DD10(I6,J1,K11,4,K31) = DB30(4,K31)
            DD10(I6,J1,K11,4,K31+1) = DB30(4,K31+1)
            DD10(I6,J1,K11,4,K31+2) = DB30(4,K31+2)
            DD10(I6,J1,K11,4,K31+3) = DB30(4,K31+3)
            DD10(I6,J1,K11,5,K31) = DB30(5,K31)
            DD10(I6,J1,K11,5,K31+1) = DB30(5,K31+1)
            DD10(I6,J1,K11,5,K31+2) = DB30(5,K31+2)
            DD10(I6,J1,K11,5,K31+3) = DB30(5,K31+3)
            DD10(I6,J1,K11,6,K31) = DB30(6,K31)
            DD10(I6,J1,K11,6,K31+1) = DB30(6,K31+1)
            DD10(I6,J1,K11,6,K31+2) = DB30(6,K31+2)
            DD10(I6,J1,K11,6,K31+3) = DB30(6,K31+3)
            DD10(I6,J1,K11,7,K31) = DB30(7,K31)
            DD10(I6,J1,K11,7,K31+1) = DB30(7,K31+1)
            DD10(I6,J1,K11,7,K31+2) = DB30(7,K31+2)
            DD10(I6,J1,K11,7,K31+3) = DB30(7,K31+3)
            DD10(I6,J1,K11,8,K31) = DB30(8,K31)
            DD10(I6,J1,K11,8,K31+1) = DB30(8,K31+1)
            DD10(I6,J1,K11,8,K31+2) = DB30(8,K31+2)
            DD10(I6,J1,K11,8,K31+3) = DB30(8,K31+3)
            DD20(I6,J1,K11,1,K31) = DC30(K11,1,K31)
            DD20(I6,J1,K11,1,K31+1) = DC30(K11,1,K31+1)
            DD20(I6,J1,K11,1,K31+2) = DC30(K11,1,K31+2)
            DD20(I6,J1,K11,1,K31+3) = DC30(K11,1,K31+3)
            DD20(I6,J1,K11,2,K31) = DC30(K11,2,K31)
            DD20(I6,J1,K11,2,K31+1) = DC30(K11,2,K31+1)
            DD20(I6,J1,K11,2,K31+2) = DC30(K11,2,K31+2)
            DD20(I6,J1,K11,2,K31+3) = DC30(K11,2,K31+3)
            DD20(I6,J1,K11,3,K31) = DC30(K11,3,K31)
            DD20(I6,J1,K11,3,K31+1) = DC30(K11,3,K31+1)
            DD20(I6,J1,K11,3,K31+2) = DC30(K11,3,K31+2)
            DD20(I6,J1,K11,3,K31+3) = DC30(K11,3,K31+3)
            DD20(I6,J1,K11,4,K31) = DC30(K11,4,K31)
            DD20(I6,J1,K11,4,K31+1) = DC30(K11,4,K31+1)
            DD20(I6,J1,K11,4,K31+2) = DC30(K11,4,K31+2)
            DD20(I6,J1,K11,4,K31+3) = DC30(K11,4,K31+3)
            DD20(I6,J1,K11,5,K31) = DC30(K11,5,K31)
            DD20(I6,J1,K11,5,K31+1) = DC30(K11,5,K31+1)
            DD20(I6,J1,K11,5,K31+2) = DC30(K11,5,K31+2)
            DD20(I6,J1,K11,5,K31+3) = DC30(K11,5,K31+3)
            DD20(I6,J1,K11,6,K31) = DC30(K11,6,K31)
            DD20(I6,J1,K11,6,K31+1) = DC30(K11,6,K31+1)
            DD20(I6,J1,K11,6,K31+2) = DC30(K11,6,K31+2)
            DD20(I6,J1,K11,6,K31+3) = DC30(K11,6,K31+3)
            DD20(I6,J1,K11,7,K31) = DC30(K11,7,K31)
            DD20(I6,J1,K11,7,K31+1) = DC30(K11,7,K31+1)
            DD20(I6,J1,K11,7,K31+2) = DC30(K11,7,K31+2)
            DD20(I6,J1,K11,7,K31+3) = DC30(K11,7,K31+3)
            DD20(I6,J1,K11,8,K31) = DC30(K11,8,K31)
            DD20(I6,J1,K11,8,K31+1) = DC30(K11,8,K31+1)
            DD20(I6,J1,K11,8,K31+2) = DC30(K11,8,K31+2)
            DD20(I6,J1,K11,8,K31+3) = DC30(K11,8,K31+3)
           END DO
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO J1=1,5,4
        II1 = J1 * 2
        DO I6=1,13,4
         DB20(I6+20,II1) = DB10(I6+1,II1+5) / DB30(I6,J1)
         DB20(I6+21,II1) = DB10(I6+2,II1+5) / DB30(I6+1,J1)
         DB20(I6+22,II1) = DB10(I6+3,II1+5) / DB30(I6+2,J1)
         DB20(I6+23,II1) = DB10(I6+4,II1+5) / DB30(I6+3,J1)
         DB20(I6+20,II1+2) = DB10(I6+1,II1+7) / DB30(I6,J1+1)
         DB20(I6+21,II1+2) = DB10(I6+2,II1+7) / DB30(I6+1,J1+1)
         DB20(I6+22,II1+2) = DB10(I6+3,II1+7) / DB30(I6+2,J1+1)
         DB20(I6+23,II1+2) = DB10(I6+4,II1+7) / DB30(I6+3,J1+1)
         DB20(I6+20,II1+4) = DB10(I6+1,II1+9) / DB30(I6,J1+2)
         DB20(I6+21,II1+4) = DB10(I6+2,II1+9) / DB30(I6+1,J1+2)
         DB20(I6+22,II1+4) = DB10(I6+3,II1+9) / DB30(I6+2,J1+2)
         DB20(I6+23,II1+4) = DB10(I6+4,II1+9) / DB30(I6+3,J1+2)
         DB20(I6+20,II1+6) = DB10(I6+1,II1+11) / DB30(I6,J1+3)
         DB20(I6+21,II1+6) = DB10(I6+2,II1+11) / DB30(I6+1,J1+3)
         DB20(I6+22,II1+6) = DB10(I6+3,II1+11) / DB30(I6+2,J1+3)
         DB20(I6+23,II1+6) = DB10(I6+4,II1+11) / DB30(I6+3,J1+3)
        END DO
       END DO
       DO J1=1,8
        II2 = J1 * 2
        DO I6=1,13,4
         DB10(I6,II2) = DB20(I6,II2+1) + DB30(I6*2,II2)
         DB10(I6+1,II2) = DB20(I6+1,II2+1) + DB30(I6*2+2,II2)
         DB10(I6+2,II2) = DB20(I6+2,II2+1) + DB30(I6*2+4,II2)
         DB10(I6+3,II2) = DB20(I6+3,II2+1) + DB30(I6*2+6,II2)
         DB10(I6,II2+1) = DB20(I6,II2) + DB30(I6*2,II2)
         DB10(I6+1,II2+1) = DB20(I6+1,II2) + DB30(I6*2+2,II2)
         DB10(I6+2,II2+1) = DB20(I6+2,II2) + DB30(I6*2+4,II2)
         DB10(I6+3,II2+1) = DB20(I6+3,II2) + DB30(I6*2+6,II2)
        END DO
       END DO

       DO I6=1,13,4
        DA20(I6) = DA10(I6*2) + DA30(I6+1)
        DA20(I6+1) = DA10(I6*2+2) + DA30(I6+2)
        DA20(I6+2) = DA10(I6*2+4) + DA30(I6+3)
        DA20(I6+3) = DA10(I6*2+6) + DA30(I6+4)
       END DO
       I = 17

       WRITE (6, *) ' ** DA10 ** DA20 ** DA40 ** '
       WRITE (6, 999) DA10
  999  FORMAT(8F10.6)
       WRITE (6, 999) (DA20(K), K=1,20)
       WRITE (6, 999) (DA40(K), K=21,40)
       WRITE (6, *) ' ** DB10 ** DB20 ** '
       WRITE (6, 999) ((DB10(I,J), I=1,20), J=2,40)
       WRITE (6, 999) ((DB20(I,J), I=21,40), J=2,40,2)
       WRITE (6, *) ' ** DC10 ** DC20 ** '
       WRITE (6, 999) (((DC10(I,J,K), I=1,20), J=1,20), K=1,20)
       WRITE (6, 999) (((DC20(I,J,K), I=1,20), J=1,20), K=1,20)
       WRITE (6, *) ' ** DD10 ** DD20 ** '
       WRITE (6, 999) (((((DD10(I1,I2,I3,I4,I5), I1=1,2), I2=2,3), I3=3,
     X   4), I4=4,5), I5=2,3)
       WRITE (6, 999) (((DD20(1,2,K1,K2,K3), K1=3,4), K2=4,5), K3=6,7)

C$OMP PARALLEL SHARED (DA10,LD10,DB10,LD20,DC10,LD30) PRIVATE (I11,LL2,
C$OMP& I21,I31)
C$OMP DO 
       DO I11=1,40
        IF (DA10(I11) .EQ. 1D0) THEN
         LD10(I11) = .TRUE.
        END IF
        LL2 = I11 .LE. 10
        IF (LL2) THEN
         DO I21=1,20
          IF (DB10(I11,I21) .EQ. 5D0) THEN
           LD20(I11,I21) = .TRUE.
          END IF
          DO I31=1,10
           IF (DC10(I11,I21,I31) .GE. 10D0) THEN
            LD30(I11,I21,I31) = .TRUE.
           END IF
          END DO
         END DO
        END IF
        IF (.NOT.LL2) THEN
         DO I21=1,20
          IF (DB10(I11,I21) .EQ. 5D0) THEN
           LD20(I11,I21) = .TRUE.
          END IF
         END DO
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       N1 = 0
       N2 = 0
       N3 = 0
       DO I6=1,40
        IF (LD10(I6)) THEN
         N1 = N1 + 1
        END IF
       END DO
C$OMP PARALLEL SHARED (LD20,N2,LD30,N3) PRIVATE (J1,I6,N21,LL7,K4,N31)
       N21 = 0
C$OMP DO 
       DO J1=1,40
        DO I6=1,40
         IF (LD20(I6,J1)) THEN
          N21 = N21 + 1
         END IF
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II10)
       N2 = N2 + N21
C$OMP END CRITICAL (II10)
C$OMP BARRIER
       N31 = 0
C$OMP DO 
       DO K4=1,10
        DO J1=1,40
         LL7 = J1 .LE. 10
         DO I6=1,40
          IF (I6 .LE. 10 .AND. LL7 .AND. LD30(I6,J1,K4)) THEN
           N31 = N31 + 1
          END IF
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II11)
       N3 = N3 + N31
C$OMP END CRITICAL (II11)
C$OMP END PARALLEL 
       DO I6=1,40
        IF (LD10(I6)) THEN
         ICNT = I6
         GO TO 55
        END IF
       END DO
 55    WRITE (6, *) '  N1 = ', N1, ' N2 = ', N2, ' N3 = ', N3
       WRITE (6, *) '  ICNT = ', ICNT

       DO I6=3,24,8
        DD4 = DA10(I6+2) * DD1
        DD5 = DA10(I6+4) * DD1
        DD6 = DA10(I6+6) * DD1
        DD2 = DA10(I6+8) * DD1
        DD11 = DD4 * DA20(I6+6)
        DD12 = DD5 * DA20(I6+8)
        DD13 = DD6 * DA20(I6+10)
        DD14 = DD2 * DA20(I6+12)
        DA30(I6+10) = DD11
        DD4 = DA30(I6+9) - DA10(I6+4)
        DA30(I6+12) = DD12
        DD5 = DA30(I6+11) - DA10(I6+6)
        DA30(I6+14) = DD13
        DD6 = DA30(I6+13) - DA10(I6+8)
        DA30(I6+16) = DD14
        DD2 = DA30(I6+15) - DA10(I6+10)
        DA40(I6+1) = DD4 + DA20(I6+3)
        DA40(I6+3) = DD5 + DA20(I6+5)
        DA40(I6+5) = DD6 + DA20(I6+7)
        DA40(I6+7) = DD2 + DA20(I6+9)
       END DO
       DO I6=27,30,2
        DD2 = DA10(I6+2) * DD1
        DD15 = DD2 * DA20(I6+6)
        DA30(I6+10) = DD15
        DD2 = DA30(I6+9) - DA10(I6+4)
        DA40(I6+1) = DD2 + DA20(I6+3)
       END DO

       DO I6=3,24,8
        DA10(I6) = DA20(I6+5) * DA40(I6-2)
        DA20(1) = DA20(1) + DA40(I6) + DA30(I6)
        DA10(I6+2) = DA20(I6+7) * DA40(I6)
        DA20(1) = DA20(1) + DA40(I6+2) + DA30(I6+2)
        DA10(I6+4) = DA20(I6+9) * DA40(I6+2)
        DA20(1) = DA20(1) + DA40(I6+4) + DA30(I6+4)
        DA10(I6+6) = DA20(I6+11) * DA40(I6+4)
        DA20(1) = DA20(1) + DA40(I6+6) + DA30(I6+6)
       END DO
       DO I6=27,30,2
        DA10(I6) = DA20(I6+5) * DA40(I6-2)
        DA20(1) = DA20(1) + DA40(I6) + DA30(I6)
       END DO

       WRITE (6, 999) (DA30(K), K=23,40)
       WRITE (6, 999) (DA40(K), K=4,31)
       WRITE (6, 999) (DA10(K), K=3,30)
       WRITE (6, 99) ' ** DA20(1) = ', DA20(1), ' ** '
   99  FORMAT(A14,F10.6,A4)
       II8 = -1
       DO I6=18,6,-4
        II8 = II8 + 1
        DB30(I6,II8*4+2) = DB20(I6-1,I6+1) * DB10(II8*4+2,I6*2-1)
        DB30(I6-1,II8*4+3) = DB20(I6-2,I6) * DB10(II8*4+3,I6*2-3)
        DB30(I6-2,II8*4+4) = DB20(I6-3,I6-1) * DB10(II8*4+4,I6*2-5)
        DB30(I6-3,II8*4+5) = DB20(I6-4,I6-2) * DB10(II8*4+5,I6*2-7)
       END DO
       II9 = -1
       DO I6=18,6,-4
        II9 = II9 + 1
        DD21 = DB30(I6,II9*4+1) + DB10(II9*4+1,I6+2)
        DD22 = DB30(I6-1,II9*4+2) + DB10(II9*4+2,I6+1)
        DD23 = DB30(I6-2,II9*4+3) + DB10(II9*4+3,I6)
        DD24 = DB30(I6-3,II9*4+4) + DB10(II9*4+4,I6-1)
        DD7 = DB20(I6*2,I6) - DB30(I6*2,II9*4+1)
        DD8 = DB20(I6*2-2,I6-1) - DB30(I6*2-2,II9*4+2)
        DD9 = DB20(I6*2-4,I6-2) - DB30(I6*2-4,II9*4+3)
        DD3 = DB20(I6*2-6,I6-3) - DB30(I6*2-6,II9*4+4)
        DD16 = DD7 + DB10(II9*4+1,I6)
        DD17 = DD8 + DB10(II9*4+2,I6-1)
        DD18 = DD9 + DB10(II9*4+3,I6-2)
        DD19 = DD3 + DB10(II9*4+4,I6-3)
        DB10(II9*4+4,I6-3) = DD19
        DB10(II9*4+3,I6-2) = DD18
        DB10(II9*4+2,I6-1) = DD17
        DB10(II9*4+1,I6) = DD16
        DB20(I6-3,I6-1) = DD24
        DB20(I6-2,I6) = DD23
        DB20(I6-1,I6+1) = DD22
        DB20(I6,I6+2) = DD21
       END DO
       I = 2

       WRITE (6, 999) ((DB10(I,J), I=1,20), J=23,3,-1)
       WRITE (6, 999) ((DB20(I,J), I=3,23), J=5,25)
       WRITE (6, 999) ((DB30(I,J), I=23,3,-1), J=2,22)
       DO I21=2,7,4
        DO I31=2,5
         II3 = I31 * 2 + 1
         DO I11=2,10,4
          DC10(I11,I21,I31+10) = DC20(I11,I21,II3) + DC30(I11,I21,I31+2)
          DC10(I11+1,I21,I31+10) = DC20(I11+1,I21,II3) + DC30(I11+1,I21,
     X      I31+2)
          DC10(I11+2,I21,I31+10) = DC20(I11+2,I21,II3) + DC30(I11+2,I21,
     X      I31+2)
          DC10(I11+3,I21,I31+10) = DC20(I11+3,I21,II3) + DC30(I11+3,I21,
     X      I31+2)
          DC10(I11,I21+1,I31+10) = DC20(I11,I21+1,II3) + DC30(I11,I21+1,
     X      I31+2)
          DC10(I11+1,I21+1,I31+10) = DC20(I11+1,I21+1,II3) + DC30(I11+1,
     X      I21+1,I31+2)
          DC10(I11+2,I21+1,I31+10) = DC20(I11+2,I21+1,II3) + DC30(I11+2,
     X      I21+1,I31+2)
          DC10(I11+3,I21+1,I31+10) = DC20(I11+3,I21+1,II3) + DC30(I11+3,
     X      I21+1,I31+2)
          DC10(I11,I21+2,I31+10) = DC20(I11,I21+2,II3) + DC30(I11,I21+2,
     X      I31+2)
          DC10(I11+1,I21+2,I31+10) = DC20(I11+1,I21+2,II3) + DC30(I11+1,
     X      I21+2,I31+2)
          DC10(I11+2,I21+2,I31+10) = DC20(I11+2,I21+2,II3) + DC30(I11+2,
     X      I21+2,I31+2)
          DC10(I11+3,I21+2,I31+10) = DC20(I11+3,I21+2,II3) + DC30(I11+3,
     X      I21+2,I31+2)
          DC10(I11,I21+3,I31+10) = DC20(I11,I21+3,II3) + DC30(I11,I21+3,
     X      I31+2)
          DC10(I11+1,I21+3,I31+10) = DC20(I11+1,I21+3,II3) + DC30(I11+1,
     X      I21+3,I31+2)
          DC10(I11+2,I21+3,I31+10) = DC20(I11+2,I21+3,II3) + DC30(I11+2,
     X      I21+3,I31+2)
          DC10(I11+3,I21+3,I31+10) = DC20(I11+3,I21+3,II3) + DC30(I11+3,
     X      I21+3,I31+2)
         END DO
        END DO
       END DO

       DO I31=2,5
        II4 = I31 * 2 + 1
        DO I11=2,10,4
         DC10(I11,10,I31+10) = DC20(I11,10,II4) + DC30(I11,10,I31+2)
         DC10(I11+1,10,I31+10) = DC20(I11+1,10,II4) + DC30(I11+1,10,I31+
     X     2)
         DC10(I11+2,10,I31+10) = DC20(I11+2,10,II4) + DC30(I11+2,10,I31+
     X     2)
         DC10(I11+3,10,I31+10) = DC20(I11+3,10,II4) + DC30(I11+3,10,I31+
     X     2)
        END DO
       END DO
       DO I21=2,9,2
        II6 = I21 * 2
        DO I31=2,5
         II5 = I31 * 2
         DO I11=2,10,4
          DD25 = DC10(I11,I21,I31+2) - DC30(I11,II6,II5)
          DD26 = DC10(I11+1,I21,I31+2) - DC30(I11+1,II6,II5)
          DD27 = DC10(I11+2,I21,I31+2) - DC30(I11+2,II6,II5)
          DD28 = DC10(I11+3,I21,I31+2) - DC30(I11+3,II6,II5)
          DC20(I11,I21,I31) = DD25
          DD29 = DC10(I11,I21-1,I31-1) + DC20(I11,I21,I31+1)
          DC20(I11+1,I21,I31) = DD26
          DD30 = DC10(I11+1,I21-1,I31-1) + DC20(I11+1,I21,I31+1)
          DC20(I11+2,I21,I31) = DD27
          DD31 = DC10(I11+2,I21-1,I31-1) + DC20(I11+2,I21,I31+1)
          DC20(I11+3,I21,I31) = DD28
          DD32 = DC10(I11+3,I21-1,I31-1) + DC20(I11+3,I21,I31+1)
          DC30(I11,I21,I31) = DD29
          DD33 = DC10(I11,I21+1,I31+2) - DC30(I11,II6+2,II5)
          DC30(I11+1,I21,I31) = DD30
          DD34 = DC10(I11+1,I21+1,I31+2) - DC30(I11+1,II6+2,II5)
          DC30(I11+2,I21,I31) = DD31
          DD35 = DC10(I11+2,I21+1,I31+2) - DC30(I11+2,II6+2,II5)
          DC30(I11+3,I21,I31) = DD32
          DD36 = DC10(I11+3,I21+1,I31+2) - DC30(I11+3,II6+2,II5)
          DC20(I11,I21+1,I31) = DD33
          DC30(I11,I21+1,I31) = DC10(I11,I21,I31-1) + DC20(I11,I21+1,I31
     X      +1)
          DC20(I11+1,I21+1,I31) = DD34
          DC30(I11+1,I21+1,I31) = DC10(I11+1,I21,I31-1) + DC20(I11+1,I21
     X      +1,I31+1)
          DC20(I11+2,I21+1,I31) = DD35
          DC30(I11+2,I21+1,I31) = DC10(I11+2,I21,I31-1) + DC20(I11+2,I21
     X      +1,I31+1)
          DC20(I11+3,I21+1,I31) = DD36
          DC30(I11+3,I21+1,I31) = DC10(I11+3,I21,I31-1) + DC20(I11+3,I21
     X      +1,I31+1)
         END DO
        END DO
       END DO

       DO I31=2,5
        II7 = I31 * 2
        DO I11=2,10,4
         DD37 = DC10(I11,10,I31+2) - DC30(I11,20,II7)
         DD38 = DC10(I11+1,10,I31+2) - DC30(I11+1,20,II7)
         DD39 = DC10(I11+2,10,I31+2) - DC30(I11+2,20,II7)
         DD40 = DC10(I11+3,10,I31+2) - DC30(I11+3,20,II7)
         DC30(I11,10,I31) = DC10(I11,9,I31-1) + DC20(I11,10,I31+1)
         DC30(I11+1,10,I31) = DC10(I11+1,9,I31-1) + DC20(I11+1,10,I31+1)
         DC30(I11+2,10,I31) = DC10(I11+2,9,I31-1) + DC20(I11+2,10,I31+1)
         DC30(I11+3,10,I31) = DC10(I11+3,9,I31-1) + DC20(I11+3,10,I31+1)
         DC20(I11+3,10,I31) = DD40
         DC20(I11+2,10,I31) = DD39
         DC20(I11+1,10,I31) = DD38
         DC20(I11,10,I31) = DD37
        END DO
       END DO
C$OMP PARALLEL SHARED (DD10,DD20) PRIVATE (LL8,LL9,LL10,LL11,LL12,LL13,
C$OMP& I21,I31,K11,I11,LL3)
C$OMP DO 
       DO I21=2,10
        LL13 = I21 .LE. 5
        DO I31=2,5
         LL11 = I31 .LE. 7
         LL12 = LL13
         DO K11=1,10
          LL8 = K11 .LE. 6
          LL9 = LL11
          LL10 = LL12
          DO I11=2,13
           LL3 = I11 .LE. 5 .AND. LL10 .AND. LL9 .AND. LL8
           IF (LL3) THEN
            DD10(I11,I21,I31,K11+2,5) = DD10(I11,I21,I31,K11+2,8) + DD20
     X        (I11,I21,I31,K11,5)
            DD10(I11,I21,I31,K11+2,4) = DD10(I11,I21,I31,K11+2,7) + DD20
     X        (I11,I21,I31,K11,4)
            DD10(I11,I21,I31,K11+2,3) = DD10(I11,I21,I31,K11+2,6) + DD20
     X        (I11,I21,I31,K11,3)
            DD10(I11,I21,I31,K11+2,2) = DD10(I11,I21,I31,K11+2,5) + DD20
     X        (I11,I21,I31,K11,2)
            DD10(I11,I21,I31,K11+2,1) = DD10(I11,I21,I31,K11+2,4) + DD20
     X        (I11,I21,I31,K11,1)
           END IF
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, 999) (((DC10(I,J,K), I=2,13), J=2,13), K=12,20)
       WRITE (6, 999) (((DC20(I,J,K), I=2,13), J=2,13), K=2,10)
       WRITE (6, 999) (((DC30(I,J,K), I=2,13), J=2,13), K=2,10)
       WRITE (6, 999) (((((DD10(I,J,K,L,M), I=2,3), J=4,6), K=3,5), L=3,
     X   4), M=3,4)

       STOP 
      END
