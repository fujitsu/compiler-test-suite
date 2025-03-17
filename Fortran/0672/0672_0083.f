      LOGICAL  SW3,SW4

         SW3 = .TRUE.
         SW4 = .TRUE.
         CALL  SUB('SUB-1',SW3,SW4)

         SW3 = .TRUE.
         SW4 = .FALSE.
         CALL  SUB('SUB-2',SW3,SW4)

         SW3 = .FALSE.
         SW4 = .TRUE.
         CALL  SUB('SUB-3',SW3,SW4)

         SW3 = .FALSE.
         SW4 = .FALSE.
         CALL  SUB('SUB-4',SW3,SW4)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW3,SW4)

      character(*) MEMO
      LOGICAL      SW3,SW4
      DIMENSION    A(8)
      NAMELIST     /NAMEL/   A,B,K,M,N

      WRITE(6,2000)MEMO
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
         B     = 1.0
         I     = 1
         J     = - 2
         K     = 1
         M     = 1
         N     = 1

    2 CONTINUE
         M     = 2 ** (5 - I)
         A(K)  = FLOAT(M + (5 - I))
         K     = K + 1

    3 CONTINUE
         SW3   = .NOT. SW3
         N     = 2 ** (5 - I)
         A(K)  = N + 2 ** (4 - J) + (4 - J) * (5 - I)
         K     = K + 1
         I     = I + 2
         IF(SW3) GO TO 2
    4 CONTINUE
         SW4   = .NOT. SW4
         B     = 1.0
         N     = IFIX(B + 1.0) ** (4 - J)
         J     = J + 2
         IF(SW4) GO TO 3

    5 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
