      LOGICAL  SW5
      INTEGER  SW2

         SW2 = 1
         SW5 = .TRUE.
         CALL  SUB ('SUB-1',SW2,SW5)

         SW2 = 1
         SW5 = .FALSE.
         CALL  SUB ('SUB-2',SW2,SW5)

         SW2 = 2
         SW5 = .TRUE.
         CALL  SUB ('SUB-3',SW2,SW5)

         SW2 = 2
         SW5 = .FALSE.
         CALL  SUB ('SUB-4',SW2,SW5)

         SW2 = 3
         SW5 = .FALSE.
         CALL  SUB ('SUB-5',SW2,SW5)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW2,SW5)
      REAL*8        MEMO
      LOGICAL       SW5
      INTEGER       SW2
      NAMELIST      /NAMEL/ K1 ,K2 ,K3 ,
     *                      M1 ,M2 ,M3 ,
     *                      N1 ,N2

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I     = 2
         J     = I / 2
         K     = (I / 2) * 2 + 1
         N1    = 3
         N2    = 4
         K1    = N1 + N2
         K2    = N1 / N2 + 2

    2 CONTINUE
         SW2   = MOD(SW2,3) + 1
         M1    = I * N1 + I * 2 + J * 3
         M2    = I * N1 - I * 2
         M3    = K * 2 + J * 3
         K3    = K1 + K2
         GO TO (3 ,4 ,5 ) , SW2
    3 CONTINUE
         M1    = M1 + I * N1 + I * IFIX(2.0)
         M2    = M2 + J * IFIX(3.0) + I * N1 - I * 2
         M3    = M3 + I * (IFIX(4.0) - 2)
         GO TO 5
    4 CONTINUE
         M1    = M1 - I * N2 - I * 2
         M2    = M2 + J * 3 + I * N1 - I * FLOAT(2)
         M3    = M3 - K * (IFIX(3.5) - 1)
    5 CONTINUE
         SW5   = .NOT. SW5
         K2    = 5
         K1    = 2
         K3    = K1 + K2
         I     = K2 - K1 + I
         J     = J + (K1 - K2)
         K     = K3 - K
         IF ( SW5 ) GO TO 2
    6 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
