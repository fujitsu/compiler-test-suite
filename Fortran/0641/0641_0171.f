      PROGRAM MAIN
       REAL*8 R10(10), R11(10), R12(10)
       REAL*8 R20(10,10), R21(10,10)
       REAL*8 R30(10,10,10), R31(10,10,10), R32(10,10,10), R33(10,10,10)
       REAL*8 R40(10,10,10,10), R41(10,10,10,10)
       INTEGER L1, K1, J1, I1
       DOUBLE PRECISION DD81, DD80, DD79, DD78, DD77, DD76, DD75, DD74, 
     X   DD73, DD72, DD71, DD70, DD69, DD68, DD67, DD66, DD65, DD64, 
     X   DD63, DD62, DD61, DD60, DD59, DD58, DD57, DD56, DD55, DD54, 
     X   DD53, DD52, DD51, DD50, DD49, DD48, DD47, DD46, DD45, DD44, 
     X   DD43, DD42
       DOUBLE PRECISION DD41, DD40, DD39, DD38, DD37, DD36, DD35, DD34, 
     X   DD33, DD32, DD31, DD30, DD29, DD28, DD27, DD26, DD25, DD24, 
     X   DD23, DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, 
     X   DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2
       DOUBLE PRECISION DD1

C$OMP PARALLEL SHARED (R12,R21,R31,R32,R41) PRIVATE (DD1,DD2,DD3,DD4,DD5
C$OMP& ,I1,J1,K1,L1)
C$OMP DO 
       DO I1=1,6,5
        DO J1=1,10
         DO K1=1,10
          DO L1=1,6,5
           DD1 = I1
           DD2 = I1 + 1
           DD3 = I1 + 2
           DD4 = I1 + 3
           DD5 = I1 + 4
           DD1 = I1
           DD2 = I1 + 1
           DD3 = I1 + 2
           DD4 = I1 + 3
           DD5 = I1 + 4
           DD1 = I1
           DD2 = I1 + 1
           DD3 = I1 + 2
           DD4 = I1 + 3
           DD5 = I1 + 4
           DD1 = I1
           DD2 = I1 + 1
           DD3 = I1 + 2
           DD4 = I1 + 3
           DD5 = I1 + 4
           DD1 = I1
           DD2 = I1 + 1
           DD3 = I1 + 2
           DD4 = I1 + 3
           DD5 = I1 + 4
          END DO
         END DO
        END DO
        R12(I1) = DD1
        R12(I1+1) = DD2
        R12(I1+2) = DD3
        R12(I1+3) = DD4
        R12(I1+4) = DD5
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO J1=1,10
        DO K1=1,10
         DO L1=1,10

          DO I1=1,7,4
           R21(I1,J1) = I1 * J1
           R21(I1+1,J1) = (I1 + 1) * J1
           R21(I1+2,J1) = (I1 + 2) * J1
           R21(I1+3,J1) = (I1 + 3) * J1
          END DO
          R21(9,J1) = J1 * 9
          R21(10,J1) = J1 * 10
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K1=1,10
        DO J1=1,10
         DO L1=1,10

          DO I1=1,7,4
           R31(I1,J1,K1) = K1 + I1 + J1
           R31(I1+1,J1,K1) = K1 + I1 + J1 + 1
           R31(I1+2,J1,K1) = K1 + I1 + J1 + 2
           R31(I1+3,J1,K1) = K1 + I1 + J1 + 3
           R32(I1,J1,K1) = K1 * I1 + J1
           R32(I1+1,J1,K1) = K1 * (I1 + 1) + J1
           R32(I1+2,J1,K1) = K1 * (I1 + 2) + J1
           R32(I1+3,J1,K1) = K1 * (I1 + 3) + J1
          END DO
          R31(9,J1,K1) = K1 + J1 + 9
          R31(10,J1,K1) = K1 + J1 + 10
          R32(9,J1,K1) = K1 * 9 + J1
          R32(10,J1,K1) = K1 * 10 + J1
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO L1=1,10
        DO K1=1,7,4
         DO J1=1,10

          DO I1=1,6,5
           R41(I1,J1,K1,L1) = K1 + I1 + J1 + L1
           R41(I1+1,J1,K1,L1) = K1 + I1 + J1 + L1 + 1
           R41(I1+2,J1,K1,L1) = K1 + I1 + J1 + L1 + 2
           R41(I1+3,J1,K1,L1) = K1 + I1 + J1 + L1 + 3
           R41(I1+4,J1,K1,L1) = K1 + I1 + J1 + L1 + 4
           R41(I1,J1,K1+1,L1) = K1 + I1 + J1 + L1 + 1
           R41(I1+1,J1,K1+1,L1) = K1 + I1 + J1 + L1 + 2
           R41(I1+2,J1,K1+1,L1) = K1 + I1 + J1 + L1 + 3
           R41(I1+3,J1,K1+1,L1) = K1 + I1 + J1 + L1 + 4
           R41(I1+4,J1,K1+1,L1) = K1 + I1 + J1 + L1 + 5
           R41(I1,J1,K1+2,L1) = K1 + I1 + J1 + L1 + 2
           R41(I1+1,J1,K1+2,L1) = K1 + I1 + J1 + L1 + 3
           R41(I1+2,J1,K1+2,L1) = K1 + I1 + J1 + L1 + 4
           R41(I1+3,J1,K1+2,L1) = K1 + I1 + J1 + L1 + 5
           R41(I1+4,J1,K1+2,L1) = K1 + I1 + J1 + L1 + 6
           R41(I1,J1,K1+3,L1) = K1 + I1 + J1 + L1 + 3
           R41(I1+1,J1,K1+3,L1) = K1 + I1 + J1 + L1 + 4
           R41(I1+2,J1,K1+3,L1) = K1 + I1 + J1 + L1 + 5
           R41(I1+3,J1,K1+3,L1) = K1 + I1 + J1 + L1 + 6
           R41(I1+4,J1,K1+3,L1) = K1 + I1 + J1 + L1 + 7
          END DO
         END DO
        END DO
        DO K1=9,10,1
         DO J1=1,10

          DO I1=1,6,5
           R41(I1,J1,K1,L1) = K1 + I1 + J1 + L1
           R41(I1+1,J1,K1,L1) = K1 + I1 + J1 + L1 + 1
           R41(I1+2,J1,K1,L1) = K1 + I1 + J1 + L1 + 2
           R41(I1+3,J1,K1,L1) = K1 + I1 + J1 + L1 + 3
           R41(I1+4,J1,K1,L1) = K1 + I1 + J1 + L1 + 4
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) '----- TEST NO.1 ----- '
       DO I1=1,6,5
        R10(I1) = FLOAT (I1)
        R10(I1+1) = FLOAT (I1 + 1)
        R10(I1+2) = FLOAT (I1 + 2)
        R10(I1+3) = FLOAT (I1 + 3)
        R10(I1+4) = FLOAT (I1 + 4)
        R11(I1) = 11 - R12(I1)
        R11(I1+1) = 11 - R12(I1+1)
        R11(I1+2) = 11 - R12(I1+2)
        R11(I1+3) = 11 - R12(I1+3)
        R11(I1+4) = 11 - R12(I1+4)
       END DO
       DO J1=1,7,4
        DO I1=1,6,5
         DD13 = R21(I1,J1)
         DD15 = R21(I1+1,J1)
         DD17 = R21(I1+2,J1)
         DD19 = R21(I1+3,J1)
         DD21 = R21(I1+4,J1)
         DD23 = R21(I1,J1+1)
         DD25 = R21(I1+1,J1+1)
         DD27 = R21(I1+2,J1+1)
         DD29 = R21(I1+3,J1+1)
         DD31 = R21(I1+4,J1+1)
         DD33 = R21(I1,J1+2)
         DD35 = R21(I1+1,J1+2)
         DD37 = R21(I1+2,J1+2)
         DD39 = R21(I1+3,J1+2)
         DD41 = R21(I1+4,J1+2)
         DD43 = R21(I1,J1+3)
         DD45 = R21(I1+1,J1+3)
         DD47 = R21(I1+2,J1+3)
         DD49 = R21(I1+3,J1+3)
         DD51 = R21(I1+4,J1+3)
         DD12 = DD13
         DD14 = DD15
         DD16 = DD17
         DD18 = DD19
         DD20 = DD21
         DD22 = DD23
         DD24 = DD25
         DD26 = DD27
         DD28 = DD29
         DD30 = DD31
         DD32 = DD33
         DD34 = DD35
         DD36 = DD37
         DD38 = DD39
         DD40 = DD41
         DD42 = DD43
         DD44 = DD45
         DD46 = DD47
         DD48 = DD49
         DD50 = DD51
         R21(I1+4,J1+3) = DD50
         R21(I1+3,J1+3) = DD48
         R21(I1+2,J1+3) = DD46
         R21(I1+1,J1+3) = DD44
         R21(I1,J1+3) = DD42
         R21(I1+4,J1+2) = DD40
         R21(I1+3,J1+2) = DD38
         R21(I1+2,J1+2) = DD36
         R21(I1+1,J1+2) = DD34
         R21(I1,J1+2) = DD32
         R21(I1+4,J1+1) = DD30
         R21(I1+3,J1+1) = DD28
         R21(I1+2,J1+1) = DD26
         R21(I1+1,J1+1) = DD24
         R21(I1,J1+1) = DD22
         R21(I1+4,J1) = DD20
         R21(I1+3,J1) = DD18
         R21(I1+2,J1) = DD16
         R21(I1+1,J1) = DD14
         R21(I1,J1) = DD12
         R20(I1+4,J1+3) = DD51
         R20(I1+3,J1+3) = DD49
         R20(I1+2,J1+3) = DD47
         R20(I1+1,J1+3) = DD45
         R20(I1,J1+3) = DD43
         R20(I1+4,J1+2) = DD41
         R20(I1+3,J1+2) = DD39
         R20(I1+2,J1+2) = DD37
         R20(I1+1,J1+2) = DD35
         R20(I1,J1+2) = DD33
         R20(I1+4,J1+1) = DD31
         R20(I1+3,J1+1) = DD29
         R20(I1+2,J1+1) = DD27
         R20(I1+1,J1+1) = DD25
         R20(I1,J1+1) = DD23
         R20(I1+4,J1) = DD21
         R20(I1+3,J1) = DD19
         R20(I1+2,J1) = DD17
         R20(I1+1,J1) = DD15
         R20(I1,J1) = DD13
        END DO
       END DO
       DO J1=9,10,1
        DO I1=1,6,5
         DD53 = R21(I1,J1)
         DD55 = R21(I1+1,J1)
         DD57 = R21(I1+2,J1)
         DD59 = R21(I1+3,J1)
         DD61 = R21(I1+4,J1)
         DD52 = DD53
         DD54 = DD55
         DD56 = DD57
         DD58 = DD59
         DD60 = DD61
         R21(I1+4,J1) = DD60
         R21(I1+3,J1) = DD58
         R21(I1+2,J1) = DD56
         R21(I1+1,J1) = DD54
         R21(I1,J1) = DD52
         R20(I1+4,J1) = DD61
         R20(I1+3,J1) = DD59
         R20(I1+2,J1) = DD57
         R20(I1+1,J1) = DD55
         R20(I1,J1) = DD53
        END DO
       END DO
       DO I1=1,10
        DD11 = R10(I1)
        DO J1=1,6,5
         DD6 = R20(I1,J1)
         DD7 = R20(I1,J1+1)
         DD8 = R20(I1,J1+2)
         DD9 = R20(I1,J1+3)
         DD10 = R20(I1,J1+4)
         DD63 = R31(I1,J1,1) + DD6
         DD65 = R31(I1,J1,2) + DD6
         DD67 = R31(I1,J1+1,1) + DD7
         DD69 = R31(I1,J1+1,2) + DD7
         DD71 = R31(I1,J1+2,1) + DD8
         DD73 = R31(I1,J1+2,2) + DD8
         DD75 = R31(I1,J1+3,1) + DD9
         DD77 = R31(I1,J1+3,2) + DD9
         DD79 = R31(I1,J1+4,1) + DD10
         DD81 = R31(I1,J1+4,2) + DD10
         DD62 = DD63 + DD11
         DD64 = DD65 + DD11
         DD66 = DD67 + DD11
         DD68 = DD69 + DD11
         DD70 = DD71 + DD11
         DD72 = DD73 + DD11
         DD74 = DD75 + DD11
         DD76 = DD77 + DD11
         DD78 = DD79 + DD11
         DD80 = DD81 + DD11
         R31(I1,J1+4,2) = DD80
         R31(I1,J1+4,1) = DD78
         R31(I1,J1+3,2) = DD76
         R31(I1,J1+3,1) = DD74
         R31(I1,J1+2,2) = DD72
         R31(I1,J1+2,1) = DD70
         R31(I1,J1+1,2) = DD68
         R31(I1,J1+1,1) = DD66
         R31(I1,J1,2) = DD64
         R31(I1,J1,1) = DD62
         R30(I1,J1+4,2) = DD81
         R30(I1,J1+4,1) = DD79
         R30(I1,J1+3,2) = DD77
         R30(I1,J1+3,1) = DD75
         R30(I1,J1+2,2) = DD73
         R30(I1,J1+2,1) = DD71
         R30(I1,J1+1,2) = DD69
         R30(I1,J1+1,1) = DD67
         R30(I1,J1,2) = DD65
         R30(I1,J1,1) = DD63
        END DO
        DO L1=1,10
         DO K1=1,6,5
          R31(K1,1,L1) = R32(K1,1,L1) * 2.
          R31(K1+1,1,L1) = R32(K1+1,1,L1) * 2.
          R31(K1+2,1,L1) = R32(K1+2,1,L1) * 2.
          R31(K1+3,1,L1) = R32(K1+3,1,L1) * 2.
          R31(K1+4,1,L1) = R32(K1+4,1,L1) * 2.
          R31(K1,2,L1) = R32(K1,2,L1) * 2.
          R31(K1+1,2,L1) = R32(K1+1,2,L1) * 2.
          R31(K1+2,2,L1) = R32(K1+2,2,L1) * 2.
          R31(K1+3,2,L1) = R32(K1+3,2,L1) * 2.
          R31(K1+4,2,L1) = R32(K1+4,2,L1) * 2.
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (R40,R41,R30) PRIVATE (L1,J1,I1,K1)
       DO K1=1,2
