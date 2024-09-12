      LOGICAL  SW5,SW6,SW7,SW8
      INTEGER  SW3

         SW3 = 4
         SW5 = .TRUE.
         SW6 = .TRUE.
         SW7 = .TRUE.
         SW8 = .TRUE.
         CALL  SUB('SUB-1',SW3,SW5,SW6,SW7,SW8)

         SW3 = 1
         SW5 = .FALSE.
         SW6 = .TRUE.
         SW7 = .TRUE.
         SW8 = .TRUE.
         CALL  SUB('SUB-2',SW3,SW5,SW6,SW7,SW8)

         SW3 = 2
         SW5 = .TRUE.
         SW6 = .FALSE.
         SW7 = .TRUE.
         SW8 = .TRUE.
         CALL  SUB('SUB-3',SW3,SW5,SW6,SW7,SW8)

         SW3 = 3
         SW5 = .TRUE.
         SW6 = .TRUE.
         SW7 = .FALSE.
         SW8 = .TRUE.
         CALL  SUB('SUB-4',SW3,SW5,SW6,SW7,SW8)

         SW3 = 2
         SW5 = .TRUE.
         SW6 = .TRUE.
         SW7 = .TRUE.
         SW8 = .FALSE.
         CALL  SUB('SUB-5',SW3,SW5,SW6,SW7,SW8)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW3,SW5,SW6,SW7,SW8)

      REAL*8       MEMO
      LOGICAL     SW5,SW6,SW7,SW8
      INTEGER      SW3
     0NAMELIST     /NAMEL/   A1,A2,A3,A4,
     1                       B1,B2,B3,B4,
     2                       C1,C2,C3,C4,
     3                       D1,D2,D3,D4,
     4                       E1,E2,E3,E4,
     5                       F1,F2,F3,F4,
     6                       G1,G2,G3,G4,
     7                       H1,H2,H3,H4

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         A1    = 2.1
         A2    = 2.2
         A3    = 2.3
         A4    = 2.4
         B1    = 3.1
         B2    = 3.2
         B3    = 3.3
         B4    = 3.4
         D1    = 0.0
         D2    = 0.0
         D3    = 0.0
         D4    = 0.0
         E1    = 0.0
         E2    = 0.0
         E3    = 0.0
         E4    = 0.0
         F1    = 0.0
         F2    = 0.0
         F3    = 0.0
         F4    = 0.0
         G1    = 0.0
         G2    = 0.0
         G3    = 0.0
         G4    = 0.0
         H1    = 0.0
         H2    = 0.0
         H3    = 0.0
         H4    = 0.0

    2 CONTINUE
         C1    = A1 + B1
         C2    = A2 - B2
         C3    = A3 * B3
         C4    = A4 / B4
    3 CONTINUE
         SW3   = MOD(SW3,4) + 1
         D1    = A1 + B1
         D2    = A2 - B2
         D3    = A3 * B3
         D4    = A4 / B4
         GO TO (4,5,6,7), SW3
    4 CONTINUE
         E1    = A1 + B1
         E2    = A2 - B2
         E3    = A3 * B3
         E4    = A4 / B4
    5 CONTINUE
         SW5   = .NOT. SW5
         F1    = A1 + B1
         F2    = A2 - B2
         F3    = A3 * B3
         A4    = C4 / 5.4
         IF(SW5) GO TO 4
    6 CONTINUE
         SW6   = .NOT. SW6
         G1    = A1 + B1
         G2    = A2 - B2
         A3    = C3 * 6.3
         F4    = A4 / B4
         IF(SW6) GO TO 4
    7 CONTINUE
         SW7   = .NOT. SW7
         H1    = A1 + B1
         A2    = C2 - 7.2
         G3    = A3 * B3
         G4    = A4 / B4
         IF(SW7) GO TO 4
    8 CONTINUE
         SW8   = .NOT. SW8
         A1    = C1 + 8.1
         H2    = A2 - B2
         H3    = A3 * B3
         H4    = A4 / B4
         IF(SW8) GO TO 2

    9 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
