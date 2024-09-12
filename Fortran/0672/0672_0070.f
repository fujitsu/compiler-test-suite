      LOGICAL  SW3,SW4

         SW3 = .TRUE.
         SW4 = .TRUE.
         CALL  SUB('SUB-1',SW3,SW4)

         SW3 = .FALSE.
         SW4 = .TRUE.
         CALL  SUB('SUB-2',SW3,SW4)

         SW3 = .FALSE.
         SW4 = .FALSE.
         CALL  SUB('SUB-3',SW3,SW4)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW3,SW4)

      REAL*8       MEMO
      LOGICAL      SW3,SW4
      DIMENSION    IA(5),IB(5)
      NAMELIST     /NAMEL/   IA,IB,IW1,IW2,IW3,IW4

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I     = 1
         J     = 20
         K     = 2
         L     = - 1
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

    2 CONTINUE
         IW1   = IFIX(FLOAT(I) * 2)
         IW2   = J * 3 * IW1
         IW3   = K * 4 + J * (4 - 1)
         IW4   = L * (7 - 1) + K * (3 + 1)

    3 CONTINUE
         SW3   = .NOT. SW3
         IA(I) = I * 2
         IW1   = J * 3 + I * 2
         IB(K) = K * 4
         IW2   = L * 6 + K * 4
         IF(.NOT. SW3) GO TO 5
    4 CONTINUE
         SW4   = .NOT. SW4
         I     = I + 1
         J     = J - 2
         K     = 7 - K
         L     = 5 - L
         IF(SW4) GO TO 3
    5 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