C$OMP DO 
        DO L1=1,10
         DO J1=1,7,4
          DO I1=1,6,5
           R40(I1,J1,K1,L1) = R41(I1,J1,K1,L1) + R30(I1,J1,K1)
           R40(I1+1,J1,K1,L1) = R41(I1+1,J1,K1,L1) + R30(I1+1,J1,K1)
           R40(I1+2,J1,K1,L1) = R41(I1+2,J1,K1,L1) + R30(I1+2,J1,K1)
           R40(I1+3,J1,K1,L1) = R41(I1+3,J1,K1,L1) + R30(I1+3,J1,K1)
           R40(I1+4,J1,K1,L1) = R41(I1+4,J1,K1,L1) + R30(I1+4,J1,K1)
           R40(I1,J1+1,K1,L1) = R41(I1,J1+1,K1,L1) + R30(I1,J1+1,K1)
           R40(I1+1,J1+1,K1,L1) = R41(I1+1,J1+1,K1,L1) + R30(I1+1,J1+1,
     X       K1)
           R40(I1+2,J1+1,K1,L1) = R41(I1+2,J1+1,K1,L1) + R30(I1+2,J1+1,
     X       K1)
           R40(I1+3,J1+1,K1,L1) = R41(I1+3,J1+1,K1,L1) + R30(I1+3,J1+1,
     X       K1)
           R40(I1+4,J1+1,K1,L1) = R41(I1+4,J1+1,K1,L1) + R30(I1+4,J1+1,
     X       K1)
           R40(I1,J1+2,K1,L1) = R41(I1,J1+2,K1,L1) + R30(I1,J1+2,K1)
           R40(I1+1,J1+2,K1,L1) = R41(I1+1,J1+2,K1,L1) + R30(I1+1,J1+2,
     X       K1)
           R40(I1+2,J1+2,K1,L1) = R41(I1+2,J1+2,K1,L1) + R30(I1+2,J1+2,
     X       K1)
           R40(I1+3,J1+2,K1,L1) = R41(I1+3,J1+2,K1,L1) + R30(I1+3,J1+2,
     X       K1)
           R40(I1+4,J1+2,K1,L1) = R41(I1+4,J1+2,K1,L1) + R30(I1+4,J1+2,
     X       K1)
           R40(I1,J1+3,K1,L1) = R41(I1,J1+3,K1,L1) + R30(I1,J1+3,K1)
           R40(I1+1,J1+3,K1,L1) = R41(I1+1,J1+3,K1,L1) + R30(I1+1,J1+3,
     X       K1)
           R40(I1+2,J1+3,K1,L1) = R41(I1+2,J1+3,K1,L1) + R30(I1+2,J1+3,
     X       K1)
           R40(I1+3,J1+3,K1,L1) = R41(I1+3,J1+3,K1,L1) + R30(I1+3,J1+3,
     X       K1)
           R40(I1+4,J1+3,K1,L1) = R41(I1+4,J1+3,K1,L1) + R30(I1+4,J1+3,
     X       K1)
          END DO
         END DO
         DO I1=1,6,5
          R40(I1,9,K1,L1) = R41(I1,9,K1,L1) + R30(I1,9,K1)
          R40(I1+1,9,K1,L1) = R41(I1+1,9,K1,L1) + R30(I1+1,9,K1)
          R40(I1+2,9,K1,L1) = R41(I1+2,9,K1,L1) + R30(I1+2,9,K1)
          R40(I1+3,9,K1,L1) = R41(I1+3,9,K1,L1) + R30(I1+3,9,K1)
          R40(I1+4,9,K1,L1) = R41(I1+4,9,K1,L1) + R30(I1+4,9,K1)
          R40(I1,10,K1,L1) = R41(I1,10,K1,L1) + R30(I1,10,K1)
          R40(I1+1,10,K1,L1) = R41(I1+1,10,K1,L1) + R30(I1+1,10,K1)
          R40(I1+2,10,K1,L1) = R41(I1+2,10,K1,L1) + R30(I1+2,10,K1)
          R40(I1+3,10,K1,L1) = R41(I1+3,10,K1,L1) + R30(I1+3,10,K1)
          R40(I1+4,10,K1,L1) = R41(I1+4,10,K1,L1) + R30(I1+4,10,K1)
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       END DO
C$OMP END PARALLEL 
       J = 3
       I = 11
       WRITE (6, *) ' I = ', 11, ' J = ', J
       WRITE (6, *) ' R10 = ', R10
       WRITE (6, *) ' R20 = ', ((R20(I,J), I=1,2), J=4,6)
       WRITE (6, *) ' R30 = ', (((R30(I,J,K), I=1,2), J=4,6), K=1,2)
       WRITE (6, *) ' R40 = ', ((((R40(I,J,K,L), I=1,2), J=4,6), K=1,2)
     X   , L=8,9)
       WRITE (6, *) ' R31 = ', (((R31(I,J,K), I=2,3), J=7,8), K=9,10)
       WRITE (6, *) ' R21 = ', ((R21(I,J), I=2,6), J=1,3)
       WRITE (6, *) ' R11 = ', R11
       WRITE (6, *) ' R31 = ', (((R31(I,J,K), I=5,6), J=7,8), K=1,2)

       WRITE (6, *) '----- TEST NO.2 ----- '
       DO I1=1,10

        DO J1=1,10
         R30(I1,J1,1) = R31(I1,J1,1)
         R30(I1,J1,2) = R31(I1,J1,2)
        END DO

        DO L1=1,10
         DO K1=1,6,5
          R31(K1,1,L1) = R32(K1,1,L1) * 2.
          R31(K1+1,1,L1) = R32(K1+1,1,L1) * 2.
          R31(K1+2,1,L1) = R32(K1+2,1,L1) * 2.
          R31(K1+3,1,L1) = R32(K1+3,1,L1) * 2.
          R31(K1+4,1,L1) = R32(K1+4,1,L1) * 2.
          R31(K1,2,L1) = R32(K1,2,L1) * 2.
          R31(K1+1,2,L1) = R32(K1+1,2,L1) * 2.
          R31(K1+2,2,L1) = R32(K1+2,2,L1) * 2.
          R31(K1+3,2,L1) = R32(K1+3,2,L1) * 2.
          R31(K1+4,2,L1) = R32(K1+4,2,L1) * 2.
         END DO
        END DO

        DO L1=1,10
         DO K1=1,6,5
          R31(K1,1,L1) = R32(K1,1,L1) * 2.
          R31(K1+1,1,L1) = R32(K1+1,1,L1) * 2.
          R31(K1+2,1,L1) = R32(K1+2,1,L1) * 2.
          R31(K1+3,1,L1) = R32(K1+3,1,L1) * 2.
          R31(K1+4,1,L1) = R32(K1+4,1,L1) * 2.
          R31(K1,2,L1) = R32(K1,2,L1) * 2.
          R31(K1+1,2,L1) = R32(K1+1,2,L1) * 2.
          R31(K1+2,2,L1) = R32(K1+2,2,L1) * 2.
          R31(K1+3,2,L1) = R32(K1+3,2,L1) * 2.
          R31(K1+4,2,L1) = R32(K1+4,2,L1) * 2.
         END DO
        END DO
       END DO
