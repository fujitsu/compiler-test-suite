           LOGICAL    SW3 , SW5 , SW8 , SW9

           SW3 = .TRUE.
           SW5 = .TRUE.
           SW8 = .TRUE.
           SW9 = .TRUE.
           CALL SUB('SUB-1',SW3,SW5,SW8,SW9)

           SW3 = .FALSE.
           SW5 = .FALSE.
           SW8 = .FALSE.
           SW9 = .TRUE.
           CALL SUB('SUB-2',SW3,SW5,SW8,SW9)

           SW3 = .FALSE.
           SW5 = .TRUE.
           SW8 = .TRUE.
           SW9 = .FALSE.
           CALL SUB('SUB-3',SW3,SW5,SW8,SW9)

           SW3 = .FALSE.
           SW5 = .FALSE.
           SW8 = .FALSE.
           SW9 = .FALSE.
           CALL SUB('SUB-4',SW3,SW5,SW8,SW9)

           SW3 = .TRUE.
           SW5 = .FALSE.
           SW8 = .FALSE.
           SW9 = .TRUE.
           CALL SUB('SUB-5',SW3,SW5, SW8,SW9)

         STOP
         END
      SUBROUTINE   SUB(MEMO,SW3,SW5,SW8,SW9)
         character(*)  MEMO
         LOGICAL   SW3 , SW5 , SW8 , SW9
         NAMELIST  /NAMEL/ A , B , C , K1 , M , N

         WRITE(6,2000)  MEMO
 2000         FORMAT(1H0,A8)

    1 CONTINUE
         A = 1.0
         B = 1.0
         C = 1.0
         I = 1
         M = 1
         N = 1
         J = I * I + 6
         K1 = 2

    2 CONTINUE
         M1 = K1 ** I
         M2 = I * K1
         M3 = M1 * (3 ** J)

    3 CONTINUE
         SW3 = .NOT. SW3
         M = K1 ** I + I * K1
         N = 3 ** J + I * (K1)
         IF (SW3) GO TO 4
    6 CONTINUE
         M = M + I * K1
         N = N + (I) * (-K1)
         GO TO 5
    4 CONTINUE
         M = M - (-I) * (-K1)
         N = N - (-I) * K1
    5 CONTINUE
         SW5 = .NOT. SW5
         I = I + 2
         J = J - 2
         IF (SW5) GO TO 3

    7 CONTINUE
         K = 1
         A = 0.
         B = A + 1.0

    8 CONTINUE
         SW8 = .NOT. SW8
         A = FLOAT(K1 ** K + K1 ** I)
         B = FLOAT(K1 * K - 3 ** J)
         C = A * B - A / B
         K = K + 1
         IF (SW8) GO TO 8

    9 CONTINUE
         SW9 = .NOT. SW9
         C = C + FLOAT(M + N)
         M = M + N
         IF (SW9) GO TO 2

   10 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
