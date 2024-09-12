      PROGRAM MAIN
       REAL*8 R10(10), R11(10), R12(10)
       REAL*8 R20(10,10), R21(10,10), R22(10,10)
       REAL*8 R30(10,10,10), R31(10,10,10), R32(10,10,10), R33(10,10,10)
       REAL*8 R40(10,10,10,10), R41(10,10,10,10), S0, S1
       INTEGER II29, II28, II27, II26, II25, II24, II23, II22, II21, 
     X   II20, II19, II18, II17, II16, II15, II14, II13, II12, II11, 
     X   II10, II9, II8, II7, II6, II5, II4, II3, II2, II1, L1, K1, J1, 
     X   I1
       DOUBLE PRECISION DD32, DD31, DD30, DD29, DD28, DD27, DD26, DD25, 
     X   DD24, DD23, DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, 
     X   DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3
     X   , DD2, DD1

       DO I1=1,6,5
        R10(I1) = I1 + 1
        R10(I1+1) = I1 + 2
        R10(I1+2) = I1 + 3
        R10(I1+3) = I1 + 4
        R10(I1+4) = I1 + 5
        R11(I1) = I1 + 2
        R11(I1+1) = I1 + 3
        R11(I1+2) = I1 + 4
        R11(I1+3) = I1 + 5
        R11(I1+4) = I1 + 6
       END DO
       DO J1=1,7,4
        II5 = J1 + 1
        II6 = J1 + 2
        II7 = J1 + 3

        DO I1=1,6,5
         R20(I1,J1) = I1 + 3
         R20(I1+1,J1) = I1 + 4
         R20(I1+2,J1) = I1 + 5
         R20(I1+3,J1) = I1 + 6
         R20(I1+4,J1) = I1 + 7
         R20(I1,J1+1) = I1 + 3
         R20(I1+1,J1+1) = I1 + 4
         R20(I1+2,J1+1) = I1 + 5
         R20(I1+3,J1+1) = I1 + 6
         R20(I1+4,J1+1) = I1 + 7
         R20(I1,J1+2) = I1 + 3
         R20(I1+1,J1+2) = I1 + 4
         R20(I1+2,J1+2) = I1 + 5
         R20(I1+3,J1+2) = I1 + 6
         R20(I1+4,J1+2) = I1 + 7
         R20(I1,J1+3) = I1 + 3
         R20(I1+1,J1+3) = I1 + 4
         R20(I1+2,J1+3) = I1 + 5
         R20(I1+3,J1+3) = I1 + 6
         R20(I1+4,J1+3) = I1 + 7
         R21(I1,J1) = I1 * J1
         R21(I1+1,J1) = (I1 + 1) * J1
         R21(I1+2,J1) = (I1 + 2) * J1
         R21(I1+3,J1) = (I1 + 3) * J1
         R21(I1+4,J1) = (I1 + 4) * J1
         R21(I1,J1+1) = I1 * II5
         R21(I1+1,J1+1) = (I1 + 1) * II5
         R21(I1+2,J1+1) = (I1 + 2) * II5
         R21(I1+3,J1+1) = (I1 + 3) * II5
         R21(I1+4,J1+1) = (I1 + 4) * II5
         R21(I1,J1+2) = I1 * II6
         R21(I1+1,J1+2) = (I1 + 1) * II6
         R21(I1+2,J1+2) = (I1 + 2) * II6
         R21(I1+3,J1+2) = (I1 + 3) * II6
         R21(I1+4,J1+2) = (I1 + 4) * II6
         R21(I1,J1+3) = I1 * II7
         R21(I1+1,J1+3) = (I1 + 1) * II7
         R21(I1+2,J1+3) = (I1 + 2) * II7
         R21(I1+3,J1+3) = (I1 + 3) * II7
         R21(I1+4,J1+3) = (I1 + 4) * II7
         II22 = I1 * J1
         II23 = (I1 + 1) * J1
         II24 = (I1 + 2) * J1
         II25 = (I1 + 3) * J1
         II20 = (I1 + 4) * J1
         R22(I1,J1) = II22 * 2
         R22(I1+1,J1) = II23 * 2
         R22(I1+2,J1) = II24 * 2
         R22(I1+3,J1) = II25 * 2
         R22(I1+4,J1) = II20 * 2
         II22 = I1 * II5
         II23 = (I1 + 1) * II5
         II24 = (I1 + 2) * II5
         II25 = (I1 + 3) * II5
         II20 = (I1 + 4) * II5
         R22(I1,J1+1) = II22 * 2
         R22(I1+1,J1+1) = II23 * 2
         R22(I1+2,J1+1) = II24 * 2
         R22(I1+3,J1+1) = II25 * 2
         R22(I1+4,J1+1) = II20 * 2
         II22 = I1 * II6
         II23 = (I1 + 1) * II6
         II24 = (I1 + 2) * II6
         II25 = (I1 + 3) * II6
         II20 = (I1 + 4) * II6
         R22(I1,J1+2) = II22 * 2
         R22(I1+1,J1+2) = II23 * 2
         R22(I1+2,J1+2) = II24 * 2
         R22(I1+3,J1+2) = II25 * 2
         R22(I1+4,J1+2) = II20 * 2
         II22 = I1 * II7
         II23 = (I1 + 1) * II7
         II24 = (I1 + 2) * II7
         II25 = (I1 + 3) * II7
         II20 = (I1 + 4) * II7
         R22(I1,J1+3) = II22 * 2
         R22(I1+1,J1+3) = II23 * 2
         R22(I1+2,J1+3) = II24 * 2
         R22(I1+3,J1+3) = II25 * 2
         R22(I1+4,J1+3) = II20 * 2
        END DO
       END DO
       DO J1=9,10,1

        DO I1=1,6,5
         R20(I1,J1) = I1 + 3
         R20(I1+1,J1) = I1 + 4
         R20(I1+2,J1) = I1 + 5
         R20(I1+3,J1) = I1 + 6
         R20(I1+4,J1) = I1 + 7
         R21(I1,J1) = I1 * J1
         R21(I1+1,J1) = (I1 + 1) * J1
         R21(I1+2,J1) = (I1 + 2) * J1
         R21(I1+3,J1) = (I1 + 3) * J1
         R21(I1+4,J1) = (I1 + 4) * J1
         II26 = I1 * J1
         II27 = (I1 + 1) * J1
         II28 = (I1 + 2) * J1
         II29 = (I1 + 3) * J1
         II21 = (I1 + 4) * J1
         R22(I1,J1) = II26 * 2
         R22(I1+1,J1) = II27 * 2
         R22(I1+2,J1) = II28 * 2
         R22(I1+3,J1) = II29 * 2
         R22(I1+4,J1) = II21 * 2
        END DO
       END DO
