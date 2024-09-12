      LOGICAL  SW3,SW4,SW6

         SW3 = .TRUE.
         SW4 = .FALSE.
         SW6 = .FALSE.
         CALL  SUB ('SUB-1',SW3,SW4,SW6)

         SW3 = .TRUE.
         SW4 = .TRUE.
         SW6 = .TRUE.
         CALL  SUB ('SUB-2',SW3,SW4,SW6)

         SW3 = .FALSE.
         SW4 = .TRUE.
         SW6 = .TRUE.
         CALL  SUB ('SUB-3',SW3,SW4,SW6)

         SW3 = .FALSE.
         SW4 = .FALSE.
         SW6 = .FALSE.
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
      NAMELIST      /NAMEL/ IA1,IB1,IC1,ID1,
     *                      IA2,IB2,IC2,ID2,
     *                              IC3,ID3,
     *                      IA4,IB4,IC4,ID4,
     *                      A3

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         IA1   = 11
         IB1   = 12
         IA2   = 21
         IB2   = 2
         A3    = 3.1
         IA4   = 10
         IB4   = 20
         IC1   = 10
         IC2   = 10
         IC3   = 10
         IC4   = 10
         ID1   = 10
         ID2   = 10
         ID3   = 10
         ID4   = 30

    2 CONTINUE
         IC1   = IA1 + IB1
         A3    = 3.2 + A3
    3 CONTINUE
         SW3   = .NOT. SW3
         IC2   = MOD(IA2 , IB2)
         IC3   = IFIX(A3)
         IC4   = IA4 * IB4
         IF ( SW3 ) GO TO 4
    5 CONTINUE
         ID2   = MOD(IA2 , IB2)
         ID3   = IFIX(A3)
         IA4   = IA4 + 51
         GO TO 6
    4 CONTINUE
         SW4   = .NOT. SW4
         IC2   = IC2 + 41
         IA2   = IA2 + 41
         ID3   = IFIX(A3)
         ID4   = IA4 * IB4
         IF ( SW4 ) GO TO 2
    6 CONTINUE
         SW6   = .NOT. SW6
         ID1   = IA1 + IB1
         IA1   = IB1 + ID1
         ID3   = ID3 + IFIX(A3)
         ID4   = IA4 * IB4 + ID4
         IF ( SW6 ) GO TO 2

    7 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
