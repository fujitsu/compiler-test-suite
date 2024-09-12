      LOGICAL  SW5
      INTEGER  SW6

         SW5 = .FALSE.
         SW6 = 1
         CALL  SUB ('SUB-1',SW5,SW6)

         SW5 = .TRUE.
         SW6 = 2
         CALL  SUB ('SUB-2',SW5,SW6)

         SW5 = .TRUE.
         SW6 = 3
         CALL  SUB ('SUB-3',SW5,SW6)

         SW5 = .TRUE.
         SW6 = 4
         CALL  SUB ('SUB-4',SW5,SW6)

         SW5 = .FALSE.
         SW6 = 4
         CALL  SUB ('SUB-5',SW5,SW6)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW5,SW6)
      REAL*8        MEMO
      LOGICAL       SW5
      INTEGER       SW6
      NAMELIST      /NAMEL/ A1,B1,C1,D1,
     *                      A2,B2,C2,D2,
     *                      A3,B3,C3,D3,
     *                      A4,B4,C4,D4

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         A1    = 1
         A2    = 2
         A3    = 3
         A4    = 4
         B1    = 5
         B2    = 6
         B3    = 7
         B4    = 8
         C1    = 1.0
         C2    = 1.0
         C3    = 1.0
         C4    = 1.0
         D1    = 1.0
         D2    = 1.0
         D3    = 1.0
         D4    = 1.0
    2 CONTINUE
         C4    = A4 / B4

    3 CONTINUE
         C1    = A1 + B1

    4 CONTINUE
         C2    = A2 - B2

    5 CONTINUE
         SW5   = .NOT. SW5
         C3    = A3 * B3
         IF ( SW5 ) GO TO 2
    6 CONTINUE
         SW6   = MOD(SW6 , 4) + 1
         A1    = (6.1 , 1.6)
         A2    = (6.2 , 2.6)
         A3    = (6.3 , 3.6)
         GO TO (7 , 8 , 9 , 10) , SW6
    7 CONTINUE
         D3    = A3 * B3
         D4    = A4 / B4
         GO TO 5

    8 CONTINUE
         D2    = A2 - B2
         D4    = A4 / B4
         GO TO 4

    9 CONTINUE
         D1    = A1 + B1
         D4    = A4 / B4
         GO TO 3

   10 CONTINUE
          WRITE(6,NAMEL)

      RETURN
      END
