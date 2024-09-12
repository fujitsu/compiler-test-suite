          LOGICAL   SW3
          LOGICAL   SW4
          LOGICAL   SW5

         SW3  =  .FALSE.
         SW4  =  .TRUE.
         SW5  =  .TRUE.
         CALL  SUB('SUB-1',SW3,SW4,SW5)

         SW3  =  .TRUE.
         SW4  =  .FALSE.
         SW5  =  .FALSE.
         CALL  SUB('SUB-2',SW3,SW4,SW5)

         SW3  =  .TRUE.
         SW4  =  .TRUE.
         SW5  =  .TRUE.
         CALL  SUB('SUB-3',SW3,SW4,SW5)

         SW3  =  .FALSE.
         SW4  =  .FALSE.
         SW5  =  .TRUE.
         CALL  SUB('SUB-4',SW3,SW4,SW5)

         SW3  =  .FALSE.
         SW4  =  .FALSE.
         SW5  =  .FALSE.
         CALL  SUB('SUB-5',SW3,SW4,SW5)

         SW3  =  .TRUE.
         SW4  =  .TRUE.
         SW5  =  .FALSE.
         CALL  SUB('SUB-6',SW3,SW4,SW5)

         SW3  =  .TRUE.
         SW4  =  .FALSE.
         SW5  =  .TRUE.
         CALL  SUB('SUB-7',SW3,SW4,SW5)
      STOP
      END
      SUBROUTINE    SUB(MEMO,SW3,SW4,SW5)
      DIMENSION     A(4),B(14),C(2)
      LOGICAL       SW3,SW4,SW5
      REAL*8        MEMO
      NAMELIST      /NAMEL/A,B,C,J,K,L,M,N

         WRITE(6,2000) MEMO
 2000          FORMAT(1H0,A8,/)

    1 CONTINUE
         I    = 1
         A(1) = FLOAT( I/2 )
         A(2) = FLOAT( I/2 )
         A(3) = FLOAT( I/2 )
         A(4) = FLOAT( I/2 )
         B(1) = FLOAT( 1/2 )
         B(2) = FLOAT( 1/2 )
         B(3) = FLOAT( 1/2 )
         B(4) = FLOAT( 1/2 )
         B(5) = FLOAT( 1/2 )
         B(6) = FLOAT( 1/2 )
         B(7) = FLOAT( 1/2 )
         B(8) = FLOAT( 1/2 )
         B(9) = FLOAT( 1/2 )
         B(10) = FLOAT( 1/2 )
         B(11) = FLOAT( 1/2 )
         B(12) = FLOAT( 1/2 )
         B(13) = FLOAT( 1/2 )
         B(14) = FLOAT( 1/2 )
         C(1) = 0.
         C(2) = 0.
         M    = 1
         N    = 1
         J    = 0
         K    = 0
         L    = 0

    2 CONTINUE
         A(I*2-1)  =  A(I*2-1) + FLOAT(I*2-1)
         K  =  I * 2 + (I * 2) ** 2 - (I * 2) ** 4
         L  =  I ** 3 + I ** 9 + I * 3 - I * 9 + I * 27
         J  =  I * 2 + 1

    3 CONTINUE
         SW3  =  .NOT. SW3
         B(J-2)  =  B(J-2) + A(I*2-1)
         K  =  K + I * 2 - J * 2
         L  =  L + (I * 2) * 2 - J * 2
         IF(SW3)  GO TO  4

    5 CONTINUE
         SW5  =  .NOT. SW5
         B(J*2-4)  =  B(J*2-4) + FLOAT(J*2-4)
         M  =  L + (J * 2) ** 4 / (J * 2) ** 2
         N  =  K + (I * 2) ** 2 / I * 2
         IF(SW5)  GO TO  4

    6 CONTINUE
         C(I)  =  C(I) + M - N
         J     =  J * 2 - 1
         GO  TO  3

    4 CONTINUE
         SW4     =  .NOT. SW4
         A(I*2)  =  A(I*2) + I ** 3
         C(I)    =  C(I) + M / N
         I       =  I + 1
         IF(SW4)  GO  TO  2

    7 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
