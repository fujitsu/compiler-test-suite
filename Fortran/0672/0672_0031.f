      LOGICAL  SW2,SW4,SW5

         SW2 = .TRUE.
         SW4 = .FALSE.
         SW5 = .TRUE.
         CALL  SUB('SUB-1',SW2,SW4,SW5)

         SW2 = .FALSE.
         SW4 = .TRUE.
         SW5 = .FALSE.
         CALL  SUB('SUB-2',SW2,SW4,SW5)

         SW2 = .TRUE.
         SW4 = .TRUE.
         SW5 = .FALSE.
         CALL  SUB('SUB-3',SW2,SW4,SW5)

         SW2 = .TRUE.
         SW4 = .FALSE.
         SW5 = .FALSE.
         CALL  SUB('SUB-4',SW2,SW4,SW5)

         SW2 = .FALSE.
         SW4 = .FALSE.
         SW5 = .FALSE.
         CALL  SUB('SUB-5',SW2,SW4,SW5)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW2,SW4,SW5)

      REAL*8       MEMO
      LOGICAL      SW2,SW4,SW5
      COMPLEX      C1,C2,C3
     0NAMELIST     /NAMEL/    I, J, K, L, M, N,
     1                       C1,C2,C3

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I     = 20.5
         J     = 19.0
         K     = - 3.4
         L     = 2
         M     = 2
         N     = 2
         C1    = (0.0 , 0.0)
         C2    = (0.0 , 0.0)
         C3    = (0.0 , 0.0)

    2 CONTINUE
         SW2   = .NOT. SW2
         K     = I + J + K
         IF(.NOT. SW2) GO TO 4
    3 CONTINUE
         M     = I + J - K
         L     = I / J + K
         N     = M / L
         GO TO 5
    4 CONTINUE
         SW4   = .NOT. SW4
         M     = I * J - K
         L     = I / J + K
         N     = M * L
         IF(SW4) GO TO 2
    5 CONTINUE
         SW5   = .NOT. SW5
         C1    = CMPLX(N + 0.0,- N + 0.0)
         C2    = CMPLX(I * J - K + 1.0,I / J + K - 1.0)
         C3    = CMPLX(1.0 + N,- 1.0 - N)
         IF(SW5) GO TO 4

    6 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
