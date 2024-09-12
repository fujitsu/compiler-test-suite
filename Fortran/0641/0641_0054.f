      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L)
       DIMENSION DA10(30), DA20(30), DA30(30), LD10(30), DB10(10,20), 
     X   DB20(10,20), DB30(-10:-1,-20:-1), DC10(10,20,5), DC20(10,20,5),
     X    DC30(-10:-1,-20:-1,-5:-1)
       DIMENSION ID30(20,20), ID20(20,20), ID10(20,20)
       COMMON /AA/ ID10, ID20, ID30
       COMMON /BB/ DVAL1, DVAL2, DVAL3
       COMMON /CC/ ICNT1, ICNT2
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 2D0)

       DATA DA10/30*1.0D0/ 
       DATA DA20/30*2.D0/ 
       DATA DA30/30*3.D0/ 
       DATA DB10/200*4.D0/ 
       DATA DB20/200*5.D0/ 
       DATA DB30/200*3.D0/ 
       DATA LD10/30*.FALSE./ 
       DATA DC10/1000*1.D0/ 
       DATA DC20/1000*0.5D0/ 
       DATA DC30/1000*2.D0/ 
       INTEGER II34, II33, II32, II31, II30, II29, II28, II27, II26, 
     X   II25, II24, II23, II22, II21, II20, II19, II18, II17, II16, 
     X   II15, II14, II13, II12, II11, II10, II9, II8, II7, II6, II5, 
     X   II4, II3, II2, II1, K1, J1, I1
       DOUBLE PRECISION DD49, DD48, DD47, DD46, DD45, DD44, DD43, DD42, 
     X   DD41, DD40, DD39, DD38, DD37, DD36, DD35, DD34, DD33, DD32, 
     X   DD31, DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, DD22, 
     X   DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, DD12, 
     X   DD11, DD10
       DOUBLE PRECISION DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2
       LOGICAL LL2, LL1
