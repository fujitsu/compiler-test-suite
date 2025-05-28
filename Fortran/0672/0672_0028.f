          LOGICAL   SW3
          LOGICAL   SW4
          LOGICAL   SW5
          LOGICAL   SW6

         SW3  =  .TRUE.
         SW4  =  .TRUE.
         SW5  =  .TRUE.
         SW6  =  .TRUE.
         CALL  SUB('SUB-1',SW3,SW4,SW5,SW6)

         SW3  =  .TRUE.
         SW4  =  .FALSE.
         SW5  =  .TRUE.
         SW6  =  .TRUE.
         CALL  SUB('SUB-2',SW3,SW4,SW5,SW6)

         SW3  =  .TRUE.
         SW4  =  .TRUE.
         SW5  =  .FALSE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-3',SW3,SW4,SW5,SW6)

         SW3  =  .TRUE.
         SW4  =  .FALSE.
         SW5  =  .TRUE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-4',SW3,SW4,SW5,SW6)

         SW3  =  .FALSE.
         SW4  =  .FALSE.
         SW5  =  .FALSE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-5',SW3,SW4,SW5,SW6)

         SW3  =  .FALSE.
         SW4  =  .TRUE.
         SW5  =  .FALSE.
         SW6  =  .TRUE.
         CALL  SUB('SUB-6',SW3,SW4,SW5,SW6)

         SW3  =  .FALSE.
         SW4  =  .FALSE.
         SW5  =  .TRUE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-7',SW3,SW4,SW5,SW6)

         SW3  =  .FALSE.
         SW4  =  .TRUE.
         SW5  =  .TRUE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-8',SW3,SW4,SW5,SW6)
      STOP
      END
      SUBROUTINE    SUB(MEMO,SW3,SW4,SW5,SW6)
      LOGICAL       SW3,SW4,SW5,SW6
      character(*)  MEMO
      DIMENSION     IA(5)
      NAMELIST      /NAMEL/IA,M,N,I,J

         WRITE(6,2000) MEMO
 2000          FORMAT(1H0,A8,/)

    1 CONTINUE
         IA(1) = 0
         IA(2) = 0
         IA(3) = 0
         IA(4) = 0
         IA(5) = 0
         M  =  1
         N  =  2 * M + M / 2 * 2 + M / M
         I  =  0
         J = 0

    2 CONTINUE
         M      =  2
         N      =  1
         IA(1)  =  M * N

    3 CONTINUE
         SW3    =  .NOT. SW3
         IA(2)  =  M * N + 1
         J      =  M * N + 2
         I      =  I + 1
         IF( SW3 )  GO  TO  2

    4 CONTINUE
         SW4    =  .NOT. SW4
         IA(3)  =  M * N + 2
         J      =  M * N + 4
         I      =  I + 1
         IF( SW4)  GO  TO  3

    5 CONTINUE
         SW5    =  .NOT. SW5
         IA(4)  =  M * N + 3
         J      =  M * N + 6
         I      =  I + 1
         IF( SW5 )  GO  TO  4

    6 CONTINUE
         SW6    =  .NOT. SW6
         IA(5)  =  M * N + 4
         J      =  M * N + 8
         I      =  I + 1
         IF( SW6 )  GO  TO  5
    7 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
