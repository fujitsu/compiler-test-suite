      LOGICAL  SW4
      INTEGER  SW2,SW5

         SW2 = 1
         SW4 = .TRUE.
         SW5 = 1
         CALL  SUB('SUB-1',SW2,SW4,SW5)

         SW2 = 1
         SW4 = .FALSE.
         SW5 = 2
         CALL  SUB('SUB-2',SW2,SW4,SW5)

         SW2 = 2
         SW4 = .TRUE.
         SW5 = 3
         CALL  SUB('SUB-3',SW2,SW4,SW5)

         SW2 = 3
         SW4 = .TRUE.
         SW5 = 3
         CALL  SUB('SUB-4',SW2,SW4,SW5)

         SW2 = 3
         SW4 = .FALSE.
         SW5 = 1
         CALL  SUB('SUB-5',SW2,SW4,SW5)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW2,SW4,SW5)

      REAL*8       MEMO
      LOGICAL      SW4
      INTEGER      SW2,SW5
     0NAMELIST     /NAMEL/   K,K1,
     1                       M,M1,M2

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I     = 1
         J     = 2
         K     = 3
         K1    = 0
         M     = 0

    2 CONTINUE
         SW2   = MOD(SW2,3) + 1
         M1    = I * K + I * 2
         M2    = J * (- K)
         GO TO (3,4,5), SW2
    3 CONTINUE
         K1    = 2
         J     = J - K1
         M     = M1 + I * K1 + J * 3
         GO TO 5
    4 CONTINUE
         SW4   = .NOT. SW4
         K1    = 3
         I     = I + K1
         M     = M2 + J * K1 + I * 3
         IF(SW4) GO TO 2
    5 CONTINUE
         SW5   = MOD(SW5,3) + 1
         M     = M + (- J) * K + I * K
         M1    = (- I) * (- K)
         M2    = J * (- K)
         GO TO (2,4,6), SW5

    6 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