C$OMP PARALLEL SHARED (ID20,ID30,ID10) PRIVATE (II1,II2,II21,II22,II23,
C$OMP& II24,II25,II26,II27,II28,II29,II30,II31,II32,II33,II34,J1,I1)
C$OMP DO 
       DO J1=1,20
        DO I1=1,17,4
         II23 = 20
         II24 = 20
         II25 = 20
         II21 = 20
         II26 = I1 - 1
         II27 = I1
         II28 = I1 + 1
         II22 = I1 + 2
         II29 = 401 - (II23 * II26 + J1)
         II30 = 401 - (II24 * II27 + J1)
         II31 = 401 - (II25 * II28 + J1)
         II1 = 401 - (II21 * II22 + J1)
         ID20(I1,J1) = II29
         ID20(I1+1,J1) = II30
         ID20(I1+2,J1) = II31
         ID20(I1+3,J1) = II1
         II23 = 20
         II24 = 20
         II25 = 20
         II21 = 20
         II26 = I1 - 1
         II27 = I1
         II28 = I1 + 1
         II22 = I1 + 2
         II32 = II23 * II26 + J1
         II33 = II24 * II27 + J1
         II34 = II25 * II28 + J1
         II2 = II21 * II22 + J1
         ID30(I1,J1) = II32
         ID30(I1+1,J1) = II33
         ID30(I1+2,J1) = II34
         ID30(I1+3,J1) = II2
         ID10(I1,J1) = II29 - II32
         ID10(I1+1,J1) = II30 - II33
         ID10(I1+2,J1) = II31 - II34
         ID10(I1+3,J1) = II1 - II2
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       ICNT2 = 1
       ICNT1 = 401
       ICNT2 = 1
       ICNT1 = 401

       DO I1=2,3
        DO J1=2,ID30(1,I1)*3-3,4
         DD35 = DB20(8,J1) * DB30(-8,-1-J1) - DB10(8,J1)
         DD36 = DB20(8,J1+1) * DB30(-8,-2-J1) - DB10(8,J1+1)
         DD37 = DB20(8,J1+2) * DB30(-8,-3-J1) - DB10(8,J1+2)
         DD38 = DB20(8,J1+3) * DB30(-8,-4-J1) - DB10(8,J1+3)
         DD7 = DB20(7,J1) * DB30(-7,-1-J1) - DB10(7,J1)
         DD8 = DB20(7,J1+1) * DB30(-7,-2-J1) - DB10(7,J1+1)
         DD9 = DB20(7,J1+2) * DB30(-7,-3-J1) - DB10(7,J1+2)
         DD10 = DB20(7,J1+3) * DB30(-7,-4-J1) - DB10(7,J1+3)
         DD11 = DB20(6,J1) * DB30(-6,-1-J1) - DB10(6,J1)
         DD12 = DB20(6,J1+1) * DB30(-6,-2-J1) - DB10(6,J1+1)
         DD13 = DB20(6,J1+2) * DB30(-6,-3-J1) - DB10(6,J1+2)
         DD14 = DB20(6,J1+3) * DB30(-6,-4-J1) - DB10(6,J1+3)
         DD15 = DB20(5,J1) * DB30(-5,-1-J1) - DB10(5,J1)
         DD16 = DB20(5,J1+1) * DB30(-5,-2-J1) - DB10(5,J1+1)
         DD17 = DB20(5,J1+2) * DB30(-5,-3-J1) - DB10(5,J1+2)
         DD18 = DB20(5,J1+3) * DB30(-5,-4-J1) - DB10(5,J1+3)
         DD19 = DB20(4,J1) * DB30(-4,-1-J1) - DB10(4,J1)
         DD20 = DB20(4,J1+1) * DB30(-4,-2-J1) - DB10(4,J1+1)
         DD21 = DB20(4,J1+2) * DB30(-4,-3-J1) - DB10(4,J1+2)
         DD22 = DB20(4,J1+3) * DB30(-4,-4-J1) - DB10(4,J1+3)
         DD23 = DB20(3,J1) * DB30(-3,-1-J1) - DB10(3,J1)
         DD24 = DB20(3,J1+1) * DB30(-3,-2-J1) - DB10(3,J1+1)
         DD25 = DB20(3,J1+2) * DB30(-3,-3-J1) - DB10(3,J1+2)
         DD26 = DB20(3,J1+3) * DB30(-3,-4-J1) - DB10(3,J1+3)
         DD27 = DB20(2,J1) * DB30(-2,-1-J1) - DB10(2,J1)
         DD28 = DB20(2,J1+1) * DB30(-2,-2-J1) - DB10(2,J1+1)
         DD29 = DB20(2,J1+2) * DB30(-2,-3-J1) - DB10(2,J1+2)
         DD30 = DB20(2,J1+3) * DB30(-2,-4-J1) - DB10(2,J1+3)
         DD31 = DB20(1,J1) * DB30(-1,-1-J1) - DB10(1,J1)
         DD32 = DB20(1,J1+1) * DB30(-1,-2-J1) - DB10(1,J1+1)
         DD33 = DB20(1,J1+2) * DB30(-1,-3-J1) - DB10(1,J1+2)
         DD34 = DB20(1,J1+3) * DB30(-1,-4-J1) - DB10(1,J1+3)
         DB10(2,J1+3) = DD34
         DB10(2,J1+2) = DD33
         DB10(2,J1+1) = DD32
         DB10(2,J1) = DD31
         DB10(3,J1+3) = DD30
         DB10(3,J1+2) = DD29
         DB10(3,J1+1) = DD28
         DB10(3,J1) = DD27
         DB10(4,J1+3) = DD26
         DB10(4,J1+2) = DD25
         DB10(4,J1+1) = DD24
         DB10(4,J1) = DD23
         DB10(5,J1+3) = DD22
         DB10(5,J1+2) = DD21
         DB10(5,J1+1) = DD20
         DB10(5,J1) = DD19
         DB10(6,J1+3) = DD18
         DB10(6,J1+2) = DD17
         DB10(6,J1+1) = DD16
         DB10(6,J1) = DD15
         DB10(7,J1+3) = DD14
         DB10(7,J1+2) = DD13
         DB10(7,J1+1) = DD12
         DB10(7,J1) = DD11
         DB10(8,J1+3) = DD10
         DB10(8,J1+2) = DD9
         DB10(8,J1+1) = DD8
         DB10(8,J1) = DD7
         DB10(9,J1+3) = DD38
         DB10(9,J1+2) = DD37
         DB10(9,J1+1) = DD36
         DB10(9,J1) = DD35
        END DO
        DO J1=J1,ID30(1,I1)*3,1
         DD46 = DB20(8,J1) * DB30(-8,-1-J1) - DB10(8,J1)
         DD39 = DB20(7,J1) * DB30(-7,-1-J1) - DB10(7,J1)
         DD40 = DB20(6,J1) * DB30(-6,-1-J1) - DB10(6,J1)
         DD41 = DB20(5,J1) * DB30(-5,-1-J1) - DB10(5,J1)
         DD42 = DB20(4,J1) * DB30(-4,-1-J1) - DB10(4,J1)
         DD43 = DB20(3,J1) * DB30(-3,-1-J1) - DB10(3,J1)
         DD44 = DB20(2,J1) * DB30(-2,-1-J1) - DB10(2,J1)
         DD45 = DB20(1,J1) * DB30(-1,-1-J1) - DB10(1,J1)
         DB10(2,J1) = DD45
         DB10(3,J1) = DD44
         DB10(4,J1) = DD43
         DB10(5,J1) = DD42
         DB10(6,J1) = DD41
         DB10(7,J1) = DD40
         DB10(8,J1) = DD39
         DB10(9,J1) = DD46
        END DO
        II3 = ID30(1,I1) * 3
        DO J1=2,II3
         DA10(J1) = DA20(J1-1) + DA30(J1)
         DD2 = DA10(J1+II3)
         DB20(9,J1) = DB10(8,J1-1) - DD2
         DB20(8,J1) = DB10(7,J1-1) - DD2
         DB20(7,J1) = DB10(6,J1-1) - DD2
         DB20(6,J1) = DB10(5,J1-1) - DD2
         DB20(5,J1) = DB10(4,J1-1) - DD2
         DB20(4,J1) = DB10(3,J1-1) - DD2
         DB20(3,J1) = DB10(2,J1-1) - DD2
         DB20(2,J1) = DB10(1,J1-1) - DD2
         DA20(J1+II3) = DA10(J1-1) - DA20(J1)
         DA30(J1+II3) = DA10(J1+II3) + DA30(J1-1)
        END DO
       END DO

       DD3 = DB10(2,1)
       DD4 = DB10(3,1)
       DD5 = DB10(4,1)
       DD6 = DB10(5,1)
       DO I1=2,3
        DO J1=2,ID30(1,I1)*3
         II4 = -J1
         DO K1=9,5,-4
          DC10(K1,J1,2) = DC10(K1,J1,2) + DC30(1-K1,1-J1,-2)
          DC10(K1,J1,3) = DC10(K1,J1,3) + DC30(1-K1,1-J1,-3)
          DC10(K1,J1,4) = DC10(K1,J1,4) + DC30(1-K1,1-J1,-4)
          DC10(K1,J1,5) = DC10(K1,J1,5) + DC30(1-K1,1-J1,-5)
          DC20(K1,J1,2) = DC20(K1-1,J1+1,2) - DC30(-K1,II4,-2)
          DC20(K1,J1,3) = DC20(K1-1,J1+1,3) - DC30(-K1,II4,-3)
          DC20(K1,J1,4) = DC20(K1-1,J1+1,4) - DC30(-K1,II4,-4)
          DC20(K1,J1,5) = DC20(K1-1,J1+1,5) - DC30(-K1,II4,-5)
          DC30(-K1,II4,-2) = DD3 + DC30(-K1,II4,-2)
          DC30(-K1,II4,-3) = DD4 + DC30(-K1,II4,-3)
          DC30(-K1,II4,-4) = DD5 + DC30(-K1,II4,-4)
          DC30(-K1,II4,-5) = DD6 + DC30(-K1,II4,-5)
          DC10(K1-1,J1,2) = DC10(K1-1,J1,2) + DC30(2-K1,1-J1,-2)
          DC10(K1-1,J1,3) = DC10(K1-1,J1,3) + DC30(2-K1,1-J1,-3)
          DC10(K1-1,J1,4) = DC10(K1-1,J1,4) + DC30(2-K1,1-J1,-4)
          DC10(K1-1,J1,5) = DC10(K1-1,J1,5) + DC30(2-K1,1-J1,-5)
          DC20(K1-1,J1,2) = DC20(K1-2,J1+1,2) - DC30(1-K1,II4,-2)
          DC20(K1-1,J1,3) = DC20(K1-2,J1+1,3) - DC30(1-K1,II4,-3)
          DC20(K1-1,J1,4) = DC20(K1-2,J1+1,4) - DC30(1-K1,II4,-4)
          DC20(K1-1,J1,5) = DC20(K1-2,J1+1,5) - DC30(1-K1,II4,-5)
          DC30(1-K1,II4,-2) = DD3 + DC30(1-K1,II4,-2)
          DC30(1-K1,II4,-3) = DD4 + DC30(1-K1,II4,-3)
          DC30(1-K1,II4,-4) = DD5 + DC30(1-K1,II4,-4)
          DC30(1-K1,II4,-5) = DD6 + DC30(1-K1,II4,-5)
          DC10(K1-2,J1,2) = DC10(K1-2,J1,2) + DC30(3-K1,1-J1,-2)
          DC10(K1-2,J1,3) = DC10(K1-2,J1,3) + DC30(3-K1,1-J1,-3)
          DC10(K1-2,J1,4) = DC10(K1-2,J1,4) + DC30(3-K1,1-J1,-4)
          DC10(K1-2,J1,5) = DC10(K1-2,J1,5) + DC30(3-K1,1-J1,-5)
          DC20(K1-2,J1,2) = DC20(K1-3,J1+1,2) - DC30(2-K1,II4,-2)
          DC20(K1-2,J1,3) = DC20(K1-3,J1+1,3) - DC30(2-K1,II4,-3)
          DC20(K1-2,J1,4) = DC20(K1-3,J1+1,4) - DC30(2-K1,II4,-4)
          DC20(K1-2,J1,5) = DC20(K1-3,J1+1,5) - DC30(2-K1,II4,-5)
          DC30(2-K1,II4,-2) = DD3 + DC30(2-K1,II4,-2)
          DC30(2-K1,II4,-3) = DD4 + DC30(2-K1,II4,-3)
          DC30(2-K1,II4,-4) = DD5 + DC30(2-K1,II4,-4)
          DC30(2-K1,II4,-5) = DD6 + DC30(2-K1,II4,-5)
          DC10(K1-3,J1,2) = DC10(K1-3,J1,2) + DC30(4-K1,1-J1,-2)
          DC10(K1-3,J1,3) = DC10(K1-3,J1,3) + DC30(4-K1,1-J1,-3)
          DC10(K1-3,J1,4) = DC10(K1-3,J1,4) + DC30(4-K1,1-J1,-4)
          DC10(K1-3,J1,5) = DC10(K1-3,J1,5) + DC30(4-K1,1-J1,-5)
          DC20(K1-3,J1,2) = DC20(K1-4,J1+1,2) - DC30(3-K1,II4,-2)
          DC20(K1-3,J1,3) = DC20(K1-4,J1+1,3) - DC30(3-K1,II4,-3)
          DC20(K1-3,J1,4) = DC20(K1-4,J1+1,4) - DC30(3-K1,II4,-4)
          DC20(K1-3,J1,5) = DC20(K1-4,J1+1,5) - DC30(3-K1,II4,-5)
          DC30(3-K1,II4,-2) = DD3 + DC30(3-K1,II4,-2)
          DC30(3-K1,II4,-3) = DD4 + DC30(3-K1,II4,-3)
          DC30(3-K1,II4,-4) = DD5 + DC30(3-K1,II4,-4)
          DC30(3-K1,II4,-5) = DD6 + DC30(3-K1,II4,-5)
         END DO
        END DO
       END DO

       DO I1=1,5
        II5 = -I1
        DO J1=10,1,-1
         DB20(I1,J1) = DB10(I1,J1) + DB30(II5,-J1)
         DB30(-J1,II5) = DB10(I1,J1) - DB20(I1,J1*2) * DD1
         DVAL1 = DMAX1 (DB20(I1,J1), DB30(II5,-J1))
         IF (DB10(I1,J1) .GT. DVAL1) THEN
          DA30(I1) = DA30(I1) + DVAL1
          DB10(I1+5,J1) = DVAL1
         END IF
        END DO
       END DO
       I = 6

       WRITE (6, *) ' (DA10) ', (DA10(K), K=1,20)
       WRITE (6, *) ' (DA20) ', (DA20(K), K=11,30)
       WRITE (6, *) ' (DA30) ', (DA30(K), K=11,30)
       WRITE (6, *) ' (DB10) ', DB10
       WRITE (6, *) ' (DB20) ', DB20
       WRITE (6, *) ' (DB30) ', ((DB30(I,J), I=-10,-1), J=-5,-1)
       WRITE (6, *) ' DVAL1 = ', DVAL1
       IF (DA30(15) .GT. DA10(15)) THEN
        NN = 2
       ELSE
        NN = 1
       END IF
       LL1 = MOD (1, NN) .EQ. 0 .OR. MOD (-1, NN) .EQ. 0 .OR. MOD (-1, 
     X   NN) .EQ. 0
       LL2 = MOD (-15, NN) .EQ. 0 .OR. MOD (15, NN) .EQ. 0 .OR. MOD (15
     X   , NN) .EQ. 0
       DO III=10,9,-1
        DO J1=2,10
         II6 = -J1
         DO I1=2,8,NN
          DB30(-I1,II6) = DB10(I1,J1+NN) + DB20(I1,J1+NN)
         END DO
        END DO
        DO I1=2,8,NN
         DO J1=2,8,3
          DD47 = DMIN1 (DB10(I1,J1), DB20(J1,I1))
          DD48 = DMIN1 (DB10(I1,J1+1), DB20(J1+1,I1))
          DD49 = DMIN1 (DB10(I1,J1+2), DB20(J1+2,I1))
          DB10(I1,J1+2) = DD49
          DB10(I1,J1+1) = DD48
          DB10(I1,J1) = DD47
         END DO
        END DO
        IF (LL1) THEN
         DO K1=1,3
          II7 = -(K1 + NN)
          II11 = -(K1 + NN)
          II9 = -K1
          II13 = -K1
          DO I1=2,8,NN
           II8 = -I1
           DO J1=2,8,3
            DC10(I1,J1,K1) = DC20(I1,J1+NN,K1) + DC30(II8,-J1,II7)
            DC10(I1,J1+1,K1) = DC20(I1,J1+NN+1,K1) + DC30(II8,-1-J1,II7)
            DC10(I1,J1+2,K1) = DC20(I1,J1+NN+2,K1) + DC30(II8,-2-J1,II7)
           END DO
           II10 = -I1
           DO J1=2,8,3
            DC20(I1,J1,K1) = DC10(I1-1,J1-1,K1) - DC30(II10,J1*(-2),II9)
            DC20(I1,J1+1,K1) = DC10(I1-1,J1,K1) - DC30(II10,J1*(-2)-2,
     X        II9)
            DC20(I1,J1+2,K1) = DC10(I1-1,J1+1,K1) - DC30(II10,J1*(-2)-4,
     X        II9)
           END DO
           II12 = -I1
           DO J1=2,8,3
            DC30(II12,-J1,II13) = DC20(I1-1,J1,K1) + DC30(II12,J1*(-2),
     X        II11)
            DC30(II12,-1-J1,II13) = DC20(I1-1,J1+1,K1) + DC30(II12,J1*(
     X        -2)-2,II11)
            DC30(II12,-2-J1,II13) = DC20(I1-1,J1+2,K1) + DC30(II12,J1*(
     X        -2)-4,II11)
           END DO
          END DO
         END DO
        ELSE
