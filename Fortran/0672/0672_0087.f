      LOGICAL  SW3,SW4,SW6

         SW3 = .TRUE.
         SW4 = .TRUE.
         SW6 = .FALSE.
         CALL  SUB('SUB-1',SW3,SW4,SW6)

         SW3 = .TRUE.
         SW4 = .FALSE.
         SW6 = .FALSE.
         CALL  SUB('SUB-2',SW3,SW4,SW6)

         SW3 = .FALSE.
         SW4 = .TRUE.
         SW6 = .TRUE.
         CALL  SUB('SUB-3',SW3,SW4,SW6)

         SW3 = .FALSE.
         SW4 = .FALSE.
         SW6 = .TRUE.
         CALL  SUB('SUB-4',SW3,SW4,SW6)

         SW3 = .FALSE.
         SW4 = .FALSE.
         SW6 = .FALSE.
         CALL  SUB('SUB-5',SW3,SW4,SW6)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW3,SW4,SW6)

      character(*) MEMO
      LOGICAL      SW3,SW4,SW6
      NAMELIST     /NAMEL/   J,K,L,M,N

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I     = 1
         J     = 0
         K     = 0
         L     = 0
         M     = 0
         N     = 0

    2 CONTINUE
         M     = (- 3) * I + 3 * (I - 2)
         J     = I
         N     = (- 3) * J - 3 * (J - 2)
         K     = 3 * (J - 2) + 4 * (I - 2)

    3 CONTINUE
         SW3   = .NOT. SW3
         K     = K + 3 * (J - 2) / 4 * (5 - J)
         N     = N + I
         M     = M - J
         IF(.NOT. SW3) GO TO 6
    4 CONTINUE
         SW4   = .NOT. SW4
         L     = M + N
         K     = K + L - (M + N)
         I     = I + 2
         IF(SW4) GO TO 2
    5 CONTINUE
         M     = 2
         N     = 7
         M     = L * (J + 1) + M * (J + 1)
    6 CONTINUE
         SW6   = .NOT. SW6
         N     = J + J * 2
         M     = J - J * 2
         J     = J + I
         IF(SW6) GO TO 3

    7 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