C$OMP PARALLEL SHARED (R30,R31,R32,R40) PRIVATE (II8,II9,II10,K1,J1,I1,
C$OMP& II11,II12,II13,II14,II15,L1)
C$OMP DO 
       DO K1=1,10
        DO J1=1,7,4
         II8 = J1 + 1
         II9 = J1 + 2
         II10 = J1 + 3

         DO I1=1,9,2
          R30(I1,J1,K1) = K1 - I1 * J1
          R30(I1+1,J1,K1) = K1 - (I1 + 1) * J1
          R30(I1,J1+1,K1) = K1 - I1 * II8
          R30(I1+1,J1+1,K1) = K1 - (I1 + 1) * II8
          R30(I1,J1+2,K1) = K1 - I1 * II9
          R30(I1+1,J1+2,K1) = K1 - (I1 + 1) * II9
          R30(I1,J1+3,K1) = K1 - I1 * II10
          R30(I1+1,J1+3,K1) = K1 - (I1 + 1) * II10
          R31(I1,J1,K1) = K1 + I1 + J1
          R31(I1+1,J1,K1) = K1 + I1 + J1 + 1
          R31(I1,J1+1,K1) = K1 + I1 + J1 + 1
          R31(I1+1,J1+1,K1) = K1 + I1 + J1 + 2
          R31(I1,J1+2,K1) = K1 + I1 + J1 + 2
          R31(I1+1,J1+2,K1) = K1 + I1 + J1 + 3
          R31(I1,J1+3,K1) = K1 + I1 + J1 + 3
          R31(I1+1,J1+3,K1) = K1 + I1 + J1 + 4
          R32(I1,J1,K1) = K1 * I1 + J1
          R32(I1+1,J1,K1) = K1 * (I1 + 1) + J1
          R32(I1,J1+1,K1) = K1 * I1 + J1 + 1
          R32(I1+1,J1+1,K1) = K1 * (I1 + 1) + J1 + 1
          R32(I1,J1+2,K1) = K1 * I1 + J1 + 2
          R32(I1+1,J1+2,K1) = K1 * (I1 + 1) + J1 + 2
          R32(I1,J1+3,K1) = K1 * I1 + J1 + 3
          R32(I1+1,J1+3,K1) = K1 * (I1 + 1) + J1 + 3
         END DO
        END DO
        DO J1=9,10,1

         DO I1=1,6,5
          R30(I1,J1,K1) = K1 - I1 * J1
          R30(I1+1,J1,K1) = K1 - (I1 + 1) * J1
          R30(I1+2,J1,K1) = K1 - (I1 + 2) * J1
          R30(I1+3,J1,K1) = K1 - (I1 + 3) * J1
          R30(I1+4,J1,K1) = K1 - (I1 + 4) * J1
          R31(I1,J1,K1) = K1 + I1 + J1
          R31(I1+1,J1,K1) = K1 + I1 + J1 + 1
          R31(I1+2,J1,K1) = K1 + I1 + J1 + 2
          R31(I1+3,J1,K1) = K1 + I1 + J1 + 3
          R31(I1+4,J1,K1) = K1 + I1 + J1 + 4
          R32(I1,J1,K1) = K1 * I1 + J1
          R32(I1+1,J1,K1) = K1 * (I1 + 1) + J1
          R32(I1+2,J1,K1) = K1 * (I1 + 2) + J1
          R32(I1+3,J1,K1) = K1 * (I1 + 3) + J1
          R32(I1+4,J1,K1) = K1 * (I1 + 4) + J1
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO L1=1,10
        DO K1=1,7,4
         II12 = K1 + 1
         II13 = K1 + 2
         II14 = K1 + 3
         DO J1=1,10
          II11 = J1 * L1

          DO I1=1,6,5
           R40(I1,J1,K1,L1) = K1 * I1 + II11
           R40(I1+1,J1,K1,L1) = K1 * (I1 + 1) + II11
           R40(I1+2,J1,K1,L1) = K1 * (I1 + 2) + II11
           R40(I1+3,J1,K1,L1) = K1 * (I1 + 3) + II11
           R40(I1+4,J1,K1,L1) = K1 * (I1 + 4) + II11
           R40(I1,J1,K1+1,L1) = II12 * I1 + II11
           R40(I1+1,J1,K1+1,L1) = II12 * (I1 + 1) + II11
           R40(I1+2,J1,K1+1,L1) = II12 * (I1 + 2) + II11
           R40(I1+3,J1,K1+1,L1) = II12 * (I1 + 3) + II11
           R40(I1+4,J1,K1+1,L1) = II12 * (I1 + 4) + II11
           R40(I1,J1,K1+2,L1) = II13 * I1 + II11
           R40(I1+1,J1,K1+2,L1) = II13 * (I1 + 1) + II11
           R40(I1+2,J1,K1+2,L1) = II13 * (I1 + 2) + II11
           R40(I1+3,J1,K1+2,L1) = II13 * (I1 + 3) + II11
           R40(I1+4,J1,K1+2,L1) = II13 * (I1 + 4) + II11
           R40(I1,J1,K1+3,L1) = II14 * I1 + II11
           R40(I1+1,J1,K1+3,L1) = II14 * (I1 + 1) + II11
           R40(I1+2,J1,K1+3,L1) = II14 * (I1 + 2) + II11
           R40(I1+3,J1,K1+3,L1) = II14 * (I1 + 3) + II11
           R40(I1+4,J1,K1+3,L1) = II14 * (I1 + 4) + II11
          END DO
         END DO
        END DO
        DO K1=9,10,1
         DO J1=1,10
          II15 = J1 * L1

          DO I1=1,6,5
           R40(I1,J1,K1,L1) = K1 * I1 + II15
           R40(I1+1,J1,K1,L1) = K1 * (I1 + 1) + II15
           R40(I1+2,J1,K1,L1) = K1 * (I1 + 2) + II15
           R40(I1+3,J1,K1,L1) = K1 * (I1 + 3) + II15
           R40(I1+4,J1,K1,L1) = K1 * (I1 + 4) + II15
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
                                                                        
       WRITE (6, *) '----- TEST NO.1 ----- '
       DO I1=1,10
        R10(I1) = FLOAT (I1)
        DO J1=1,10
         DD7 = R21(I1,J1)
         DD1 = DD7
         R30(I1,J1,1) = R31(I1,J1,1) + DD1
         R30(I1,J1,2) = R31(I1,J1,2) + DD1
         R20(I1,J1) = DD7
        END DO
                                                                        
        IF (I1 .GT. 5) THEN