C$OMP PARALLEL SHARED (R40,R41,R30) PRIVATE (L1,J1,I1,K1)
       DO K1=1,2
C$OMP DO 
        DO L1=1,10

         DO J1=1,7,4
          DO I1=1,6,5
           R40(I1,J1,K1,L1) = R41(I1,J1,K1,L1) + R30(I1,J1,K1)
           R40(I1+1,J1,K1,L1) = R41(I1+1,J1,K1,L1) + R30(I1+1,J1,K1)
           R40(I1+2,J1,K1,L1) = R41(I1+2,J1,K1,L1) + R30(I1+2,J1,K1)
           R40(I1+3,J1,K1,L1) = R41(I1+3,J1,K1,L1) + R30(I1+3,J1,K1)
           R40(I1+4,J1,K1,L1) = R41(I1+4,J1,K1,L1) + R30(I1+4,J1,K1)
           R40(I1,J1+1,K1,L1) = R41(I1,J1+1,K1,L1) + R30(I1,J1+1,K1)
           R40(I1+1,J1+1,K1,L1) = R41(I1+1,J1+1,K1,L1) + R30(I1+1,J1+1,
     X       K1)
           R40(I1+2,J1+1,K1,L1) = R41(I1+2,J1+1,K1,L1) + R30(I1+2,J1+1,
     X       K1)
           R40(I1+3,J1+1,K1,L1) = R41(I1+3,J1+1,K1,L1) + R30(I1+3,J1+1,
     X       K1)
           R40(I1+4,J1+1,K1,L1) = R41(I1+4,J1+1,K1,L1) + R30(I1+4,J1+1,
     X       K1)
           R40(I1,J1+2,K1,L1) = R41(I1,J1+2,K1,L1) + R30(I1,J1+2,K1)
           R40(I1+1,J1+2,K1,L1) = R41(I1+1,J1+2,K1,L1) + R30(I1+1,J1+2,
     X       K1)
           R40(I1+2,J1+2,K1,L1) = R41(I1+2,J1+2,K1,L1) + R30(I1+2,J1+2,
     X       K1)
           R40(I1+3,J1+2,K1,L1) = R41(I1+3,J1+2,K1,L1) + R30(I1+3,J1+2,
     X       K1)
           R40(I1+4,J1+2,K1,L1) = R41(I1+4,J1+2,K1,L1) + R30(I1+4,J1+2,
     X       K1)
           R40(I1,J1+3,K1,L1) = R41(I1,J1+3,K1,L1) + R30(I1,J1+3,K1)
           R40(I1+1,J1+3,K1,L1) = R41(I1+1,J1+3,K1,L1) + R30(I1+1,J1+3,
     X       K1)
           R40(I1+2,J1+3,K1,L1) = R41(I1+2,J1+3,K1,L1) + R30(I1+2,J1+3,
     X       K1)
           R40(I1+3,J1+3,K1,L1) = R41(I1+3,J1+3,K1,L1) + R30(I1+3,J1+3,
     X       K1)
           R40(I1+4,J1+3,K1,L1) = R41(I1+4,J1+3,K1,L1) + R30(I1+4,J1+3,
     X       K1)
          END DO
         END DO
         DO I1=1,6,5
          R40(I1,9,K1,L1) = R41(I1,9,K1,L1) + R30(I1,9,K1)
          R40(I1+1,9,K1,L1) = R41(I1+1,9,K1,L1) + R30(I1+1,9,K1)
          R40(I1+2,9,K1,L1) = R41(I1+2,9,K1,L1) + R30(I1+2,9,K1)
          R40(I1+3,9,K1,L1) = R41(I1+3,9,K1,L1) + R30(I1+3,9,K1)
          R40(I1+4,9,K1,L1) = R41(I1+4,9,K1,L1) + R30(I1+4,9,K1)
          R40(I1,10,K1,L1) = R41(I1,10,K1,L1) + R30(I1,10,K1)
          R40(I1+1,10,K1,L1) = R41(I1+1,10,K1,L1) + R30(I1+1,10,K1)
          R40(I1+2,10,K1,L1) = R41(I1+2,10,K1,L1) + R30(I1+2,10,K1)
          R40(I1+3,10,K1,L1) = R41(I1+3,10,K1,L1) + R30(I1+3,10,K1)
          R40(I1+4,10,K1,L1) = R41(I1+4,10,K1,L1) + R30(I1+4,10,K1)
         END DO
        END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       END DO
