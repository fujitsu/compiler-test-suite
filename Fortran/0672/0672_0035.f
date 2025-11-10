      LOGICAL  SW3,SW6,SW7,SW8

         SW3 = .TRUE.
         SW6 = .TRUE.
         SW7 = .TRUE.
         SW8 = .TRUE.
         CALL  SUB('SUB-1',SW3,SW6,SW7,SW8)

         SW3 = .TRUE.
         SW6 = .TRUE.
         SW7 = .FALSE.
         SW8 = .TRUE.
         CALL  SUB('SUB-2',SW3,SW6,SW7,SW8)

         SW3 = .FALSE.
         SW6 = .FALSE.
         SW7 = .TRUE.
         SW8 = .TRUE.
         CALL  SUB('SUB-3',SW3,SW6,SW7,SW8)

         SW3 = .TRUE.
         SW6 = .FALSE.
         SW7 = .TRUE.
         SW8 = .TRUE.
         CALL  SUB('SUB-4',SW3,SW6,SW7,SW8)

         SW3 = .FALSE.
         SW6 = .TRUE.
         SW7 = .FALSE.
         SW8 = .FALSE.
         CALL  SUB('SUB-5',SW3,SW6,SW7,SW8)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW3,SW6,SW7,SW8)

      character(*) MEMO
      LOGICAL      SW3,SW6,SW7,SW8
      COMPLEX      C(15),C1,C2,C3,C4,C5
     0NAMELIST     /NAMEL/   I, J, K,
     1                       C,C1,C2,C3,C4,C5

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         C(1)  = 0.0
         C(2)  = 0.0
         C(3)  = 0.0
         C(4)  = 0.0
         C(5)  = 0.0
         C(6)  = 0.0
         C(7)  = 0.0
         C(8)  = 0.0
         C(9)  = 0.0
         C(10) = 0.0
         C(11) = 0.0
         C(12) = 0.0
         C(13) = 0.0
         C(14) = 0.0
         C(15) = 0.0
         C1    = (0.0 , 0.0)
         C2    = (0.0 , 0.0)
         C3    = (0.0 , 0.0)
         C4    = (0.0 , 0.0)
         C5    = (0.0 , 0.0)
         I     = 1
         J     = I * 2
         K     = J + I * 2

    2 CONTINUE
         C1    = CMPLX(I + 1.0,J - 1.0)
         C2    = CMPLX(J - 1.0,K - 0.0)
         I     = 1

    3 CONTINUE
         SW3   = .NOT. SW3
         C3    = C1 + C2 / 2.0
         C4    = C1 + C2 * 2.0
         IF(.NOT. SW3) GO TO 5
    4 CONTINUE
         C(I)     = C1 + C2 + C3 - C4
         C(I + 1) = C1 - C2 + C3 + C4
         GO TO 6
    5 CONTINUE
         C3    = C1 - C2 / 2.0
         C4    = C1 - C2 * 2.0
         GO TO 7
    6 CONTINUE
         SW6   = .NOT. SW6
         C(I + 2) = C1 + C2 + C3
         C(I + 3) = C1 - C2 - C4
         IF(SW6) GO TO 8
    7 CONTINUE
         SW7   = .NOT. SW7
         C(I)     = C1 + C2 + C3 - C4
         C(I + 1) = C1 - C2 + C3 + C4
         IF(SW7) GO TO 6
    8 CONTINUE
         SW8   = .NOT. SW8
         C5    = C3
         C3    = CMPLX(REAL(C4),AIMAG(C4))
         C4    = CMPLX(REAL(C5),AIMAG(C5))
         IF(SW8) GO TO 7
    9 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
