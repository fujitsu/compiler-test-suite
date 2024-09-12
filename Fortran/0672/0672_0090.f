          LOGICAL   SW4
          LOGICAL   SW5
          LOGICAL   SW6
          LOGICAL   SW7

         SW4   =  .FALSE.
         SW5   =  .FALSE.
         SW6   =  .TRUE.
         SW7   =  .TRUE.
         CALL  SUB('SUB-1',SW4,SW5,SW6,SW7)

         SW4   =  .TRUE.
         SW5   =  .FALSE.
         SW6   =  .FALSE.
         SW7   =  .FALSE.
         CALL  SUB('SUB-2',SW4,SW5,SW6,SW7)

         SW4   =  .TRUE.
         SW5   =  .TRUE.
         SW6   =  .TRUE.
         SW7   =  .TRUE.
         CALL  SUB('SUB-3',SW4,SW5,SW6,SW7)

         SW4   =  .FALSE.
         SW5   =  .FALSE.
         SW6   =  .TRUE.
         SW7   =  .FALSE.
         CALL  SUB('SUB-4',SW4,SW5,SW6,SW7)
      STOP
      END
      SUBROUTINE    SUB(MEMO,SW4,SW5,SW6,SW7)
      DIMENSION     A(8),IA(3)
      LOGICAL       SW4,SW5,SW6,SW7
      REAL*8        MEMO
      NAMELIST      /NAMEL/A,A1,A2,B1,B2,C1,C2,D1,IA,I,J,J1,J2,J3

         WRITE(6,2000)MEMO
 2000          FORMAT(1H0,A8,/)

    1 CONTINUE
         I     =  1
         A(1)  =  2.0
         A(2)  =  3.0
         A(3)  =  4.0
         IA(1) =  0
         IA(2) =  0
         IA(3) =  0
         A(4)  =  0.
         A(5)  =  0.
         A(6)  =  0.
         A(7)  =  0.
         A(8)  =  0.
         A1     = 0
         B1     = 0
         A2     = 0
         B2     = 0
         C2     = 0
         J      = 0
         J1     = 0
         J2     = 0
         J3     = 0
    2 CONTINUE
         A1  =  1.0
         B1  =  A1 * A1 + A1 / A1
         C1  =  A1 + B1
    3 CONTINUE
         A1  =  A1 + I * 2 + I ** I + 2 ** I
         B1  =  B1 + C1 ** (I - 2)
         C1  =  (A1 + B1) * 2 ** (2 - I)
         K   =  1
         D1  =  K
    4 CONTINUE
         SW4   =  .NOT. SW4
         D1    =  FLOAT(K) + D1
         A(K)  =  D1 * (C1 - B1) + A(K)
         A1    =  I ** K
         IF(SW4)  GO  TO  6

    5 CONTINUE
         SW5   =  .NOT. SW5
         D1    =  -D1
         A(K)  =  D1 / (C1 - B1)
         IF(SW5)  GO  TO  7

    6 CONTINUE
         SW6   =  .NOT. SW6
         A1    =  A1 + FLOAT(K) ** 2
         D1    =  D1 / FLOAT(2**K) * FLOAT(3**K)
         B1    =  -D1
         C1    =  -B1
         K     =  K + 1
         IF(SW6)  GO  TO  4
    7 CONTINUE
         SW7   =  .NOT. SW7
         A1    =  1.0 + A(3)
         B1    =  B1 * C1 + A(2)
         C1    =  C1 * A(1)
         IF(SW7)  GO  TO  3
    8 CONTINUE
         A2    =  0
         B2    =  A2 * 1.5
         C2    =  B2 + A2
         J1    =  0
         J2    =  1
         J3    =  1
         J     =  0
    9 CONTINUE
         A2    =  A2 + FLOAT(J1*2)
         B2    =  B2 + 4 ** (J2 - 1)
         C2    =  C2 + 3 ** (5 - J3)

   10 CONTINUE
         IA(1) =  IA(1) + 1
         J     =  J + J1 * 2
         J1    =  J1 + 2
         IF(J1 .LE. 3)  GO  TO  9

   11 CONTINUE
         IA(2) =  IA(2) + 1
         J     =  J + J2 - 1
         J2    =  J2 + 1
         IF(J2 .LE. 4)  GO  TO  9

   12 CONTINUE
         IA(3) =  IA(3) + 1
         J     =  J + 5 - J3
         J3    =  J3 + 1
         IF(J3 .LE. 2)  GO  TO  9
   13 CONTINUE
         I     =  I + 1
         IF(I .LE. 3)  GO  TO  2
   14 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
