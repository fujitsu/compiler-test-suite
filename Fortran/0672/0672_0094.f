          LOGICAL   SW5
          LOGICAL   SW6
          LOGICAL   SW7
          INTEGER   SW3

         SW3  =  4
         SW5  =  .TRUE.
         SW6  =  .FALSE.
         SW7  =  .TRUE.
         CALL  SUB('SUB-1',SW3,SW5,SW6,SW7)

         SW3  =  1
         SW5  =  .TRUE.
         SW6  =  .FALSE.
         SW7  =  .FALSE.
         CALL  SUB('SUB-2',SW3,SW5,SW6,SW7)

         SW3  =  3
         SW5  =  .TRUE.
         SW6  =  .TRUE.
         SW7  =  .TRUE.
         CALL  SUB('SUB-3',SW3,SW5,SW6,SW7)

         SW3  =  2
         SW5  =  .TRUE.
         SW6  =  .TRUE.
         SW7  =  .TRUE.
         CALL  SUB('SUB-4',SW3,SW5,SW6,SW7)

         SW3  =  4
         SW5  =  .TRUE.
         SW6  =  .TRUE.
         SW7  =  .FALSE.
         CALL  SUB('SUB-5',SW3,SW5,SW6,SW7)

         SW3  =  1
         SW5  =  .TRUE.
         SW6  =  .TRUE.
         SW7  =  .TRUE.
         CALL  SUB('SUB-6',SW3,SW5,SW6,SW7)
      STOP
      END
      SUBROUTINE    SUB(MEMO,SW3,SW5,SW6,SW7)
      DIMENSION     A(4)
      LOGICAL       SW5,SW6,SW7
      INTEGER       SW3
      REAL*8        MEMO
      NAMELIST      /NAMEL/ A,I,K,IC,M,N,N1,N2,N3,N4

         WRITE(6,2000) MEMO
 2000          FORMAT(1H0,A8,/)

    1 CONTINUE
         IC    =  0
         I     =  1
         K     =  2
         M     =  1
         N     =  K ** I + K
         A(1)  = 0
         A(2)  = 0
         A(3)  = 0
         A(4)  = 0
         N1    = 0
         N2    = 0
         N3    = 0
         N4    = 0

    2 CONTINUE
         A(1)  =  I * 2 + K * 3
         A(2)  =  I * 3 + K * 3
         A(3)  =  I * 4 + K * 3
         A(4)  =  I * 5 + K * 3

    3 CONTINUE
         SW3  =  MOD(SW3,4) + 1
         N1   =  M * I
         N2   =  (M - I) * I
         N3   =  (M - I) * I - I
         N4   =  (M - I) * I - I * I
         GO  TO  (5,6,7,4), SW3

    4 CONTINUE
         A(1)  =  A(1) + N1 * I
         A(2)  =  A(2) + N2 * (I - 1)
         A(3)  =  A(3) + N3 * (I - 2)
         A(4)  =  A(4) + N4 * (I - 3)

    5 CONTINUE
         SW5   =  .NOT. SW5
         N1    =  N + M * I
         N2    =  N + (M - 1) * I
         N3    =  N + (M - 2) * I
         N4    =  N + (M - 3) * I
         IF(SW5)  GO  TO  4

    6 CONTINUE
         SW6   =  .NOT. SW6
         N1    =  (M - 3) * K
         N2    =  (M - 2) * K
         N3    =  (M - 1) * K
         N4    =  M * K
         IF(SW6)  GO  TO  4

    7 CONTINUE
         SW7   =  .NOT. SW7
         N1    =  N + M
         N2    =  N + M
         N3    =  N - M
         N4    =  N - M
         IF(SW7)  GO TO  4

    8 CONTINUE
         IC    =  IC + 1
         I     =  I + 1
         IF(I .LE. K+2)  GO  TO  2

    9 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
