          LOGICAL     SW3 , SW5
          INTEGER     SW6

           SW3 = .TRUE.
           SW5 = .TRUE.
           SW6 = 3
           CALL SUB('SUB-1',SW3,SW5,SW6)

           SW3 = .FALSE.
           SW5 = .FALSE.
           SW6 = 1
           CALL SUB('SUB-2',SW3,SW5,SW6)

           SW3 = .TRUE.
           SW5 = .FALSE.
           SW6 = 3
           CALL SUB('SUB-3',SW3,SW5,SW6)

           SW3 = .TRUE.
           SW5 = .FALSE.
           SW6 = 2
           CALL SUB('SUB-4',SW3,SW5,SW6)

           SW3 = .FALSE.
           SW5 = .FALSE.
           SW6 = 3
           CALL SUB('SUB-5',SW3,SW5,SW6)
         STOP
         END
      SUBROUTINE   SUB(MEMO,SW3,SW5,SW6)
         character(*)    MEMO
         LOGICAL   SW3 , SW5
         INTEGER   SW6
         DIMENSION A2(5)

         NAMELIST  /NAMEL/ A1 , B1 , C1 , D1 ,
     1                     A2 , B2 ,      D2 ,
     2                     A3 , B3 ,      D3 ,
     3                     A4 , B4 ,      D4 ,
     4                     A5 , B5 ,      D5
         WRITE(6,2000)  MEMO
 2000         FORMAT(1H0 , A8)

    1 CONTINUE
         A1 = 1.1
         A3 = 3.1
         A4 = 4.1
         A5 = 5.1
         B1 = 1.2
         B2 = 1.2
         B3 = 1.2
         B4 = 1.2
         B5 = 1.2
         D1 = 1.0
         D2 = 1.0
         D3 = 1.0
         D4 = 1.0
         D5 = 1.0
         I = 1
         A2(1) = 2.1
         A2(2) = 2.1
         A2(3) = 2.1
         A2(4) = 2.1
         A2(5) = 2.1

    2 CONTINUE
         C1 = A1 + B1
         C2 = A2(I)
         C3 = SQRT(A3)
         C4 = SQRT(A4)

    3 CONTINUE
         SW3 = .NOT. SW3
         C2 = C2 + 3.2
         C3 = C3 + 3.3
      IF (.NOT. SW3) GO TO 5
    4 CONTINUE
         A4 = 4.4
         C5 = SIN(A5)
         GO TO 3
    5 CONTINUE
         SW5 = .NOT. SW5
         D1 = A1 + B1
         D2 = A2(I)
         D3 = SQRT(A3)
         D4 = SQRT(A4)
         D5 = D3 + D4
         IF (SW5) THEN
           GO TO 7
         ELSE
           GO TO 6
         ENDIF
    6 CONTINUE
         SW6 = MOD(SW6,3) + 1
         A1 = A1 + 6.1
         I = I + 1
         A3 = A3 + 6.3
         A4 = A4 + 6.4
         D5 = SIN(A5)
         A5 = A5 + 6.5
         GO TO (2 , 5 , 6),  SW6

    7 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