C$OMP PARALLEL SHARED (NN,DC10,DC20,DC30) PRIVATE (II14,II15,II16,II17,
C$OMP& II18,II19,II20,I1,K1,J1)
C$OMP DO 
         DO I1=2,8,NN
          II15 = -I1
          II17 = -I1
          II19 = -I1
          DO K1=1,3
           II14 = -(K1 + NN)
           DO J1=2,8,3
            DC10(I1,J1,K1) = DC20(I1,J1+NN,K1) + DC30(II15,-J1,II14)
            DC10(I1,J1+1,K1) = DC20(I1,J1+NN+1,K1) + DC30(II15,-1-J1,
     X        II14)
            DC10(I1,J1+2,K1) = DC20(I1,J1+NN+2,K1) + DC30(II15,-2-J1,
     X        II14)
           END DO
           II16 = -K1
           DO J1=2,8,3
            DC20(I1,J1,K1) = DC10(I1-1,J1-1,K1) - DC30(II17,J1*(-2),II16
     X        )
            DC20(I1,J1+1,K1) = DC10(I1-1,J1,K1) - DC30(II17,J1*(-2)-2,
     X        II16)
            DC20(I1,J1+2,K1) = DC10(I1-1,J1+1,K1) - DC30(II17,J1*(-2)-4,
     X        II16)
           END DO
           II18 = -(K1 + NN)
           II20 = -K1
           DO J1=2,8,3
            DC30(II19,-J1,II20) = DC20(I1-1,J1,K1) + DC30(II19,J1*(-2),
     X        II18)
            DC30(II19,-1-J1,II20) = DC20(I1-1,J1+1,K1) + DC30(II19,J1*(
     X        -2)-2,II18)
            DC30(II19,-2-J1,II20) = DC20(I1-1,J1+2,K1) + DC30(II19,J1*(
     X        -2)-4,II18)
           END DO
          END DO
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
        END IF
        IF (LL2) THEN
         DO I1=2,8,NN
          IF (DA10(I1) .LE. DA20(I1) .OR. DA10(I1) .GE. DA30(I1)) THEN
           LD10(I1) = .TRUE.
          ELSE
           LD10(I1+15) = .NOT.LD10(I1+15)
          END IF
         END DO
        ELSE
         DO I1=2,8,NN
          IF (DA10(I1) .LE. DA20(I1) .OR. DA10(I1) .GE. DA30(I1)) THEN
           LD10(I1) = .TRUE.
          ELSE
           LD10(I1+15) = .NOT.LD10(I1+15)
          END IF
         END DO
        END IF

        DVAL1 = DA10(III)
        DVAL2 = DB10(III,1)
        DVAL3 = DC10(III,1,1)
        NNN = III
        CALL SUB1 (DA10,DA20,DA30,NNN)
       END DO

       WRITE (6, *) ' (DB10) ', ((DB10(I,J), I=1,10), J=1,10)
       WRITE (6, *) ' (DB30) ', ((DB30(I,J), I=-10,-1), J=-10,-1)
       WRITE (6, *) ' (DC10) ', DC10
       WRITE (6, *) ' (DC20) ', DC20
       WRITE (6, *) ' (DC30) ', (((DC30(I,J,K), I=-10,-1), J=-10,-1), K=
     X   -3,-1)
       WRITE (6, *) ' (LD10) ', LD10

       STOP 
      END

      SUBROUTINE SUB1 ( DIM1, DIM2, DIM3, NN )
       IMPLICIT REAL*8 (D), INTEGER*4 (I)
       DIMENSION ID30(20,20), ID20(20,20), ID10(20,20)
       COMMON /AA/ ID10, ID20, ID30
       COMMON /BB/ DVAL1, DVAL2, DVAL3
       COMMON /CC/ ICNT1, ICNT2
       DIMENSION DIM1(NN), DIM2(NN), DIM3(NN)
       INTEGER II11, II10, II9, II8, II7, II6, II5, II4, II3, II2, II1, 
     X   I1
       DOUBLE PRECISION DD5, DD4, DD3, DD2, DD1
       INTEGER ID305 (20), ID304 (20), ID303 (20), ID302 (20), ID301 (20
     X   )
       ICNT1 = 0
       II4 = NN / 4
       II3 = II4 * 4 + 1
       II6 = NN / 4
       II5 = II6 * 4 + 1
       II1 = IDINT (DVAL3)
       II2 = IDINT (DVAL2)
