      LOGICAL SW4
      INTEGER SW7

         SW4 = .TRUE.
         SW7 = 1
         CALL  SUB('SUB-1',SW4,SW7)

         SW4 = .TRUE.
         SW7 = 2
         CALL  SUB('SUB-2',SW4,SW7)

         SW4 = .TRUE.
         SW7 = 3
         CALL  SUB('SUB-3',SW4,SW7)

         SW4 = .FALSE.
         SW7 = 1
         CALL  SUB('SUB-4',SW4,SW7)

         SW4 = .FALSE.
         SW7 = 2
         CALL  SUB('SUB-5',SW4,SW7)

         SW4 = .FALSE.
         SW7 = 3
         CALL  SUB('SUB-6',SW4,SW7)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW4,SW7)

      REAL*8       MEMO
      LOGICAL      SW4,L11,L21,L31,L71
      INTEGER      SW7
      COMPLEX      C11,C12,C21,C22,C31,C41,C42,C61,C62,C71,C01,C04,C06,
     +             C02,C07,C20
      DIMENSION    I20(4), R20(4), C20(1)
      NAMELIST     /NAMEL/I01,I11,I21,I31,I41,I61,I71,
     +                    I02,I32,I04,I06,I07,I20,
     +                    R11,R21,R31,R41,R61,R71,
     +                    R12,R22,R32,R42,R72,R20,
     +                    C01,C11,C21,C31,C41,C61,C71,
     +                    C02,C12,C22,C42,C62,C04,C06,C07,C20,
     +                    L11,L21,L31,L71

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I21       =    2
         I31       =    3
         I32       =    3
         R21       =    2.1
         R22       =    2.2
         R31       =    3.1
         R32       =    3.2
         C21       =    (2.1,2.1)
         C22       =    (2.2,2.2)
         C31       =    (3.1,3.1)
         L21       =    .TRUE.
         L31       =    .FALSE.

    2 CONTINUE
         I02       =    2
         C02       =    (2.,2.)
         C20(1)    =    (2.0,2.0)
         R20(1)    =    2.01

    3 CONTINUE
         I11       =    I21  +    I31  +    1
         R11       =    R21  -    R31  +    FLOAT(I11)
         C11       =    C21  *    C31
         C12       =    C22  /    R32  +    C11
         R12       =    R22  **   I32
         L11       =    L21  .OR. L31
         I01       =    IABS(I02)      +    I11
         C01       =    CSIN(C02)
         I20(1)    =    IFIX(R20(1))
         R20(1)    =    REAL(C20(1))   *   AIMAG(C20(1))
    4 CONTINUE
      SW4 = .NOT. SW4
         I41       =    IABS(I02) +    IFIX(FLOAT(I11) - I01)
         R41       =    IFIX(R20(1))   *    R12
         C41       =    CMPLX(REAL(C20(1)),R41)
         C42       =    C22  /    R32
         R42       =    R21  -    R31  -    R41
         L11       =    L21  .OR. L31
         I04       =    C21  *    C31  +    (C41 + C42)
         C04       =    CCOS(C02) +    CSIN(C02)
         I20(2)    =    (I21 + I31)    *   AIMAG(C20(1))
         R20(2)    =    R22  **   I32
      IF(SW4) GO TO 3

    5 CONTINUE
         I02       =    5
         C02       =    (5.,5.)

    6 CONTINUE
         I61       =    IFIX(R20(1))   +    IFIX(R20(1))
         R61       =    FLOAT(IABS(I02))    **   6.0
         C61       =    C22  /    R32  +    C11
         C62       =    CMPLX(REAL(C20(1)),REAL(C20(1)))
         R12       =    R22  **   I32
         L71       =    .NOT.(L21 .OR. L31)
         I06       =    I21  +    I31  +    FLOAT(I11)
         C06       =    C21  *    C31  +    C21  *    C31
         I20(3)    =    IFIX(REAL(CSIN(C02)))
         R20(3)    =    R12  *    (R21 - R31)
    7 CONTINUE
      SW7 = MOD(SW7,3) + 1
         I71       =    IFIX(REAL(CSIN(C02)))
         R71       =    C21  +    C21  *    C31  +    (C41 + C42)
         I06       =    I21  +    I31  +    FLOAT(I11)
         C71       =    CMPLX(R21 - R31 , R21 - R31)
         R72       =    7.1  +    IFIX(R20(1))   +    R71
         L71       =    .NOT.(L21 .OR. L31)
         I07       =    IFIX (REAL(C22 / R32))
         C07       =    C71  +    REAL(C20(1))
         I20(4)    =    IABS(I02)
         R20(4)    =    R22  **   I32
      GO TO(2,6,8),SW7

    8 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
