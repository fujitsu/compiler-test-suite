      PROGRAM MAIN

       REAL*8 A(100), B(100), C(100), E(100), F(100), MAXD
       INTEGER L, N
       N = 30

       CALL ITDATA (A,B,C,E,F,L)
       CALL SUB1 (A,B,C,E,F,N)
       WRITE (6, *) '-- A --'
       WRITE (6, 91) A
       WRITE (6, *) '-- B --'
       WRITE (6, 91) B
       WRITE (6, *) '-- C --'
       WRITE (6, 91) C
       WRITE (6, *) '-- E --'
       WRITE (6, 91) E
       WRITE (6, *) '-- F --'
       WRITE (6, 91) F
   91  FORMAT(5(1X,E14.6))

       CALL ITDATA (A,B,C,E,F,L)
       CALL SUB2 (A,B,C,E,F,N)
       WRITE (6, *) '-- A --'
       WRITE (6, 91) A
       WRITE (6, *) '-- B --'
       WRITE (6, 91) B
       WRITE (6, *) '-- C --'
       WRITE (6, 91) C
       WRITE (6, *) '-- E --'
       WRITE (6, 91) E
       WRITE (6, *) '-- F --'
       WRITE (6, 91) F

       CALL ITDATA (A,B,C,E,F,L)
       CALL SUB3 (A,B,C,E,F,MAXD,IDX,N)
       WRITE (6, *) '-- A --'
       WRITE (6, 91) A
       WRITE (6, *) '-- B --'
       WRITE (6, 91) B
       WRITE (6, *) '-- C --'
       WRITE (6, 91) C
       WRITE (6, *) '-- E --'
       WRITE (6, 91) E
       WRITE (6, *) '-- F --'
       WRITE (6, 91) F
       WRITE (6, *) MAXD
       WRITE (6, *) IDX
      END

      SUBROUTINE SUB2 ( A, B, C, E, F, N )
       REAL*8 A(100), B(100), C(100), E(100), F(100)
       INTEGER H, I, J, K, L, N
       INTEGER II2, II1
       DOUBLE PRECISION DD4, DD3, DD2, DD1
       II2 = (N - 2) / 4
       II1 = II2 * 4 + 3
       DO K=1,N
        DO J=1,N

         DO I=3,N
          H = IABS (I + J - K) + 1
          IF (A(I) .LT. A(I-1)) THEN
           A(I) = B(K) * C(I) - H * B(H)
          END IF
          L = IABS (I + J - K) + 1
          F(I) = F(I-1) * J + B(I) * K
          IF (L .LT. 3) THEN
           L = N
          END IF
          E(L) = E(L-2) + L * (-2)
          E(L) = MAX (A(I) + H, E(L))
         END DO

         DO I=3,N-3,4
          DD2 = F(I) + J
          DD3 = F(I+1) + J
          DD4 = F(I+2) + J
          DD1 = F(I+3) + J
          C(I) = DD2 - K
          C(I+1) = DD3 - K
          C(I+2) = DD4 - K
          C(I+3) = DD1 - K
         END DO
         DO I=II1,N,1
          DD1 = F(I) + J
          C(I) = DD1 - K
         END DO
        END DO
       END DO
      END

      SUBROUTINE SUB3 ( A, B, C, E, F, MAXD, IDX, N )
       REAL*8 A(100), B(100), C(100), E(100), F(100), DIF, MAXD
       INTEGER H, I, J, K, L, N
       INTEGER II14, II13, II12, II11, II10, II9, II8, II7, II6, II5, 
     X   II4, II3, II2, II1
       DOUBLE PRECISION DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
       LOGICAL LL2, LL1
       MAXD = 0D0
       L = 1
       II1 = N - 2
       LL2 = II1 .GT. 0
       II5 = MAX0 (N - 2, 0)
       II8 = (N - 2) / 4
       II7 = II8 * 4 + 3
       DO K=1,N
        LL1 = LL2
        II4 = II5
        DO J=1,N

         IF (LL1) THEN
          DD1 = B(K)
