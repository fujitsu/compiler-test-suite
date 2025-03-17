      LOGICAL  SW5
      INTEGER  SW6

         SW5 = .TRUE.
         SW6 = 1
         CALL  SUB ('SUB-1',SW5,SW6)

         SW5 = .TRUE.
         SW6 = 2
         CALL  SUB ('SUB-2',SW5,SW6)

         SW5 = .TRUE.
         SW6 = 3
         CALL  SUB ('SUB-3',SW5,SW6)

         SW5 = .TRUE.
         SW6 = 4
         CALL  SUB ('SUB-4',SW5,SW6)

         SW5 = .FALSE.
         SW6 = 4
         CALL  SUB ('SUB-5',SW5,SW6)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW5,SW6)
      character(*)  MEMO
      LOGICAL       SW5
      INTEGER       SW6
      NAMELIST      /NAMEL/ A  ,B  ,
     *                      W0 ,W1 ,W2 ,W3 ,
     *                      K  ,K1 ,L  ,M
      DIMENSION     A(30),B(6)

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         A(1)  = 0
         A(2)  = 0
         A(3)  = 0
         A(4)  = 0
         A(5)  = 0
         A(6)  = 0
         A(7)  = 0
         A(8)  = 0
         A(9)  = 0
         A(10) = 0
         A(11) = 0
         A(12) = 0
         A(13) = 0
         A(14) = 0
         A(15) = 0
         A(16) = 0
         A(17) = 0
         A(18) = 0
         A(19) = 0
         A(20) = 0
         A(21) = 0
         A(22) = 0
         A(23) = 0
         A(24) = 0
         A(25) = 0
         A(26) = 0
         A(27) = 0
         A(28) = 0
         A(29) = 0
         A(30) = 0
         B(1)  = 0
         B(2)  = 0
         B(3)  = 0
         B(4)  = 0
         B(5)  = 0
         B(6)  = 0
         I     = 0
         J     = 4
         K     = 0
         K1    = I - 2
         M     = 1
         N     = 1
         W     = 0
         W1    = 0
         W2    = 0
         W3    = 0
         L     = 0

    2 CONTINUE
         W1    = FLOAT(K1 ** (I + 2))
         W2    = -3 * I + 3 * (I + 1)
         A(I+1)= W1 + W2 + A(I + 1)
         K     = K + 2 * (I + 2) / 2 * (I + 1)
         B(1)  = B(1) + 1.0

    3 CONTINUE
         W1    = W1 + (-K1) ** (J + 5)
         W2    = W2 + 4 * (J - 2) + 4 * (J + 2)
         A(I+2)= W1 / W2 + A(I+2)
         L     = K + (J + 5) + 4 * (J - 2) / 2 * (I + 2)
         B(2)  = B(2) + 1.0

    4 CONTINUE
         W0    = REAL((2.0 , -2.0))
         W1    = W1 + 2 ** (I + IFIX(W0))
         W2    = W2 + FLOAT(2 ** (N + IFIX(W0)))
         W3    = 2 ** (N + 2)
         A(I+3)= W3 + W1 / W2 + A((I +2)+1)
         B(3)  =B(3) + 1.0

    5 CONTINUE
         SW5   = .NOT. SW5
         W0    = AIMAG((-3.0 , 3.0))
         W1    = W1 + IFIX(2.0) * (N + 1)
         W2    = W2 + W0 * (N - 1)
         A(I+4)= A(I+4) + W0 * W1 + W0 / W2
         N     = N + IFIX(W0)
         B(4)  = B(4) + 1.0
         I     = I + 4
         J     = J - 2
         N     = N + 2
         IF ( SW5 ) GO TO 2
    6 CONTINUE
         SW6   = MOD(SW6,4) + 1
         B(5)  = B(5) + 1.0
         B(6)  = B(6) + W1 + W2
         GO TO (7 ,8 ,10 ,9) , SW6
    7 CONTINUE
         W1    = B(4) * W0 + 2 ** (5 - I)
         W2    = B(4) * W0 - 2 ** (I + 5)
         GO TO 5

    8 CONTINUE
         W1    = B(3) * 2.0 + 2 * (J + 1)
         W2    = B(3) * 3.0 + FLOAT(IFIX(B(3) * 3.0))
         GO TO 4

    9 CONTINUE
         W1    = B(2) + 3 * (N - 2)
         W2    = B(2) + 4 * (2 - N)
         GO TO 3

   10 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
