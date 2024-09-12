      PROGRAM MAIN
       IMPLICIT REAL*8 (D)
       DIMENSION DA10(30), DA20(30), DA30(30), DB10(30,30), DB20(30,30),
     X    DB30(30,30), DM10(-30:-1,-30:-1), DM20(-30:-1,-30:-1), DM30(
     X   -30:-1,-30:-1)
       INTEGER IT3, IT2, IT1
       PARAMETER (IT3 = 3, IT2 = 2, IT1 = 1)
       DOUBLEPRECISION DD1
       PARAMETER (DD1 = 1D0 / 2D0)

       DATA DA10/30*1.D0/ 
       DATA DA20/30*2.D0/ 
       DATA DA30/30*3.D0/ 
       DATA DB10/900*10.D0/ 
       DATA DB20/900*9.D0/ 
       DATA DB30/900*8.D0/ 
       DATA DM10/900*4.D0/ 
       DATA DM20/900*5.D0/ 
       DATA DM30/900*6.D0/ 
       INTEGER II9, II8, II7, II6, II5, II4, II3, II2, II1, K2, J4, I4
       DOUBLE PRECISION DD72, DD71, DD70, DD69, DD68, DD67, DD66, DD65, 
     X   DD64, DD63, DD62, DD61, DD60, DD59, DD58, DD57, DD56, DD55, 
     X   DD54, DD53, DD52, DD51, DD50, DD49, DD48, DD47, DD46, DD45, 
     X   DD44, DD43, DD42, DD41, DD40, DD39, DD38, DD37, DD36, DD35, 
     X   DD34, DD33
       DOUBLE PRECISION DD32, DD31, DD30, DD29, DD28, DD27, DD26, DD25, 
     X   DD24, DD23, DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, 
     X   DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3
     X   , DD2

       DO I4=1,20,2
        DA10(I4) = DA20(I4) + DA30(I4+3)
        II5 = I4 / 4
        II4 = II5 * 4 + 1
        DO J4=1,I4-3,4
         DD22 = DB10(I4,J4) + DB20(I4,J4)
         DD23 = DB10(I4,J4+1) + DB20(I4,J4+1)
         DD24 = DB10(I4,J4+2) + DB20(I4,J4+2)
         DD19 = DB10(I4,J4+3) + DB20(I4,J4+3)
         DD32 = DD22 - DA10(J4)
         DD33 = DD23 - DA10(J4+1)
         DD34 = DD24 - DA10(J4+2)
         DD35 = DD19 - DA10(J4+3)
         DB10(I4,J4+3) = DD35
         DB10(I4,J4+2) = DD34
         DB10(I4,J4+1) = DD33
         DB10(I4,J4) = DD32
        END DO
        DO J4=II4,I4,1
         DD19 = DB10(I4,J4) + DB20(I4,J4)
         DD36 = DD19 - DA10(J4)
         DB10(I4,J4) = DD36
        END DO
       END DO
       I = 21
       WRITE (6, 99) ' (DA10) ', (DA10(K), K=1,20)
       WRITE (6, 99) ' (DB10) ', ((DB10(I,J), I=1,20,2), J=1,20)
   99  FORMAT(A,(8F8.3))
