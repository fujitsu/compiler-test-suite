      LOGICAL  SW4,SW8,SW9

         SW4 = .TRUE.
         SW8 = .TRUE.
         SW9 = .TRUE.
         CALL  SUB('SUB-1',SW4,SW8,SW9)

         SW4 = .TRUE.
         SW8 = .FALSE.
         SW9 = .FALSE.
         CALL  SUB('SUB-2',SW4,SW8,SW9)

         SW4 = .FALSE.
         SW8 = .TRUE.
         SW9 = .TRUE.
         CALL  SUB('SUB-3',SW4,SW8,SW9)

         SW4 = .FALSE.
         SW8 = .FALSE.
         SW9 = .FALSE.
         CALL  SUB('SUB-4',SW4,SW8,SW9)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW4,SW8,SW9)

      REAL*8       MEMO
      LOGICAL      SW4,SW8,SW9
      DIMENSION    A(3,3,3), B(5,5), C(2)
     0NAMELIST     /NAMEL/    A, B, C, N, M,
     1                       N1,N2,N3,N4,N5

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE

         A(1,1,1)   = 0
         A(1,1,2)   = 0
         A(1,1,3)   = 0
         A(1,2,1)   = 0
         A(1,2,2)   = 0
         A(1,2,3)   = 0
         A(1,3,1)   = 0
         A(1,3,2)   = 0
         A(1,3,3)   = 0
         A(2,1,1)   = 0
         A(2,1,2)   = 0
         A(2,1,3)   = 0
         A(2,2,1)   = 0
         A(2,2,2)   = 0
         A(2,2,3)   = 0
         A(2,3,1)   = 0
         A(2,3,2)   = 0
         A(2,3,3)   = 0
         A(3,1,1)   = 0
         A(3,1,2)   = 0
         A(3,1,3)   = 0
         A(3,2,1)   = 0
         A(3,2,2)   = 0
         A(3,2,3)   = 0
         A(3,3,1)   = 0
         A(3,3,2)   = 0
         A(3,3,3)   = 0
         B(1,1)     = 0
         B(1,2)     = 0
         B(1,3)     = 0
         B(1,4)     = 0
         B(1,5)     = 0
         B(2,1)     = 0
         B(2,2)     = 0
         B(2,3)     = 0
         B(2,4)     = 0
         B(2,5)     = 0
         B(3,1)     = 0
         B(3,2)     = 0
         B(3,3)     = 0
         B(3,4)     = 0
         B(3,5)     = 0
         B(4,1)     = 0
         B(4,2)     = 0
         B(4,3)     = 0
         B(4,4)     = 0
         B(4,5)     = 0
         B(5,1)     = 0
         B(5,2)     = 0
         B(5,3)     = 0
         B(5,4)     = 0
         B(5,5)     = 0
         C(1)  = 0
         C(2)  = 0
         N     = 0
         N1    = 0
         N2    = 0
         N3    = 0
         N4    = 0
         N5    = 0
         L     = 1
         M     = L ** L
    2 CONTINUE
         M     = L ** L + M
         I     = 1
    3 CONTINUE
         A(I,1,1) = FLOAT(I / 4 + 1)
         J     = 1
    4 CONTINUE
         SW4   = .NOT. SW4
         N     = 3
         M     = M + M * 2 + N ** I
         N     = N + N ** (N - I) + N * 2
         A(I + 1,I + 1,I + 1) = A(I,I,I) + FLOAT(L ** 2)
         IF(.NOT. SW4) GO TO 6
    5 CONTINUE
         M     = N + M
         I     = I + 1
         IF(I .LE. 2) GO TO 7
    6 CONTINUE
         N     = 2
         M     = N ** J + 2
         A(N - 1,N + 1 - 2,1) = FLOAT(N ** J)
         J     = J + 1
         IF(J .LE. 2) GO TO 3
    7 CONTINUE
         K      = 1
         B(1,1) = K
         B(K,2 * K) = 2 * K - 1
         B(2 * K,K) = 2 * K
         B(2 * K,2 * K) = 2 * K * L
         B(2,3) = 0.
         B(3,2) = 0.
         B(3,3) = 0.
         B(1,3) = 0.
         B(3,1) = 0.
    8 CONTINUE
         SW8    = .NOT. SW8
         B(K,2 * K - 1) = B(2 * K - 1,K) + FLOAT(L ** 2 + 2 * L - L * I)
         B(2 * K - 1,K + 1) = B(K + 1,K + 2) + FLOAT(2 * K - 1)
         N3     = 5
         IF(.NOT. SW8) GO TO 10
    9 CONTINUE
         SW9   = .NOT. SW9
         N1    = L ** 2
         N2    = 2 * (5 - K)
         N4    = N3 * (K + 1)
         IF(.NOT. SW9) GO TO 11
   10 CONTINUE
         N1    = L ** 2 / 2 * (3 - K)
         N2    = 2 * (K + 5)
         N4    = N3 * (K - 1)
         N5    = N1 + N2 + N3
         GO TO 12
   11 CONTINUE
         N5    = (N1 + N2 + N3) * 2
   12 CONTINUE
         N5    = N5 * ((2 * K - 1) ** (K - 1))
         K     = K + 1
         IF(K .LE. 3) GO TO 8
   13 CONTINUE
         C(L)  = A(L,L,L) + B(L,2*L-1)
         N5    = N1 + N2 + N3 + N4 + N5
         L     = L + 1
         IF(L .LE. 2) GO TO 2
   14 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
