      LOGICAL  SW4,SW7,SW8

         SW4 = .TRUE.
         SW7 = .TRUE.
         SW8 = .TRUE.
         CALL  SUB('SUB-1',SW4,SW7,SW8)

         SW4 = .TRUE.
         SW7 = .TRUE.
         SW8 = .FALSE.
         CALL  SUB('SUB-2',SW4,SW7,SW8)

         SW4 = .FALSE.
         SW7 = .TRUE.
         SW8 = .TRUE.
         CALL  SUB('SUB-3',SW4,SW7,SW8)

         SW4 = .FALSE.
         SW7 = .FALSE.
         SW8 = .TRUE.
         CALL  SUB('SUB-4',SW4,SW7,SW8)

         SW4 = .TRUE.
         SW7 = .FALSE.
         SW8 = .TRUE.
         CALL  SUB('SUB-5',SW4,SW7,SW8)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW4,SW7,SW8)

      REAL*8       MEMO
      LOGICAL      SW4,SW7,SW8
      COMPLEX      C1,C2,C3
      DIMENSION    A(10)
     0NAMELIST     /NAMEL/    A, B, C, D,
     1                        I,
     2                       C1,C2,C3

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         C     = 0
         D     = 0
         A(1)  = 0
         A(2)  = 0
         A(3)  = 0
         A(4)  = 0
         A(5)  = 0
         I     = 1
         A(6)  = 0
         A(7)  = 0
         A(8)  = 0
         A(9)  = 0
         A(10) = 0
         B     = 2.0 * SIN(0.0) + 1.0
         C1    = (2.0,- 2.0)
         C2    = (1.0,- 1.0)

    2 CONTINUE
         D     = B * I
         C     = (- B) * (- I) + D

    3 CONTINUE
         C1    = C1 + 1.0
         C2    = C2 + 2.0
         C3    = C1 + C2 - 2.0
    4 CONTINUE
         SW4   = .NOT. SW4
         A(1)  = - C1
         A(2)  = - C2
         IF(SW4) GO TO 2
    5 CONTINUE
         A(3)  = I * C1
         A(4)  = I * C2

    6 CONTINUE
         A(I + 4) = I * B + C1
         A(I + 5) = 1. + C2
         A(I + 6) = C1 + C2 + C3
    7 CONTINUE
         SW7   = .NOT. SW7
         C     = C1 + I * B + D
         D     = SIN(I * B) + EXP(B)
         IF(SW7) GO TO 3
    8 CONTINUE
         SW8   = .NOT. SW8
         A(I + 7) = D + C
         A(I + 8) = I * B
         A(I + 9) = SIN(B) * COS(B)
         IF(SW8) GO TO 6

    9 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
