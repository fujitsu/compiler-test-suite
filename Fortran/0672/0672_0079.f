      LOGICAL  SW2,SW3,SW7
      INTEGER  SW6,SW10

         SW2 = .TRUE.
         SW3 = .TRUE.
         SW6 = 4
         SW7  = .TRUE.
         SW10 = 1
         CALL   SUB('SUB-1',SW2,SW3,SW6,SW7,SW10)

         SW2  = .TRUE.
         SW3  = .TRUE.
         SW6  = 4
         SW7  = .FALSE.
         SW10 = 4
         CALL   SUB('SUB-2',SW2,SW3,SW6,SW7,SW10)

         SW2  = .TRUE.
         SW3  = .FALSE.
         SW6  = 3
         SW7  = .FALSE.
         SW10 = 2
         CALL   SUB('SUB-3',SW2,SW3,SW6,SW7,SW10)

         SW2  = .FALSE.
         SW3  = .TRUE.
         SW6  = 1
         SW7  = .TRUE.
         SW10 = 1
         CALL   SUB('SUB-4',SW2,SW3,SW6,SW7,SW10)

         SW2  = .FALSE.
         SW3  = .TRUE.
         SW6  = 5
         SW7  = .TRUE.
         SW10 = 1
         CALL   SUB('SUB-5',SW2,SW3,SW6,SW7,SW10)

         SW2  = .FALSE.
         SW3  = .FALSE.
         SW6  = 5
         SW7  = .FALSE.
         SW10 = 5
         CALL   SUB('SUB-6',SW2,SW3,SW6,SW7,SW10)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW2,SW3,SW6,SW7,SW10)

      REAL*8       MEMO
      LOGICAL      SW2,SW3,SW7
      INTEGER      SW6,SW10
      DIMENSION    A(10),B(10),C(10),D(10)
     0NAMELIST     /NAMEL/    A,  B,  C,  D,
     1                       I1, I5,
     2                       IW,IW1,IW2,IW3,IW4

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I1    = 1
         I2    = 1 * 1
         I3    = 3
         I4    = 5
         I5    = 5
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
         B(1)  = 0
         B(2)  = 0
         B(3)  = 0
         B(4)  = 0
         B(5)  = 0
         B(6)  = 0
         B(7)  = 0
         B(8)  = 0
         B(9)  = 0
         B(10) = 0
         C(1)  = 0
         C(2)  = 0
         C(3)  = 0
         C(4)  = 0
         C(5)  = 0
         C(6)  = 0
         C(7)  = 0
         C(8)  = 0
         C(9)  = 0
         C(10) = 0
         D(1)  = 0
         D(2)  = 0
         D(3)  = 0
         D(4)  = 0
         D(5)  = 0
         D(6)  = 0
         D(7)  = 0
         D(8)  = 0
         D(9)  = 0
         D(10) = 0
         IW    = 0
         IW1   = 0
         IW2   = 0
         IW3   = 0
         IW4   = 0

    2 CONTINUE
         SW2   = .NOT. SW2
         A(I1) = FLOAT(I1) + I1 * 2
         IW1   = IFIX(FLOAT(I1 * 2))
         I1    = I1 + 1
         IF(.NOT. SW2) GO TO 7
    3 CONTINUE
         SW3   = .NOT. SW3
         B(I2) = FLOAT(I2) + IW1
         IW2   = IFIX(FLOAT(I2 * 4))
         IW3   = I2 + 5
         I2    = I2 + 1
         IF(.NOT. SW3) GO TO 5
    4 CONTINUE
         C(I3) = FLOAT(I3) + FLOAT(I1 * 2 + I2 * 4)
         IW2   = IW2 + I1 * 2 + I2 * 4 + I3 * 6
         IW3   = I2 * 1
         I3    = I3 - 1
    5 CONTINUE
         IW3   = IW3 + 2
         D(I4) = IW3 * FLOAT(I4)
         IW3   = IW3 + 2 - I4
         I4    = I4  - 1
    6 CONTINUE
         SW6   = MOD(SW6,5) + 1
         IW4   = I1 * 2 + I2 * 4 + I3 * 6 + I4 * 8
         IW    = (IW1 + IW2) * (IW1 + IW2)
         IW1   = (IW1 + IW2) * IW
         I5    = I4 + 1
         GO TO (2,3,4,5,11), SW6
    7 CONTINUE
         SW7   = .NOT. SW7
         I1    = I1 + 1
         IW1   = I5 * 2 + I1
         I5    = I5 + 1
         I1    = I1 - 1
         A(I1) = I1 + 2
         IW1   = IW1 + I1 * 2
         IF(.NOT. SW7) GO TO 9
    8 CONTINUE
         IW2   = IW1 - FLOAT(I1 * 2 * 2)
         GO TO 10
    9 CONTINUE
         IW2   = IW1 + FLOAT(I1 * 2 * 2)
   10 CONTINUE
         SW10  = MOD(SW10,5) + 1
         I1    = I1 + 1
         IW    = IW2 + I1 * 4
         GO TO (2,6,7,8,9), SW10

   11 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