C$OMP PARALLEL SHARED (NN,ID10,ICNT2,ID20,II2,II1,DVAL1,II3,ID30) 
C$OMP& PRIVATE (J,I1,ID301,II7,ID302,II8,ID303,II9,ID304,II10,ID305,II11
C$OMP& )
       DO II7=1,20
        ID301(II7) = 0
       END DO
       DO II8=1,20
        ID302(II8) = 0
       END DO
       DO II9=1,20
        ID303(II9) = 0
       END DO
       DO II10=1,20
        ID304(II10) = 0
       END DO
       DO II11=1,20
        ID305(II11) = 0
       END DO
C$OMP DO 
       DO J=1,20
        DO I1=1,NN-3,4
         ID10(I1,J) = ID10(I1,J) - ICNT2
         ID20(I1,J) = ID20(I1,J) + II2 - II1 * IDINT (DVAL1)
         ID301(I1) = ID301(I1) + MOD (ID30(I1,J), IDINT (DVAL1))
         ID10(I1+1,J) = ID10(I1+1,J) - ICNT2
         ID20(I1+1,J) = ID20(I1+1,J) + II2 - II1 * IDINT (DVAL1)
         ID302(I1+1) = ID302(I1+1) + MOD (ID30(I1+1,J), IDINT (DVAL1))
         ID10(I1+2,J) = ID10(I1+2,J) - ICNT2
         ID20(I1+2,J) = ID20(I1+2,J) + II2 - II1 * IDINT (DVAL1)
         ID303(I1+2) = ID303(I1+2) + MOD (ID30(I1+2,J), IDINT (DVAL1))
         ID10(I1+3,J) = ID10(I1+3,J) - ICNT2
         ID20(I1+3,J) = ID20(I1+3,J) + II2 - II1 * IDINT (DVAL1)
         ID304(I1+3) = ID304(I1+3) + MOD (ID30(I1+3,J), IDINT (DVAL1))
        END DO
        DO I1=II3,NN,1
         ID10(I1,J) = ID10(I1,J) - ICNT2
         ID20(I1,J) = ID20(I1,J) + II2 - II1 * IDINT (DVAL1)
         ID305(I1) = ID305(I1) + MOD (ID30(I1,J), IDINT (DVAL1))
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP CRITICAL (II12)
       DO II7=1,20
        ID30(II7,1) = ID30(II7,1) + ID301(II7)
       END DO
       DO II8=1,20
        ID30(II8,1) = ID30(II8,1) + ID302(II8)
       END DO
       DO II9=1,20
        ID30(II9,1) = ID30(II9,1) + ID303(II9)
       END DO
       DO II10=1,20
        ID30(II10,1) = ID30(II10,1) + ID304(II10)
       END DO
       DO II11=1,20
        ID30(II11,1) = ID30(II11,1) + ID305(II11)
       END DO
C$OMP END CRITICAL (II12)
C$OMP END PARALLEL 
       DO I1=1,NN-3,4
        DD1 = DMAX1 (DIM1(I1), DIM2(I1), DIM3(I1))
        DD2 = DMAX1 (DIM1(I1+1), DIM2(I1+1), DIM3(I1+1))
        DD3 = DMAX1 (DIM1(I1+2), DIM2(I1+2), DIM3(I1+2))
        DD4 = DMAX1 (DIM1(I1+3), DIM2(I1+3), DIM3(I1+3))
        DIM1(I1+3) = DD4
        DIM1(I1+2) = DD3
        DIM1(I1+1) = DD2
        DIM1(I1) = DD1
       END DO
       DO I1=II5,NN,1
        DD5 = DMAX1 (DIM1(I1), DIM2(I1), DIM3(I1))
        DIM1(I1) = DD5
       END DO
       I = MAX0 (NN, 0) + 1

       WRITE (6, *) ' (ID30)  ', (ID30(I,1), I=1,NN)
       RETURN 
      END
