      LOGICAL  SW3

         SW3 = .TRUE.
         CALL  SUB('SUB-1',SW3)

         SW3 = .FALSE.
         CALL  SUB('SUB-2',SW3)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW3)
      REAL*8        MEMO
      LOGICAL       SW3
      NAMELIST      /NAMEL1/ M ,N
     *              /NAMEL2/ K ,K1 ,L ,M ,N

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I     = 1
         J     = 1
         K1    = 5

    2 CONTINUE
         M     = I * 5
         N     = FLOAT(I) + I * 5
         I     = I + 1
    3 CONTINUE
         SW3   = .NOT. SW3
         K     = J * K1
         L     = FLOAT(J) + I * 5
         J     = J + K1
         IF ( .NOT. SW3 ) GO TO 5
    4 CONTINUE
         M     = M + K + I * 5
         N     = N + L + J * K1
         WRITE(6,NAMEL1)
         GO TO 2

    5 CONTINUE
         M     = 2
         N     = 3
         WRITE(6,NAMEL2)

      RETURN
      END