C$OMP PARALLEL SHARED (DM30,DM20,DM10,DB30,DB20) PRIVATE (II1,DD20,DD25,
C$OMP& DD26,DD27,DD28,DD37,DD38,DD39,DD40,DD41,DD42,DD43,DD44,DD45,K2,J4
C$OMP& )
C$OMP DO 
       DO K2=-30,-1
        II1 = -K2
        DO J4=-30,-9,10
         DD25 = DM30(J4,K2) * DD1
         DD26 = DM30(J4+2,K2) * DD1
         DD27 = DM30(J4+4,K2) * DD1
         DD28 = DM30(J4+6,K2) * DD1
         DD20 = DM30(J4+8,K2) * DD1
         DD37 = DM20(J4,K2) - DD25
         DD38 = DM20(J4+2,K2) - DD26
         DD39 = DM20(J4+4,K2) - DD27
         DD40 = DM20(J4+6,K2) - DD28
         DD41 = DM20(J4+8,K2) - DD20
         DM10(J4,K2) = DD37
         DD25 = DDIM (DB30(-J4,II1), DD37)
         DM10(J4+2,K2) = DD38
         DD26 = DDIM (DB30(-2-J4,II1), DD38)
         DM10(J4+4,K2) = DD39
         DD27 = DDIM (DB30(-4-J4,II1), DD39)
         DM10(J4+6,K2) = DD40
         DD28 = DDIM (DB30(-6-J4,II1), DD40)
         DM10(J4+8,K2) = DD41
         DD20 = DDIM (DB30(-8-J4,II1), DD41)
         DD42 = DB20(-J4,II1) + DD25
         DD43 = DB20(-2-J4,II1) + DD26
         DD44 = DB20(-4-J4,II1) + DD27
         DD45 = DB20(-6-J4,II1) + DD28
         DB20(-8-J4,II1) = DB20(-8-J4,II1) + DD20
         DB20(-6-J4,II1) = DD45
         DB20(-4-J4,II1) = DD44
         DB20(-2-J4,II1) = DD43
         DB20(-J4,II1) = DD42
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, 99) ' (DM10) ', DM10
       WRITE (6, 99) ' (DB20) ', DB20

       DO I1=30,21,-1
        DA20(I1) = DNINT (DSQRT (DA10(I1) * DA30(I1)))
        DO J1=I1,11,-1
         DB30(I1,J1) = DMAX1 (DB10(I1,J1), DB20(I1,J1)) - DA20(J1)
         II2 = J1
         IF (II2 .GT. 0) THEN
          DD2 = DB20(I1,J1)
          II7 = J1 / 4
          II6 = J1 + II7 * (-4)
          DO K1=J1,4,-4
           DD29 = DMIN1 (DB10(J1,K1), DD2)
           DD30 = DMIN1 (DB10(J1,K1-1), DD2)
           DD31 = DMIN1 (DB10(J1,K1-2), DD2)
           DD21 = DMIN1 (DB10(J1,K1-3), DD2)
           DD46 = DD29 * 2D0
           DD47 = DD30 * 2D0
           DD48 = DD31 * 2D0
           DD49 = DD21 * 2D0
           DB10(J1,K1-3) = DD49
           DB10(J1,K1-2) = DD48
           DB10(J1,K1-1) = DD47
           DB10(J1,K1) = DD46
          END DO
          DO K1=II6,1,-1
           DD21 = DMIN1 (DB10(J1,K1), DD2)
           DD50 = DD21 * 2D0
           DB10(J1,K1) = DD50
          END DO
         END IF
        END DO
        DA20(I1-20) = DA20(I1-10) + DA30(I1)
       END DO
       WRITE (6, 99) ' (DA20) ', (DA20(K), K=21,30)
       WRITE (6, 99) ' (DB30) ', ((DB30(I,J), I=21,30), J=11,30)
       WRITE (6, 99) ' (DB10) ', ((DB10(I,J), I=1,20), J=1,30)

       DO I2=2,10
        II3 = -I2
        II9 = (18 - I2) / 4
        II8 = I2 + II9 * 4 + 3
        DO J2=I2+3,17,4
         DB20(I2,J2) = DB10(I2,J2) - DM20(II3,-J2)
         DB20(I2,J2+1) = DB10(I2,J2+1) - DM20(II3,-1-J2)
         DB20(I2,J2+2) = DB10(I2,J2+2) - DM20(II3,-2-J2)
         DB20(I2,J2+3) = DB10(I2,J2+3) - DM20(II3,-3-J2)
        END DO
        DO J2=II8,20,1
         DB20(I2,J2) = DB10(I2,J2) - DM20(II3,-J2)
        END DO
       END DO


       DO I2=2,8,3
        DD51 = DMAX1 (DM30(1-I2,-I2), DM30(-I2,1-I2))
        DD52 = DMAX1 (DM30(-I2,-1-I2), DM30(-1-I2,-I2))
        DM30(-2-I2,-2-I2) = DMAX1 (DM30(-1-I2,-2-I2), DM30(-2-I2,-1-I2))
        DM30(-1-I2,-1-I2) = DD52
        DM30(-I2,-I2) = DD51
       END DO


       DO I2=2,8,3
        DM20(-1,-I2) = DM10(-I2,-1) - DM30(1-I2,1-I2)
        DM20(-1,-1-I2) = DM10(-1-I2,-1) - DM30(-I2,-I2)
        DM20(-1,-2-I2) = DM10(-2-I2,-1) - DM30(-1-I2,-1-I2)
       END DO
       WRITE (6, 99) ' (DB20) ', ((DB20(I,J), I=1,10), J=1,20)
       WRITE (6, 99) ' (DM20) ', (DM20(-1,I), I=-10,-1)
       WRITE (6, 99) ' (DM30) ', (DM30(I,I), I=-10,-1)

       DO I3=21,26,5
        DD53 = DM20(-I3,2-I3) + DM30(1-I3,-I3)
        DD54 = DM20(-1-I3,1-I3) + DM30(-I3,-1-I3)
        DD55 = DM20(-2-I3,-I3) + DM30(-1-I3,-2-I3)
        DD56 = DM20(-3-I3,-1-I3) + DM30(-2-I3,-3-I3)
        DD57 = DM20(-4-I3,-2-I3) + DM30(-3-I3,-4-I3)
        DD58 = DM10(20-I3,-I3) + DM20(-I3,20-I3)
        DD59 = DM10(19-I3,-1-I3) + DM20(-1-I3,19-I3)
        DD60 = DM10(18-I3,-2-I3) + DM20(-2-I3,18-I3)
        DD61 = DM10(17-I3,-3-I3) + DM20(-3-I3,17-I3)
        DD62 = DM10(16-I3,-4-I3) + DM20(-4-I3,16-I3)
        DM20(10-I3,10-I3) = DM10(10-I3,20-I3) - DM30(10-I3,-I3)
        DM20(9-I3,9-I3) = DM10(9-I3,19-I3) - DM30(9-I3,-1-I3)
        DM20(8-I3,8-I3) = DM10(8-I3,18-I3) - DM30(8-I3,-2-I3)
        DM20(7-I3,7-I3) = DM10(7-I3,17-I3) - DM30(7-I3,-3-I3)
        DM20(6-I3,6-I3) = DM10(6-I3,16-I3) - DM30(6-I3,-4-I3)
        DM30(16-I3,16-I3) = DD62
        DM30(17-I3,17-I3) = DD61
        DM30(18-I3,18-I3) = DD60
        DM30(19-I3,19-I3) = DD59
        DM30(20-I3,20-I3) = DD58
        DM10(-4-I3,-4-I3) = DD57
        DM10(-3-I3,-3-I3) = DD56
        DM10(-2-I3,-2-I3) = DD55
        DM10(-1-I3,-1-I3) = DD54
        DM10(-I3,-I3) = DD53
       END DO
       DO K3=1,6,5
        DO J3=20,14,-4
         DD3 = DB20(J3-3,K3)
         DD4 = DB20(J3-3,K3+1)
         DD5 = DB20(J3-3,K3+2)
         DD6 = DB20(J3-3,K3+3)
         DD7 = DB20(J3-3,K3+4)

         DO I3=21,29,2
          DD63 = DD3 + DB30(I3,J3-3)
          DD64 = DD3 + DB30(I3+1,J3-3)
          DD65 = DD4 + DB30(I3,J3-3)
          DD66 = DD4 + DB30(I3+1,J3-3)
          DD67 = DD5 + DB30(I3,J3-3)
          DD68 = DD5 + DB30(I3+1,J3-3)
          DD69 = DD6 + DB30(I3,J3-3)
          DD70 = DD6 + DB30(I3+1,J3-3)
          DD71 = DD7 + DB30(I3,J3-3)
          DD72 = DD7 + DB30(I3+1,J3-3)
          DB10(I3+1,K3+4) = DD72
          DB10(I3,K3+4) = DD71
          DB10(I3+1,K3+3) = DD70
          DB10(I3,K3+3) = DD69
          DB10(I3+1,K3+2) = DD68
          DB10(I3,K3+2) = DD67
          DB10(I3+1,K3+1) = DD66
          DB10(I3,K3+1) = DD65
          DB10(I3+1,K3) = DD64
          DB10(I3,K3) = DD63
         END DO
        END DO
        DO J3=12,11,-1
         DD8 = DB20(J3,K3)
         DD9 = DB20(J3,K3+1)
         DD10 = DB20(J3,K3+2)
         DD11 = DB20(J3,K3+3)
         DD12 = DB20(J3,K3+4)

         DO I3=21,26,5
          DB10(I3,K3) = DD8 + DB30(I3,J3)
          DB10(I3+1,K3) = DD8 + DB30(I3+1,J3)
          DB10(I3+2,K3) = DD8 + DB30(I3+2,J3)
          DB10(I3+3,K3) = DD8 + DB30(I3+3,J3)
          DB10(I3+4,K3) = DD8 + DB30(I3+4,J3)
          DB10(I3,K3+1) = DD9 + DB30(I3,J3)
          DB10(I3+1,K3+1) = DD9 + DB30(I3+1,J3)
          DB10(I3+2,K3+1) = DD9 + DB30(I3+2,J3)
          DB10(I3+3,K3+1) = DD9 + DB30(I3+3,J3)
          DB10(I3+4,K3+1) = DD9 + DB30(I3+4,J3)
          DB10(I3,K3+2) = DD10 + DB30(I3,J3)
          DB10(I3+1,K3+2) = DD10 + DB30(I3+1,J3)
          DB10(I3+2,K3+2) = DD10 + DB30(I3+2,J3)
          DB10(I3+3,K3+2) = DD10 + DB30(I3+3,J3)
          DB10(I3+4,K3+2) = DD10 + DB30(I3+4,J3)
          DB10(I3,K3+3) = DD11 + DB30(I3,J3)
          DB10(I3+1,K3+3) = DD11 + DB30(I3+1,J3)
          DB10(I3+2,K3+3) = DD11 + DB30(I3+2,J3)
          DB10(I3+3,K3+3) = DD11 + DB30(I3+3,J3)
          DB10(I3+4,K3+3) = DD11 + DB30(I3+4,J3)
          DB10(I3,K3+4) = DD12 + DB30(I3,J3)
          DB10(I3+1,K3+4) = DD12 + DB30(I3+1,J3)
          DB10(I3+2,K3+4) = DD12 + DB30(I3+2,J3)
          DB10(I3+3,K3+4) = DD12 + DB30(I3+3,J3)
          DB10(I3+4,K3+4) = DD12 + DB30(I3+4,J3)
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (DB20,DB30,DB10) PRIVATE (K3,I3,J3,DD13,DD14,DD15,
C$OMP& DD16,DD17,DD18)
C$OMP DO 
       DO K3=1,6,5

        DO I3=21,30
         DO J3=20,15,-5
          DB20(K3,J3) = DB30(J3,K3) - DB10(J3,K3)
          DB20(K3,J3-1) = DB30(J3-1,K3) - DB10(J3-1,K3)
          DB20(K3,J3-2) = DB30(J3-2,K3) - DB10(J3-2,K3)
          DB20(K3,J3-3) = DB30(J3-3,K3) - DB10(J3-3,K3)
          DB20(K3,J3-4) = DB30(J3-4,K3) - DB10(J3-4,K3)
          DB20(K3+1,J3) = DB30(J3,K3+1) - DB10(J3,K3+1)
          DB20(K3+1,J3-1) = DB30(J3-1,K3+1) - DB10(J3-1,K3+1)
          DB20(K3+1,J3-2) = DB30(J3-2,K3+1) - DB10(J3-2,K3+1)
          DB20(K3+1,J3-3) = DB30(J3-3,K3+1) - DB10(J3-3,K3+1)
          DB20(K3+1,J3-4) = DB30(J3-4,K3+1) - DB10(J3-4,K3+1)
          DB20(K3+2,J3) = DB30(J3,K3+2) - DB10(J3,K3+2)
          DB20(K3+2,J3-1) = DB30(J3-1,K3+2) - DB10(J3-1,K3+2)
          DB20(K3+2,J3-2) = DB30(J3-2,K3+2) - DB10(J3-2,K3+2)
          DB20(K3+2,J3-3) = DB30(J3-3,K3+2) - DB10(J3-3,K3+2)
          DB20(K3+2,J3-4) = DB30(J3-4,K3+2) - DB10(J3-4,K3+2)
          DB20(K3+3,J3) = DB30(J3,K3+3) - DB10(J3,K3+3)
          DB20(K3+3,J3-1) = DB30(J3-1,K3+3) - DB10(J3-1,K3+3)
          DB20(K3+3,J3-2) = DB30(J3-2,K3+3) - DB10(J3-2,K3+3)
          DB20(K3+3,J3-3) = DB30(J3-3,K3+3) - DB10(J3-3,K3+3)
          DB20(K3+3,J3-4) = DB30(J3-4,K3+3) - DB10(J3-4,K3+3)
          DB20(K3+4,J3) = DB30(J3,K3+4) - DB10(J3,K3+4)
          DB20(K3+4,J3-1) = DB30(J3-1,K3+4) - DB10(J3-1,K3+4)
          DB20(K3+4,J3-2) = DB30(J3-2,K3+4) - DB10(J3-2,K3+4)
          DB20(K3+4,J3-3) = DB30(J3-3,K3+4) - DB10(J3-3,K3+4)
          DB20(K3+4,J3-4) = DB30(J3-4,K3+4) - DB10(J3-4,K3+4)
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO I3=21,30
        DO K3=1,7,4
         DO J3=20,15,-5
          DD13 = DB10(J3,I3) * DB20(J3,K3)
          DD14 = DB10(J3,I3) * DB20(J3,K3+1)
          DD15 = DB10(J3,I3) * DB20(J3,K3+2)
          DD16 = DB10(J3,I3) * DB20(J3,K3+3)
          DD13 = DB10(J3-1,I3) * DB20(J3-1,K3)
          DD14 = DB10(J3-1,I3) * DB20(J3-1,K3+1)
          DD15 = DB10(J3-1,I3) * DB20(J3-1,K3+2)
          DD16 = DB10(J3-1,I3) * DB20(J3-1,K3+3)
          DD13 = DB10(J3-2,I3) * DB20(J3-2,K3)
          DD14 = DB10(J3-2,I3) * DB20(J3-2,K3+1)
          DD15 = DB10(J3-2,I3) * DB20(J3-2,K3+2)
          DD16 = DB10(J3-2,I3) * DB20(J3-2,K3+3)
          DD13 = DB10(J3-3,I3) * DB20(J3-3,K3)
          DD14 = DB10(J3-3,I3) * DB20(J3-3,K3+1)
          DD15 = DB10(J3-3,I3) * DB20(J3-3,K3+2)
          DD16 = DB10(J3-3,I3) * DB20(J3-3,K3+3)
          DD13 = DB10(J3-4,I3) * DB20(J3-4,K3)
          DD14 = DB10(J3-4,I3) * DB20(J3-4,K3+1)
          DD15 = DB10(J3-4,I3) * DB20(J3-4,K3+2)
          DD16 = DB10(J3-4,I3) * DB20(J3-4,K3+3)
         END DO
         DB30(K3,I3) = DD13
         DB30(K3+1,I3) = DD14
         DB30(K3+2,I3) = DD15
         DB30(K3+3,I3) = DD16
        END DO
        DO J3=20,15,-5
         DD17 = DB10(J3,I3) * DB20(J3,9)
         DD18 = DB10(J3,I3) * DB20(J3,10)
         DD17 = DB10(J3-1,I3) * DB20(J3-1,9)
         DD18 = DB10(J3-1,I3) * DB20(J3-1,10)
         DD17 = DB10(J3-2,I3) * DB20(J3-2,9)
         DD18 = DB10(J3-2,I3) * DB20(J3-2,10)
         DD17 = DB10(J3-3,I3) * DB20(J3-3,9)
         DD18 = DB10(J3-3,I3) * DB20(J3-3,10)
         DD17 = DB10(J3-4,I3) * DB20(J3-4,9)
         DD18 = DB10(J3-4,I3) * DB20(J3-4,10)
        END DO
        DB30(9,I3) = DD17
        DB30(10,I3) = DD18
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, 99) ' (DM10) ', (DM10(K,K), K=-30,-21)
       WRITE (6, 99) ' (DM20) ', (DM20(K,K), K=-10,-1)
       WRITE (6, 99) ' (DM30) ', (DM30(K,K), K=-20,-11)
       WRITE (6, 99) ' (DB10) ', ((DB10(I,J), I=21,30), J=1,10)
       WRITE (6, 99) ' (DB20) ', ((DB20(I,J), I=1,10), J=11,20)
       WRITE (6, 99) ' (DB30) ', ((DB30(I,J), I=1,10), J=20,30)

       STOP 
      END
