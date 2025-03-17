      LOGICAL       SW3
      INTEGER       SW6

         SW3 = .TRUE.
         SW6 = 1
         CALL  SUB ('SUB-1',SW3,SW6)

         SW3 = .FALSE.
         SW6 = 1
         CALL  SUB ('SUB-2',SW3,SW6)

         SW3 = .TRUE.
         SW6 = 2
         CALL  SUB ('SUB-3',SW3,SW6)

         SW3 = .FALSE.
         SW6 = 3
         CALL  SUB ('SUB-4',SW3,SW6)

         SW3 = .TRUE.
         SW6 = 4
         CALL  SUB ('SUB-5',SW3,SW6)

         SW3 = .FALSE.
         SW6 = 4
         CALL  SUB ('SUB-6',SW3,SW6)

         SW3 = .FALSE.
         SW6 = 5
         CALL  SUB ('SUB-7',SW3,SW6)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW3,SW6)
      character(*)  MEMO
      LOGICAL       SW3
      INTEGER       SW6
      NAMELIST      /NAMEL/ I , J , K , L ,
     *                      I1, I2, I3, I4, I5,
     *                      K1, K2, K3, K4, K5,
     *                      A1, A2, A3, A4, A5, AL

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I     = 1
         J     = 1
         K     = -1
         L     = 0
         I1    = 1
         I2    = 1
         I3    = 1
         I4    = 1
         I5    = 1
         K1    = 2
         K2    = 2
         K3    = 2
         K4    = 2
         K5    = 2
         A1    = 3.
         A2    = 3.
         A3    = 3.
         A4    = 3.
         A5    = 3.
         AL    = 4.

    2 CONTINUE
         K3    = 3 * I3
         K5    = 5 ** I5
         A5    = K5 + 5 / 10.
         I5    = 5  - I5
         IF ( I .EQ. 0 ) GO TO 6
    3 CONTINUE
         SW3   = .NOT. SW3
         I     = I - 1
         K2    = 2 / I2
         A2    = MAX0(K2,K2)
         IF ( .NOT. SW3 ) GO TO 5
    4 CONTINUE
         I     = 2 ** I
         I2    = I2 - 2
         A2    = AMAX0(K2,K2)
         GO TO 2
    5 CONTINUE
         K1    = 1 * I1
         A1    = FLOAT(K1)
         I1    = I1 + 1
         A1    = IABS(K1)
         GO TO 2
    6 CONTINUE
         SW6   = MOD(SW6,5) + 1
         J     = 2 ** J
         A5    = FLOAT(K5) + 4.0
         K     = K + 1
         L     = 1 - L
         GO TO (4 , 5 , 7 , 8 , 9) , SW6
    7 CONTINUE
         A3    = K3 + 4
         I3    = 3 - I3
         A3    = K3 * K3
         IF( J .EQ. 0 ) GO TO 4
         GO TO 10
    8 CONTINUE
         AL    = FLOAT(L)
         K4    = 4 ** I4
         GO TO 10
    9 CONTINUE
         A4    = MOD(K4,K4)
         I4    = I4 - 4
         A4    = FLOAT(K4)
         IF( K .EQ. 0 ) GO TO 5
   10 CONTINUE
         J     = 2 - J
         K     = K * 2
         IF( L .NE. 0 ) GO TO 2

   11 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
