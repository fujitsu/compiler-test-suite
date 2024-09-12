      LOGICAL  SW2,SW4,SW5,SW8,SW9

         SW2 = .TRUE.
         SW4 = .TRUE.
         SW5 = .TRUE.
         SW8 = .TRUE.
         SW9 = .TRUE.
         CALL  SUB ('SUB-1',SW2,SW4,SW5,SW8,SW9)

         SW2 = .TRUE.
         SW4 = .TRUE.
         SW5 = .FALSE.
         SW8 = .TRUE.
         SW9 = .FALSE.
         CALL  SUB ('SUB-2',SW2,SW4,SW5,SW8,SW9)

         SW2 = .FALSE.
         SW4 = .FALSE.
         SW5 = .TRUE.
         SW8 = .TRUE.
         SW9 = .FALSE.
         CALL  SUB ('SUB-3',SW2,SW4,SW5,SW8,SW9)

         SW2 = .FALSE.
         SW4 = .FALSE.
         SW5 = .TRUE.
         SW8 = .FALSE.
         SW9 = .TRUE.
         CALL  SUB ('SUB-4',SW2,SW4,SW5,SW8,SW9)

         SW2 = .FALSE.
         SW4 = .FALSE.
         SW5 = .FALSE.
         SW8 = .TRUE.
         SW9 = .FALSE.
         CALL  SUB ('SUB-5',SW2,SW4,SW5,SW8,SW9)

      STOP
      END

      SUBROUTINE    SUB(MEMO,SW2,SW4,SW5,SW8,SW9)
      CHARACTER(8)  MEMO
      LOGICAL       SW2,SW4,SW5,SW8,SW9
      NAMELIST      /NAMEL/ A,B,C,D,E,
     *                      I,J,K
      DIMENSION     A(10),B(5),C(6),D(6)
      WRITE(6,*)    MEMO

    1 CONTINUE
         I     = 1
         K     = -2 * I
         J     = I
         E     = 0.0
         A(1)  = 0
         A(2)  = A(1)
         A(3)  = A(2)
         A(4)  = A(3)
         A(5)  = A(4)
         A(6)  = A(5)
         A(7)  = A(6)
         A(8)  = A(7)
         A(9)  = A(8)
         A(10) = A(9)
         B(1)  = 0
         B(2)  = B(1)
         B(3)  = B(2)
         B(4)  = B(3)
         B(5)  = B(4)
         C(1)  = 0
         C(2)  = C(1)
         C(3)  = C(2)
         C(4)  = C(3)
         C(5)  = C(4)
         C(6)  = C(5)
         D(1)  = 0
         D(2)  = D(1)
         D(3)  = D(2)
         D(4)  = D(3)
         D(5)  = D(4)
         D(6)  = D(5)

    2 CONTINUE
         SW2   = .NOT. SW2
         I     = I + 1
         K     = K + 3
         IF ( .NOT. SW2 ) GO TO 10
    3 CONTINUE
         D(J)  = 2 * I + 2 * K
         D(J+1)= D(J) -3

    4 CONTINUE
         SW4   = .NOT. SW4
         C(K)  = FLOAT(K + IFIX(2.0))
         C(K+1)= C(K) + 1
         IF ( .NOT. SW4 ) GO TO 6
    5 CONTINUE
         SW5   = .NOT. SW5
         E     = K + 2 * K + 3 * K
         C(K+2)= E + 3.0
         IF ( SW5 ) GO TO 4

    7 CONTINUE
         I     = 1
         GO TO 8
    6 CONTINUE
         C(K+2)= 2 * K + K
         I     = I + K + 1
         J     = J + 2
         GO TO 3

    8 CONTINUE
         SW8   = .NOT. SW8
         A(I)  = 2 * J
         B(J)  = J * 2
         I     = I + 1
         IF ( SW8 ) GO TO 8

    9 CONTINUE
         SW9   = .NOT. SW9
         I     = I + J + IFIX(A(1) - A(2-1))
         K     = K + 3
         IF ( SW9 ) GO TO 5

   10 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