C$OMP PARALLEL IF (N .GT. 60) SHARED (N,J,K,DD1,C,B,A,E) PRIVATE (II6,
C$OMP& DD2,DD3,II9,II10,II11,II12,II13,II14,DD4,DD5,DD6,DD7,DD8,DD9,I,H)
C$OMP DO 
          DO I=3,N-3,4
           II9 = I + J - K
           II10 = I + J - K + 1
           II11 = I + J - K + 2
           II6 = I + J - K + 3
           II12 = IABS (II9) + 1
           II13 = IABS (II10) + 1
           II14 = IABS (II11) + 1
           H = IABS (II6) + 1
           DD4 = DD1 * C(I)
           DD5 = DD1 * C(I+1)
           DD6 = DD1 * C(I+2)
           DD2 = DD1 * C(I+3)
           DD7 = II12 * B(II12)
           DD8 = II13 * B(II13)
           DD9 = II14 * B(II14)
           DD3 = H * B(H)
           A(I) = DD4 - DD7
           A(I+1) = DD5 - DD8
           A(I+2) = DD6 - DD9
           A(I+3) = DD2 - DD3
           E(I) = A(I) + II12
           E(I+1) = A(I+1) + II13
           E(I+2) = A(I+2) + II14
           E(I+3) = A(I+3) + H
          END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
          DO I=II7,N,1
           II6 = I + J - K
           H = IABS (II6) + 1
           DD2 = DD1 * C(I)
           DD3 = H * B(H)
           A(I) = DD2 - DD3
           E(I) = A(I) + H
          END DO

         END IF
         II2 = (-1) ** (J + 1)
         II3 = L * (-2)
         DO I=3,N
          F(I) = F(I-1) * J + B(I) * K
          IF (F(I) .GE. MAXD) THEN
           MAXD = F(I)
           IDX = I
          END IF
          E(I) = E(I-2) + II3 + II2 * (I - 2) * (-2)
          C(I) = F(L+II2*(I-2)) + J - K
         END DO
         L = L + (-1) ** (J + 1) * II4
        END DO
       END DO
      END

      SUBROUTINE SUB1 ( A, B, C, E, F, N )
       REAL*8 A(100), B(100), C(100), E(100), F(100)
       INTEGER H, I, J, K, L, N
       INTEGER II5, II4, II3, II2, II1
       DOUBLE PRECISION DD5, DD4, DD3, DD2, DD1
       LOGICAL LL2, LL1
       II1 = N - 2
       LL2 = II1 .GT. 0
       II3 = (N - 2) / 4
       II2 = II3 * 4 + 3
       II5 = (N - 2) / 4
       II4 = II5 * 4 + 3
       DO K=1,N
        LL1 = LL2
        DO J=1,N

         IF (LL1) THEN
          DD1 = B(K)
          DO I=3,N-3,4
           H = I + B(I) * 2
           A(I) = DD1 * C(I) - H * B(H)
           F(I) = F(I-1) * J + B(I) * K
           L = I + B(I) * 2
           E(I) = A(I) + H
           E(I) = E(I+1) - L * (I + B(I) * 2)
           H = 1 + I + B(I+1) * 2
           A(I+1) = DD1 * C(I+1) - H * B(H)
           F(I+1) = F(I) * J + B(I+1) * K
           L = 1 + I + B(I+1) * 2
           E(I+1) = A(I+1) + H
           E(I+1) = E(I+2) - L * (1 + I + B(I+1) * 2)
           H = 2 + I + B(I+2) * 2
           A(I+2) = DD1 * C(I+2) - H * B(H)
           F(I+2) = F(I+1) * J + B(I+2) * K
           L = 2 + I + B(I+2) * 2
           E(I+2) = A(I+2) + H
           E(I+2) = E(I+3) - L * (2 + I + B(I+2) * 2)
           H = 3 + I + B(I+3) * 2
           A(I+3) = DD1 * C(I+3) - H * B(H)
           F(I+3) = F(I+2) * J + B(I+3) * K
           L = 3 + I + B(I+3) * 2
           E(I+3) = A(I+3) + H
           E(I+3) = E(I+4) - L * (3 + I + B(I+3) * 2)
          END DO
          DO I=II2,N,1
           H = I + B(I) * 2
           A(I) = DD1 * C(I) - H * B(H)
           F(I) = F(I-1) * J + B(I) * K
           L = I + B(I) * 2
           E(I) = A(I) + H
           E(I) = E(I+1) - L * (I + B(I) * 2)
          END DO

         END IF
         DO I=3,N-3,4
          DD3 = F(I) + J
          DD4 = F(I+1) + J
          DD5 = F(I+2) + J
          DD2 = F(I+3) + J
          C(I) = DD3 - K
          C(I+1) = DD4 - K
          C(I+2) = DD5 - K
          C(I+3) = DD2 - K
         END DO
         DO I=II4,N,1
          DD2 = F(I) + J
          C(I) = DD2 - K
         END DO
        END DO
       END DO
      END

      SUBROUTINE ITDATA ( A, B, C, E, F, L )
       REAL*8 A(100), B(100), C(100), E(100), F(100)
       INTEGER L
       L = 1
       DO I=1,97,4
        A(I) = 1D0
        A(I+1) = 1D0
        A(I+2) = 1D0
        A(I+3) = 1D0
        B(I) = 1D0
        B(I+1) = 1D0
        B(I+2) = 1D0
        B(I+3) = 1D0
        C(I) = 1D0
        C(I+1) = 1D0
        C(I+2) = 1D0
        C(I+3) = 1D0
        E(I) = 1D0
        E(I+1) = 1D0
        E(I+2) = 1D0
        E(I+3) = 1D0
        F(I) = 1D0
        F(I+1) = 1D0
        F(I+2) = 1D0
        F(I+3) = 1D0
       END DO
      END