C$OMP END PARALLEL 
       DO K1=1,10
        DO I1=1,6,5
         R30(I1,1,K1) = R32(I1,1,K1) * 2.
         R30(I1+1,1,K1) = R32(I1+1,1,K1) * 2.
         R30(I1+2,1,K1) = R32(I1+2,1,K1) * 2.
         R30(I1+3,1,K1) = R32(I1+3,1,K1) * 2.
         R30(I1+4,1,K1) = R32(I1+4,1,K1) * 2.
         R30(I1,2,K1) = R32(I1,2,K1) * 2.
         R30(I1+1,2,K1) = R32(I1+1,2,K1) * 2.
         R30(I1+2,2,K1) = R32(I1+2,2,K1) * 2.
         R30(I1+3,2,K1) = R32(I1+3,2,K1) * 2.
         R30(I1+4,2,K1) = R32(I1+4,2,K1) * 2.
        END DO
       END DO
       DO K1=1,10
        DO I1=1,6,5
         R30(I1,1,K1) = R32(I1,1,K1) * 3.
         R30(I1+1,1,K1) = R32(I1+1,1,K1) * 3.
         R30(I1+2,1,K1) = R32(I1+2,1,K1) * 3.
         R30(I1+3,1,K1) = R32(I1+3,1,K1) * 3.
         R30(I1+4,1,K1) = R32(I1+4,1,K1) * 3.
         R30(I1,2,K1) = R32(I1,2,K1) * 3.
         R30(I1+1,2,K1) = R32(I1+1,2,K1) * 3.
         R30(I1+2,2,K1) = R32(I1+2,2,K1) * 3.
         R30(I1+3,2,K1) = R32(I1+3,2,K1) * 3.
         R30(I1+4,2,K1) = R32(I1+4,2,K1) * 3.
        END DO
       END DO
       J = 3
       I = 11
       WRITE (6, *) ' I = ', 11, ' J = ', J
       WRITE (6, *) ' R10 = ', R10
       WRITE (6, *) ' R20 = ', ((R20(I,J), I=1,2), J=4,6)
       WRITE (6, *) ' R30 = ', (((R30(I,J,K), I=1,2), J=4,6), K=1,2)
       WRITE (6, *) ' R40 = ', ((((R40(I,J,K,L), I=1,2), J=4,6), K=1,2)
     X   , L=8,9)
       WRITE (6, *) ' R31 = ', (((R31(I,J,K), I=2,3), J=7,8), K=9,10)
       WRITE (6, *) ' R21 = ', ((R21(I,J), I=2,6), J=1,3)
       WRITE (6, *) ' R11 = ', R11
       WRITE (6, *) ' R31 = ', (((R31(I,J,K), I=5,6), J=7,8), K=1,2)
       STOP 
      END
