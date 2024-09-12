      LOGICAL  SW2,SW5,SW7

         SW2 = .FALSE.
         SW5 = .FALSE.
         SW7 = .TRUE.
         CALL  SUB ('SUB-1',SW2,SW5,SW7)

         SW2 = .FALSE.
         SW5 = .FALSE.
         SW7 = .FALSE.
         CALL  SUB ('SUB-2',SW2,SW5,SW7)

         SW2 = .FALSE.
         SW5 = .TRUE.
         SW7 = .FALSE.
         CALL  SUB ('SUB-3',SW2,SW5,SW7)

         SW2 = .TRUE.
         SW5 = .FALSE.
         SW7 = .FALSE.
         CALL  SUB ('SUB-4',SW2,SW5,SW7)

         SW2 = .TRUE.
         SW5 = .TRUE.
         SW7 = .FALSE.
         CALL  SUB ('SUB-5',SW2,SW5,SW7)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW2,SW5,SW7)
      REAL*8        MEMO
      LOGICAL       SW2,SW5,SW7
      NAMELIST      /NAMEL/ A,B,C,D,E,J,K1
      DIMENSION     A(5),B(5),C(5),D(5),E(5)

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I     = 1
         J     = I * 1
         K     = I * J * 1
         L     = I * J * K * 5
         M     = L / 5
         K1    = 1
         A(1)  = 0
         A(2)  = 0
         A(3)  = 0
         A(4)  = 0
         A(5)  = 0
         B(1)  = 0
         B(2)  = 0
         B(3)  = 0
         B(4)  = 0
         B(5)  = 0
         C(1)  = 0
         C(2)  = 0
         C(3)  = 0
         C(4)  = 0
         C(5)  = 0
         D(1)  = 0
         D(2)  = 0
         D(3)  = 0
         D(4)  = 0
         D(5)  = 0
         E(1)  = 0
         E(2)  = 0
         E(3)  = 0
         E(4)  = 0
         E(5)  = 0

    2 CONTINUE
         SW2   = .NOT. SW2
         F     = 2.0 ** 2
         C(K)  = F / F * F + FLOAT(K)
         D(L)  = FLOAT(L) + F * F - FLOAT(L + 2)
         IF ( SW2 ) GO TO 3
    5 CONTINUE
         SW5   = .NOT. SW5
         A(I)  = FLOAT(I) + I * 2 + FLOAT(I + J)
         B(J)  = FLOAT(J) * I + J * FLOAT(I)
         IF ( SW5 ) GO TO 4
    6 CONTINUE
         I     = I + 1
         J     = J + 1.0
         M     = M + 1
         GO TO 5
    3 CONTINUE
         K     = K + K1
    4 CONTINUE
         L     = L - K1
         M     = M + 1
    7 CONTINUE
         SW7   = .NOT. SW7
         E(M)  = FLOAT(M) + A(I) + B(J) + C(K) + D(L)
         IF ( SW7 ) GO TO 2

    8 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
