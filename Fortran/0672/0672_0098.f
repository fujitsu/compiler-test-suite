      LOGICAL  SW10,SW11,SW23
      INTEGER  SW2,SW6,SW16,SW19

         SW2   =  1
         SW6   =  1
         SW10  =  .FALSE.
         SW11  =  .TRUE.
         SW16  =  1
         SW19  =  1
         SW23  =  .TRUE.
         CALL  SUB('SUB-1',SW2,SW6,SW10,SW11,SW16,SW19,SW23)

         SW2   =  2
         SW6   =  2
         SW10  =  .FALSE.
         SW11  =  .FALSE.
         SW16  =  2
         SW19  =  2
         SW23  =  .TRUE.
         CALL  SUB('SUB-2',SW2,SW6,SW10,SW11,SW16,SW19,SW23)

         SW2   =  3
         SW6   =  1
         SW10  =  .TRUE.
         SW11  =  .FALSE.
         SW16  =  3
         SW19  =  3
         SW23  =  .TRUE.
         CALL  SUB('SUB-3',SW2,SW6,SW10,SW11,SW16,SW19,SW23)

         SW2   =  1
         SW6   =  2
         SW10  =  .TRUE.
         SW11  =  .FALSE.
         SW16  =  2
         SW19  =  1
         SW23  =  .TRUE.
         CALL  SUB('SUB-4',SW2,SW6,SW10,SW11,SW16,SW19,SW23)

         SW2   =  2
         SW6   =  3
         SW10  =  .FALSE.
         SW11  =  .TRUE.
         SW16  =  3
         SW19  =  3
         SW23  =  .FALSE.
         CALL  SUB('SUB-5',SW2,SW6,SW10,SW11,SW16,SW19,SW23)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW2,SW6,SW10,SW11,SW16,SW19,SW23)
      REAL     *8   MEMO
      LOGICAL  SW10,SW11,SW23
      INTEGER  SW2,SW6,SW16,SW19
      NAMELIST      /NAMEL/ K01,K02,K03,K04,K05,IA1,IA2,
     +                      IA3,IA4,IA5,IA6,IA7,IA8,IA9,
     +                      IB1,IB2,IB3,IB4,IB5,IB6,I,J,K

         WRITE(6,2000) MEMO
 2000    FORMAT(1H0,A8)

    1 CONTINUE
         K01  =  0
         K02  =  0
         K03  =  0
         K04  =  0
         IA1  =  0
         IA2  =  0
         IA3  =  0
         IA4  =  0
         IA5  =  0
         IA6  =  0
         IA7  =  0
         IA8  =  0
         IA9  =  0
         IB6  =  0

    2 CONTINUE
         SW2  =  MOD(SW2,3)  +  1
         K05  =  1
         GO  TO  ( 3,8,15 ), SW2

    3 CONTINUE
         I    =  1
         J    =  2

    4 CONTINUE
         K01  =  4  *  I
         IA1  =  K01

    5 CONTINUE
         K02  =  3  *  J
         IA2  =  K02

    6 CONTINUE
         SW6  =  MOD(SW6,3)  +  1
         I    =  I  +  1
         J    =  J  +  1
         IA3  =  K01  +  1
         IA4  =  K02  -  1
         GO  TO  ( 4,5,7 ), SW6

    7 CONTINUE
         IA4  =  K01  +  K02

    8 CONTINUE
         I    =  1

    9 CONTINUE
         IA5  =  I

   10 CONTINUE
         SW10  =  .NOT.  SW10
         I     =  I  +  2
         IA6   =  I  *  5  +  3
         IF ( SW10 )  GO  TO  12

   11 CONTINUE
         SW11  =  .NOT.  SW11
         K03   =  IA6  +  6
         J     =  I
         IF ( SW11 )  GO TO 13

   12 CONTINUE
         J     =  I
         IA8   =  10

   13 CONTINUE
         IA7   =  J  *  5  +  4
         K04   =  IA7  +  7
         IF(I.LT.5)  GO  TO  9

   14 CONTINUE
         IA9   =  100

   15 CONTINUE
         J     =  1
         K     =  1

   16 CONTINUE
         SW16  =  MOD(SW16,4)  +  1
         IB1   =  K05  **  (K  +  5)
         IB3   =  2  **  (J  +  K05)
         IB2   =  IB1  +  1
         IB4   =  IB3  -  1
         GO  TO  ( 17,18,20,21 ), SW16

   17 CONTINUE
         IB2   =  K
         GO  TO  19

   18 CONTINUE
         IB2   =  K  **  2

   19 CONTINUE
         SW19  =  MOD(SW19,3)  +  1
         K     =  K  +  1
         IB5   =  IB1  +  IB3
         GO  TO  ( 17,23,18 ), SW19

   20 CONTINUE
         IB4   =  J
         GO  TO  22

   21 CONTINUE
         IB4   =  J  **  2

   22 CONTINUE
         J     =  J  +  K05
         IB6   =  IB1  *  IB3
         GO  TO  16

   23 CONTINUE
         SW23  =  .NOT.  SW23
         I     =  J  +  K
         IF ( SW23 )  GO  TO  2

   24 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
