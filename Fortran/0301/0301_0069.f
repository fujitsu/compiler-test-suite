       REAL*8 R10(10), R11(10), R12(10)
       REAL*8 R20(10,10), R21(10,10)
       REAL*8 R30(10,10,10), R31(10,10,10), R32(10,10,10)
       REAL*8 R40(10,10,10,10)
       LOGICAL L11(10), L20(10,10)
       INTEGER II14, II13, II12, II11, II10, II9, II8, II7, II6, II5, 
     X   II4, II3, II2, II1, L1, K1, J1, I1
       REAL S2, S11
       DOUBLE PRECISION DD17, DD16, DD15, DD14, DD13, DD12, DD11, 
     X   DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       LOGICAL LL14, LL13, LL12, LL11, LL10, LL9, LL8, LL7, LL6, LL5, 
     X   LL4, LL3, LL2, LL1

       S1 = 0.

       DO I1=1,6,5
        LL8 = 0 .EQ. MOD (I1, 2)
        LL9 = 0 .EQ. MOD (I1 + 1, 2)
        LL10 = 0 .EQ. MOD (I1 + 2, 2)
        LL11 = 0 .EQ. MOD (I1 + 3, 2)
        LL12 = 0 .EQ. MOD (I1 + 4, 2)
        L11(I1) = .NOT.LL8
        L11(I1+1) = .NOT.LL9
        L11(I1+2) = .NOT.LL10
        L11(I1+3) = .NOT.LL11
        L11(I1+4) = .NOT.LL12
       END DO

       DO J1=1,7,4
        LL3 = 0 .EQ. MOD (J1, 2)
        LL4 = 0 .EQ. MOD (J1 + 1, 2)
        LL5 = 0 .EQ. MOD (J1 + 2, 2)
        LL6 = 0 .EQ. MOD (J1 + 3, 2)
        DO I1=1,6,5
         L20(I1,J1) = LL3
         L20(I1+1,J1) = LL3
         L20(I1+2,J1) = LL3
         L20(I1+3,J1) = LL3
         L20(I1+4,J1) = LL3
         L20(I1,J1+1) = LL4
         L20(I1+1,J1+1) = LL4
         L20(I1+2,J1+1) = LL4
         L20(I1+3,J1+1) = LL4
         L20(I1+4,J1+1) = LL4
         L20(I1,J1+2) = LL5
         L20(I1+1,J1+2) = LL5
         L20(I1+2,J1+2) = LL5
         L20(I1+3,J1+2) = LL5
         L20(I1+4,J1+2) = LL5
         L20(I1,J1+3) = LL6
         L20(I1+1,J1+3) = LL6
         L20(I1+2,J1+3) = LL6
         L20(I1+3,J1+3) = LL6
         L20(I1+4,J1+3) = LL6
        END DO
       END DO

       DO J1=9,10,1
        LL7 = 0 .EQ. MOD (J1, 2)
        DO I1=1,6,5
         L20(I1,J1) = LL7
         L20(I1+1,J1) = LL7
         L20(I1+2,J1) = LL7
         L20(I1+3,J1) = LL7
         L20(I1+4,J1) = LL7
        END DO
       END DO

       DO I1=1,6,5
        II1 = I1 * 2
        DD6 = I1 * 2
        II2 = I1 * 3
        DD11 = I1 * 3
        DO J1=1,10
         DO K1=1,10
          DD7 = II1 + 2
          DD8 = II1 + 4
          DD9 = II1 + 6
          DD10 = II1 + 8
          DD12 = II2 + 3
          DD13 = II2 + 6
          DD14 = II2 + 9
          DD15 = II2 + 12
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
        R10(I1) = DD1
        R10(I1+1) = DD2
        R10(I1+2) = DD3
        R10(I1+3) = DD4
        R10(I1+4) = DD5
        R11(I1) = DD6
        R11(I1+1) = DD7
        R11(I1+2) = DD8
        R11(I1+3) = DD9
        R11(I1+4) = DD10
        R12(I1) = DD11
        R12(I1+1) = DD12
        R12(I1+2) = DD13
        R12(I1+3) = DD14
        R12(I1+4) = DD15
       END DO

       DO J1=1,10
        DO K1=1,10
         DO L1=1,10
          DO I1=1,7,4
           R20(I1,J1) = I1 * J1 + 1
           R20(I1+1,J1) = (I1 + 1) * J1 + 1
           R20(I1+2,J1) = (I1 + 2) * J1 + 1
           R20(I1+3,J1) = (I1 + 3) * J1 + 1
           R21(I1,J1) = I1 * J1 + 2
           R21(I1+1,J1) = (I1 + 1) * J1 + 2
           R21(I1+2,J1) = (I1 + 2) * J1 + 2
           R21(I1+3,J1) = (I1 + 3) * J1 + 2
          END DO
          R20(9,J1) = J1 * 9 + 1
          R20(10,J1) = J1 * 10 + 1
          R21(9,J1) = J1 * 9 + 2
          R21(10,J1) = J1 * 10 + 2
         END DO
        END DO
       END DO

       DO K1=1,10
        DO J1=1,10
         DO L1=1,10
          DO I1=1,7,4
           R30(I1,J1,K1) = K1 + I1 * J1
           R30(I1+1,J1,K1) = K1 + (I1 + 1) * J1
           R30(I1+2,J1,K1) = K1 + (I1 + 2) * J1
           R30(I1+3,J1,K1) = K1 + (I1 + 3) * J1
           R31(I1,J1,K1) = K1 + I1 - J1
           R31(I1+1,J1,K1) = K1 + I1 - J1 + 1
           R31(I1+2,J1,K1) = K1 + I1 - J1 + 2
           R31(I1+3,J1,K1) = K1 + I1 - J1 + 3
           R32(I1,J1,K1) = K1 * I1 + J1
           R32(I1+1,J1,K1) = K1 * (I1 + 1) + J1
           R32(I1+2,J1,K1) = K1 * (I1 + 2) + J1
           R32(I1+3,J1,K1) = K1 * (I1 + 3) + J1
          END DO
          R30(9,J1,K1) = K1 + J1 * 9
          R30(10,J1,K1) = K1 + J1 * 10
          R31(9,J1,K1) = K1 - J1 + 9
          R31(10,J1,K1) = K1 - J1 + 10
          R32(9,J1,K1) = K1 * 9 + J1
          R32(10,J1,K1) = K1 * 10 + J1
         END DO
        END DO
       END DO

       DO L1=1,10
        DO K1=1,7,4
         DO J1=1,10
          DO I1=1,6,5
           II5 = I1 * J1
           II6 = (I1 + 1) * J1
           II7 = (I1 + 2) * J1
           II8 = (I1 + 3) * J1
           II3 = (I1 + 4) * J1
           R40(I1,J1,K1,L1) = K1 + II5 * L1
           R40(I1+1,J1,K1,L1) = K1 + II6 * L1
           R40(I1+2,J1,K1,L1) = K1 + II7 * L1
           R40(I1+3,J1,K1,L1) = K1 + II8 * L1
           R40(I1+4,J1,K1,L1) = K1 + II3 * L1
           II5 = I1 * J1
           II6 = (I1 + 1) * J1
           II7 = (I1 + 2) * J1
           II8 = (I1 + 3) * J1
           II3 = (I1 + 4) * J1
           R40(I1,J1,K1+1,L1) = K1 + II5 * L1 + 1
           R40(I1+1,J1,K1+1,L1) = K1 + II6 * L1 + 1
           R40(I1+2,J1,K1+1,L1) = K1 + II7 * L1 + 1
           R40(I1+3,J1,K1+1,L1) = K1 + II8 * L1 + 1
           R40(I1+4,J1,K1+1,L1) = K1 + II3 * L1 + 1
           II5 = I1 * J1
           II6 = (I1 + 1) * J1
           II7 = (I1 + 2) * J1
           II8 = (I1 + 3) * J1
           II3 = (I1 + 4) * J1
           R40(I1,J1,K1+2,L1) = K1 + II5 * L1 + 2
           R40(I1+1,J1,K1+2,L1) = K1 + II6 * L1 + 2
           R40(I1+2,J1,K1+2,L1) = K1 + II7 * L1 + 2
           R40(I1+3,J1,K1+2,L1) = K1 + II8 * L1 + 2
           R40(I1+4,J1,K1+2,L1) = K1 + II3 * L1 + 2
           II5 = I1 * J1
           II6 = (I1 + 1) * J1
           II7 = (I1 + 2) * J1
           II8 = (I1 + 3) * J1
           II3 = (I1 + 4) * J1
           R40(I1,J1,K1+3,L1) = K1 + II5 * L1 + 3
           R40(I1+1,J1,K1+3,L1) = K1 + II6 * L1 + 3
           R40(I1+2,J1,K1+3,L1) = K1 + II7 * L1 + 3
           R40(I1+3,J1,K1+3,L1) = K1 + II8 * L1 + 3
           R40(I1+4,J1,K1+3,L1) = K1 + II3 * L1 + 3
          END DO
         END DO
        END DO

        DO K1=9,10,1
         DO J1=1,10
          DO I1=1,6,5
           II9 = I1 * J1
           II10 = (I1 + 1) * J1
           II11 = (I1 + 2) * J1
           II12 = (I1 + 3) * J1
           II4 = (I1 + 4) * J1
           R40(I1,J1,K1,L1) = K1 + II9 * L1
           R40(I1+1,J1,K1,L1) = K1 + II10 * L1
           R40(I1+2,J1,K1,L1) = K1 + II11 * L1
           R40(I1+3,J1,K1,L1) = K1 + II12 * L1
           R40(I1+4,J1,K1,L1) = K1 + II4 * L1
          END DO
         END DO
        END DO
       END DO

       S = 0.
       LL14 = .FALSE.
       II14 = 0

       S11 = 0.
       LL13 = .FALSE.

       DO I1=1,10
        LL1 = I1 .GT. 5
        IF (LL1) THEN
         DO J1=1,10
          R20(I1,J1) = R21(I1,J1)
          LL13 = .TRUE.
          II13 = I1
          S2 = R20(I1,J1) * R21(I1,J1)
          LL2 = L20(I1,J1)
          IF (LL2) THEN
           DD16 = R20(I1,J1) + S2
           DO K1=1,6,5
            R30(I1,J1,K1) = DD16
            R30(I1,J1,K1+1) = DD16
            R30(I1,J1,K1+2) = DD16
            R30(I1,J1,K1+3) = DD16
            R30(I1,J1,K1+4) = DD16
           END DO
          END IF
          IF (.NOT.LL2) THEN
           DD17 = R20(I1,J1) - S2
           DO K1=1,6,5
            R30(I1,J1,K1) = DD17
            R30(I1,J1,K1+1) = DD17
            R30(I1,J1,K1+2) = DD17
            R30(I1,J1,K1+3) = DD17
            R30(I1,J1,K1+4) = DD17
           END DO
          END IF
         END DO
        END IF
        IF (.NOT.LL1) THEN
         R10(I1) = R11(I1) * R12(I1)
         IF (L11(I1)) THEN
          S11 = S11 + R10(I1)
         END IF
         DO L1=1,7,4
          DO K1=1,6,5
           R31(K1,I1,L1) = R32(K1,I1,L1) * 2.
           R31(K1+1,I1,L1) = R32(K1+1,I1,L1) * 2.
           R31(K1+2,I1,L1) = R32(K1+2,I1,L1) * 2.
           R31(K1+3,I1,L1) = R32(K1+3,I1,L1) * 2.
           R31(K1+4,I1,L1) = R32(K1+4,I1,L1) * 2.
           R31(K1,I1,L1+1) = R32(K1,I1,L1+1) * 2.
           R31(K1+1,I1,L1+1) = R32(K1+1,I1,L1+1) * 2.
           R31(K1+2,I1,L1+1) = R32(K1+2,I1,L1+1) * 2.
           R31(K1+3,I1,L1+1) = R32(K1+3,I1,L1+1) * 2.
           R31(K1+4,I1,L1+1) = R32(K1+4,I1,L1+1) * 2.
           R31(K1,I1,L1+2) = R32(K1,I1,L1+2) * 2.
           R31(K1+1,I1,L1+2) = R32(K1+1,I1,L1+2) * 2.
           R31(K1+2,I1,L1+2) = R32(K1+2,I1,L1+2) * 2.
           R31(K1+3,I1,L1+2) = R32(K1+3,I1,L1+2) * 2.
           R31(K1+4,I1,L1+2) = R32(K1+4,I1,L1+2) * 2.
           R31(K1,I1,L1+3) = R32(K1,I1,L1+3) * 2.
           R31(K1+1,I1,L1+3) = R32(K1+1,I1,L1+3) * 2.
           R31(K1+2,I1,L1+3) = R32(K1+2,I1,L1+3) * 2.
           R31(K1+3,I1,L1+3) = R32(K1+3,I1,L1+3) * 2.
           R31(K1+4,I1,L1+3) = R32(K1+4,I1,L1+3) * 2.
          END DO
         END DO
         DO L1=9,10,1
          DO K1=1,6,5
           R31(K1,I1,L1) = R32(K1,I1,L1) * 2.
           R31(K1+1,I1,L1) = R32(K1+1,I1,L1) * 2.
           R31(K1+2,I1,L1) = R32(K1+2,I1,L1) * 2.
           R31(K1+3,I1,L1) = R32(K1+3,I1,L1) * 2.
           R31(K1+4,I1,L1) = R32(K1+4,I1,L1) * 2.
          END DO
         END DO
        END IF
       END DO

       S1 = S1 + S11
       IF (LL13) THEN
        IF (LL14) THEN
         IF (II13 .GT. II14) THEN
          S = S2
          II14 = II13
         END IF
        ELSE
         S = S2
         II14 = II13
         LL14 = .TRUE.
        END IF
       END IF

       I = 11
       WRITE (6, *) ' S  = ', S
       WRITE (6, *) ' S1 = ', S1
       WRITE (6, *) ' S2 = ', S2
       WRITE (6, *) ' R10 = ', R10
       WRITE (6, *) ' R11 = ', R11
       WRITE (6, *) ' R20 = ', ((R20(I,J), I=1,2), J=4,6)
       WRITE (6, *) ' R21 = ', ((R21(I,J), I=2,6), J=1,3)
       WRITE (6, *) ' R30 = ', (((R30(I,J,K), I=1,2), J=4,6), K=1,2)
       WRITE (6, *) ' R31 = ', (((R31(I,J,K), I=2,3), J=7,8), K=9,10)
       WRITE (6, *) ' R40 = ', ((((R40(I,J,K,L), I=1,2), J=4,6), K=1,2)
     X   , L=8,9)

      STOP 
      END