C$OMP PARALLEL SHARED (R20,R30,I1,R21,R22,S0) PRIVATE (II1,II2,II3,II4,
C$OMP& DD2,DD3,DD4,DD5,DD6,II16,II17,II18,II19,DD8,DD9,DD10,DD11,DD12,
C$OMP& DD13,DD14,DD15,DD16,DD17,DD18,DD19,DD20,DD21,DD22,DD23,DD24,DD25,
C$OMP& DD26,DD27,DD28,DD29,DD30,DD31,DD32,L1,M,J1,J)
C$OMP DO LASTPRIVATE (S0)
         DO L1=1,6,5
          II16 = L1 + 1
          II17 = L1 + 2
          II18 = L1 + 3
          II19 = L1 + 4
          DO M=1,10
           DD2 = R20(L1,M)
           DD3 = R20(L1+1,M)
           DD4 = R20(L1+2,M)
           DD5 = R20(L1+3,M)
           DD6 = R20(L1+4,M)
           DO J1=1,6,5
            S0 = R30(L1+4,M,J1+4)
            DD8 = R30(L1,M,J1) * DD2
            DD9 = R30(L1,M,J1+1) * DD2
            DD10 = R30(L1,M,J1+2) * DD2
            DD11 = R30(L1,M,J1+3) * DD2
            DD12 = R30(L1,M,J1+4) * DD2
            DD13 = R30(L1+1,M,J1) * DD3
            DD14 = R30(L1+1,M,J1+1) * DD3
            DD15 = R30(L1+1,M,J1+2) * DD3
            DD16 = R30(L1+1,M,J1+3) * DD3
            DD17 = R30(L1+1,M,J1+4) * DD3
            DD18 = R30(L1+2,M,J1) * DD4
            DD19 = R30(L1+2,M,J1+1) * DD4
            DD20 = R30(L1+2,M,J1+2) * DD4
            DD21 = R30(L1+2,M,J1+3) * DD4
            DD22 = R30(L1+2,M,J1+4) * DD4
            DD23 = R30(L1+3,M,J1) * DD5
            DD24 = R30(L1+3,M,J1+1) * DD5
            DD25 = R30(L1+3,M,J1+2) * DD5
            DD26 = R30(L1+3,M,J1+3) * DD5
            DD27 = R30(L1+3,M,J1+4) * DD5
            DD28 = R30(L1+4,M,J1) * DD6
            DD29 = R30(L1+4,M,J1+1) * DD6
            DD30 = R30(L1+4,M,J1+2) * DD6
            DD31 = R30(L1+4,M,J1+3) * DD6
            DD32 = R30(L1+4,M,J1+4) * DD6
            R30(L1+4,M,J1+4) = DD32
            R30(L1+4,M,J1+3) = DD31
            R30(L1+4,M,J1+2) = DD30
            R30(L1+4,M,J1+1) = DD29
            R30(L1+4,M,J1) = DD28
            R30(L1+3,M,J1+4) = DD27
            R30(L1+3,M,J1+3) = DD26
            R30(L1+3,M,J1+2) = DD25
            R30(L1+3,M,J1+1) = DD24
            R30(L1+3,M,J1) = DD23
            R30(L1+2,M,J1+4) = DD22
            R30(L1+2,M,J1+3) = DD21
            R30(L1+2,M,J1+2) = DD20
            R30(L1+2,M,J1+1) = DD19
            R30(L1+2,M,J1) = DD18
            R30(L1+1,M,J1+4) = DD17
            R30(L1+1,M,J1+3) = DD16
            R30(L1+1,M,J1+2) = DD15
            R30(L1+1,M,J1+1) = DD14
            R30(L1+1,M,J1) = DD13
            R30(L1,M,J1+4) = DD12
            R30(L1,M,J1+3) = DD11
            R30(L1,M,J1+2) = DD10
            R30(L1,M,J1+1) = DD9
            R30(L1,M,J1) = DD8
           END DO
           II1 = 11
           II2 = 11
           II3 = 11
           II4 = 11
           J = 11
           R20(L1,M) = R20(L1,M) * L1
           R20(L1+1,M) = R20(L1+1,M) * II16
           R20(L1+2,M) = R20(L1+2,M) * II17
           R20(L1+3,M) = R20(L1+3,M) * II18
           R20(L1+4,M) = R20(L1+4,M) * II19
          END DO
          R21(I1,L1) = R22(I1,L1) + II1
          R21(I1,L1+1) = R22(I1,L1+1) + II2
          R21(I1,L1+2) = R22(I1,L1+2) + II3
          R21(I1,L1+3) = R22(I1,L1+3) + II4
          R21(I1,L1+4) = R22(I1,L1+4) + J
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
        ELSE
