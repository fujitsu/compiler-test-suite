          LOGICAL   SW3
          LOGICAL   SW4
          LOGICAL   SW6

         SW3  =  .TRUE.
         SW4  =  .TRUE.
         SW6  =  .TRUE.
         CALL  SUB('SUB-1',SW3,SW4,SW6)

         SW3  =  .TRUE.
         SW4  =  .TRUE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-2',SW3,SW4,SW6)

         SW3  =  .TRUE.
         SW4  =  .FALSE.
         SW6  =  .TRUE.
         CALL  SUB('SUB-3',SW3,SW4,SW6)

         SW3  =  .TRUE.
         SW4  =  .FALSE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-4',SW3,SW4,SW6)

         SW3  =  .FALSE.
         SW4  =  .TRUE.
         SW6  =  .TRUE.
         CALL  SUB('SUB-5',SW3,SW4,SW6)

         SW3  =  .FALSE.
         SW4  =  .TRUE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-6',SW3,SW4,SW6)

         SW3  =  .FALSE.
         SW4  =  .FALSE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-7',SW3,SW4,SW6)
      STOP
      END
      SUBROUTINE    SUB(MEMO,SW3,SW4,SW6)
      LOGICAL       SW3,SW4,SW6
      character(*)  MEMO
      NAMELIST      /NAMEL/A,B,C,D,I,W,X,Y,Z

         WRITE(6,2000) MEMO
 2000          FORMAT(1H0,A8,/)

    1 CONTINUE
         A  =  2.0
         B  =  A + 1.0
         C  =  A / B * B
         W  =  0.
         D  = 0
         I  = 0
         X  = 0
         Y  = 0
         Z  = 0

    2 CONTINUE
         C  =  A + B
         D  =  A * B + 2.0
         I  =  2 + IFIX(A)

    3 CONTINUE
         SW3  =  .NOT.  SW3
         X  =  SQRT(A) * D + FLOAT(I)
         Y  =  SIN(B) + COS(B)
         Z  =  X + Y
         IF( SW3 )  GO  TO  5

    4 CONTINUE
         SW4  =  .NOT.  SW4
         D  =  Z + D
         IF( SW4 )  GO TO 6

    5 CONTINUE
         CALL  SUB01( Z )

    6 CONTINUE
         SW6  =  .NOT.  SW6
         W  =  W + X * Y + Z
         W  =  W / SQRT(4.0)
         IF( SW6)  GO  TO  2

    7 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
      SUBROUTINE    SUB01(Z)
         Z  =  1.0
      RETURN
      END
