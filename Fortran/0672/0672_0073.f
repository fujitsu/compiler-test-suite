      LOGICAL  SW3,SW5

         SW3 = .TRUE.
         SW5 = .TRUE.
         CALL  SUB('SUB-1',SW3,SW5)

         SW3 = .TRUE.
         SW5 = .FALSE.
         CALL  SUB('SUB-2',SW3,SW5)

         SW3 = .FALSE.
         SW5 = .TRUE.
         CALL  SUB('SUB-3',SW3,SW5)

         SW3 = .FALSE.
         SW5 = .FALSE.
         CALL  SUB('SUB-4',SW3,SW5)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW3,SW5)

      REAL*8       MEMO
      LOGICAL      SW3,SW5
     0NAMELIST     /NAMEL/   K1,K2,K3,K4,
     1                       M1,M2,M3,M4,
     2                       N1,N2

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I     = 1
         J     = I / I * I - 2
         K1    = 1
         K2    = K1 * K1
         K3    = K1 * 20
         K4    = K3 * 1
         N1    = 1
         N2    = N1 + 1
         M3    = 0
         M4    = 0

    2 CONTINUE
         M1    = I * (N1 + N2 - N2)
         M2    = J * (I * N1)

    3 CONTINUE
         SW3   = .NOT. SW3
         M1    = M1 + I * N1 + J * 2
         M2    = M2 + J * 2 - I * N1
         J     = J + K1
         IF(.NOT. SW3) GO TO 5
    4 CONTINUE
         I     = I + K2
         GO TO 3

    5 CONTINUE
         SW5   = .NOT. SW5
         I     = K3 - I
         M3    = I * N1 + J * N2
         J     = K4 - J
         M4    = - J * N2 + (- I) * N1
         IF(SW5) GO TO 2

    6 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