C$OMP PARALLEL SHARED (R10,I1,R30,R40,R32,S1) PRIVATE (L1,J1,M)
C$OMP DO LASTPRIVATE (S1)
         DO L1=1,10
          R10(L1) = L1
          DO J1=1,10
           R30(I1,L1,J1) = R10(L1) + J1
           S1 = 0D0
           DO M=1,6,5
            S1 = S1 + R30(I1,L1,J1)
            R40(L1,M,J1,I1) = R32(L1,J1,M) * 2.
            S1 = S1 + R30(I1,L1,J1)
            R40(L1,M+1,J1,I1) = R32(L1,J1,M+1) * 2.
            S1 = S1 + R30(I1,L1,J1)
            R40(L1,M+2,J1,I1) = R32(L1,J1,M+2) * 2.
            S1 = S1 + R30(I1,L1,J1)
            R40(L1,M+3,J1,I1) = R32(L1,J1,M+3) * 2.
            S1 = S1 + R30(I1,L1,J1)
            R40(L1,M+4,J1,I1) = R32(L1,J1,M+4) * 2.
           END DO
          END DO
         END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
        END IF
       END DO
       I = 11
       WRITE (6, *) ' S0 =  ', S0
       WRITE (6, *) ' S1 =  ', S1
       WRITE (6, *) ' R10 = ', R10
       WRITE (6, *) ' R20 = ', ((R20(I,J), I=1,2), J=4,6)
       WRITE (6, *) ' R30 = ', (((R30(I,J,K), I=1,2), J=4,6), K=1,2)
       WRITE (6, *) ' R40 = ', ((((R40(I,J,K,L), I=1,2), J=4,6), K=1,2)
     X   , L=8,9)
       WRITE (6, *) ' R21 = ', ((R21(I,J), I=2,6), J=1,3)
       WRITE (6, *) ' R11 = ', R11
       WRITE (6, *) ' R31 = ', (((R31(I,J,K), I=5,6), J=7,8), K=1,2)

       STOP 
      END
