         LOGICAL   SW3 , SW6

         SW3 = .TRUE.
         SW6 = .TRUE.
         CALL SUB('SUB-1',SW3,SW6)

         SW3 = .FALSE.
         SW6 = .TRUE.
         CALL SUB('SUB-2',SW3,SW6)

         SW3 = .TRUE.
         SW6 = .FALSE.
         CALL SUB('SUB-3',SW3,SW6)

         SW3 = .FALSE.
         SW6 = .FALSE.
         CALL SUB('SUB-4',SW3,SW6)

        STOP
        END
      SUBROUTINE   SUB(MEMO,SW3,SW6)
         character(*)  MEMO
         LOGICAL   SW3 , SW6
         NAMELIST  /NAMEL/ M1 , M2 , N1 , N2

         WRITE(6,2000) MEMO
 2000         FORMAT(1H0,A8)

    1 CONTINUE
         I = 2
         J = I + 2
         I = J + I
         N1 = 2
         N2 = 3

    2 CONTINUE
         J = 1
         M1 = I * 3 + J * I
         M2 = I * N1
    3 CONTINUE
         SW3 = .NOT. SW3
         M1 = M1 + I * IFIX(AIMAG((4.0,3.0)))
         M2 = M2 - I * N1
         IF (.NOT. SW3) GO TO 5
    4 CONTINUE
         M1 = M1 * 2
         M2 = M1 * 4
         I = I + 1
    5 CONTINUE
         M1 = M1 - I * IFIX(REAL((4.0,-0.1)))
         M2 = M2 - I * N1 - I * N2
    6 CONTINUE
         SW6 = .NOT. SW6
         J = J + 1
         N1 = N1 + 1
         N2 = N2 + 2
         IF (SW6) GO TO 2

    7 CONTINUE
         N1 = 4
         N2 = 6

         WRITE(6,NAMEL)
         RETURN
      END
