           LOGICAL    SW2
           INTEGER    SW4

           SW2 = .FALSE.
           SW4 = 2
           CALL SUB('SUB-1',SW2,SW4)

           SW2 = .FALSE.
           SW4 = 1
           CALL SUB('SUB-2',SW2,SW4)

           SW2 = .FALSE.
           SW4 = 3
           CALL SUB('SUB-3',SW2,SW4)

           SW2 = .TRUE.
           SW4 = 1
           CALL SUB('SUB-4',SW2,SW4)

           SW2 = .TRUE.
           SW4 = 3
           CALL SUB('SUB-5',SW2,SW4)
        STOP
        END
      SUBROUTINE   SUB(MEMO,SW2,SW4)
         REAL*8    MEMO
         LOGICAL   SW2
         INTEGER   IA(5),IB(5),IC(5),SW4
         REAL      A(5)
         NAMELIST  /NAMEL/ IA,IB,IC,A,K1,K2,ID
         WRITE(6,2000) MEMO
 2000         FORMAT(1H0,A8)
    1 CONTINUE
         I = 1
         J = I + 1 * 1 - 1
         K = I + J - I
         L = I + K - J
         K1 = 5
         K2 = 5
         ID = 1
         IA(1) = 0
         IA(2) = 0
         IA(3) = 0
         IA(4) = 0
         IA(5) = 0
         IB(1) = 0
         IB(2) = 0
         IB(3) = 0
         IB(4) = 0
         IB(5) = 0
         IC(1) = 0
         IC(2) = 0
         IC(3) = 0
         IC(4) = 0
         IC(5) = 0
         A(1) = 0.
         A(2) = 0.
         A(3) = 0.
         A(4) = 0.
         A(5) = 0.

    2 CONTINUE
         SW2 = .NOT. SW2
         K1 = 2
         K2 = 2 * 1
         IA(I) = I + K1 + (J + K2)
         IB(J) =J + K2 - I - K1
         A(I) = FLOAT(I) + FLOAT(K1 - K2)
         IF (SW2) GO TO 5
    3 CONTINUE
         I = I + 1
         J = J + 1
         GO TO 4
    5 CONTINUE
         IC(K) = K - 4 + (L + 3)
         ID = L + 2
    4 CONTINUE
         SW4 = MOD(SW4,3) + 1
         K = K + 1
         L = L - 1
         GO TO (2,5,6), SW4

    6 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
