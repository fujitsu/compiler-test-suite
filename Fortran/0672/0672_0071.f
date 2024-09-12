      LOGICAL  SW3,SW4,SW6

         SW3  = .FALSE.
         SW4  = .TRUE.
         SW6 = .TRUE.
         CALL  SUB ('SUB-1',SW3,SW4,SW6)

         SW3 = .FALSE.
         SW4 = .FALSE.
         SW6 = .FALSE.
         CALL  SUB ('SUB-2',SW3,SW4,SW6)

         SW3 = .TRUE.
         SW4 = .FALSE.
         SW6 = .FALSE.
         CALL  SUB ('SUB-3',SW3,SW4,SW6)

         SW3 = .TRUE.
         SW4  = .FALSE.
         SW6 = .TRUE.
         CALL  SUB ('SUB-4',SW3,SW4,SW6)

         SW3 = .FALSE.
         SW4 = .FALSE.
         SW6 = .TRUE.
         CALL  SUB ('SUB-5',SW3,SW4,SW6)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW3,SW4,SW6)
      REAL*8        MEMO
      LOGICAL       SW3,SW4,SW6
      NAMELIST      /NAMEL/ IA ,IB ,IC ,
     *                      IW1,IW2,IW3,
     *                      N1 ,N2
      DIMENSION     IA(10),IB(10),IC(10)

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         IA(1) = 0
         IA(2) = 0
         IA(3) = 0
         IA(4) = 0
         IA(5) = 0
         IA(6) = 0
         IA(7) = 0
         IA(8) = 0
         IA(9) = 0
         IA(10)= 0
         IB(1) = 0
         IB(2) = 0
         IB(3) = 0
         IB(4) = 0
         IB(5) = 0
         IB(6) = 0
         IB(7) = 0
         IB(8) = 0
         IB(9) = 0
         IB(10)= 0
         IC(1) = 0
         IC(2) = 0
         IC(3) = 0
         IC(4) = 0
         IC(5) = 0
         IC(6) = 0
         IC(7) = 0
         IC(8) = 0
         IC(9) = 0
         IC(10)= 0
         I     = 1
         J     = I + 1
         K     = I + J - 1
         N1    = 0
         N2    = N1 / 2 + N1 + 1

    2 CONTINUE
         IW1   = I * 5 + I
         IW2   = I * (4 + 1) + K * N2
         IW3   = J * N1 + K * N2

    3 CONTINUE
         SW3   = .NOT. SW3
         IA(I) = I * 5
         IB(J) = J * N1
         IC(K) = J * N2
         IF ( .NOT. SW3 ) GO TO 5
    4 CONTINUE
         SW4   = .NOT. SW4
         I     = I + 1
         J     = J + 1
         K     = 10 - K
         IF ( SW4 ) GO TO 6

    5 CONTINUE
         N1    = N1 + 1
         N2    = N2 + 2
         I     = 0
         J     = 0
         K     = 0
    6 CONTINUE
         SW6   = .NOT. SW6
         I     = I + 1
         J     = J + 1
         K     = K + 1
         IF ( SW6 ) GO TO 2
    7 CONTINUE
              WRITE(6,NAMEL)

      RETURN
      END
