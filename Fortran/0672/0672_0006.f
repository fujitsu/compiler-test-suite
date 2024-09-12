          LOGICAL   SW5
          LOGICAL   SW8
          LOGICAL   SW11
          INTEGER   SW2

         SW2   =  5
         SW5   =  .TRUE.
         SW8   =  .TRUE.
         SW11  =  .TRUE.
         CALL  SUB('SUB-1',SW2,SW5,SW8,SW11)

         SW2   =  1
         SW5   =  .FALSE.
         SW8   =  .FALSE.
         SW11  =  .TRUE.
         CALL  SUB('SUB-2',SW2,SW5,SW8,SW11)

         SW2   =  2
         SW5   =  .FALSE.
         SW8   =  .FALSE.
         SW11  =  .FALSE.
         CALL  SUB('SUB-3',SW2,SW5,SW8,SW11)

         SW2   =  3
         SW5   =  .TRUE.
         SW8   =  .TRUE.
         SW11  =  .FALSE.
         CALL  SUB('SUB-4',SW2,SW5,SW8,SW11)

         SW2   =  4
         SW5   =  .FALSE.
         SW8   =  .FALSE.
         SW11  =  .FALSE.
         CALL  SUB('SUB-5',SW2,SW5,SW8,SW11)

         SW2   =  5
         SW5   =  .FALSE.
         SW8   =  .TRUE.
         SW11  =  .FALSE.
         CALL  SUB('SUB-6',SW2,SW5,SW8,SW11)

         SW2   =  1
         SW5   =  .TRUE.
         SW8   =  .FALSE.
         SW11  =  .FALSE.
         CALL  SUB('SUB-7',SW2,SW5,SW8,SW11)

         SW2   =  2
         SW5   =  .TRUE.
         SW8   =  .FALSE.
         SW11  =  .TRUE.
         CALL  SUB('SUB-8',SW2,SW5,SW8,SW11)

         SW2   =  3
         SW5   =  .FALSE.
         SW8   =  .FALSE.
         SW11  =  .FALSE.
         CALL  SUB('SUB-9',SW2,SW5,SW8,SW11)
      STOP
      END
      SUBROUTINE    SUB(MEMO,SW2,SW5,SW8,SW11)
      LOGICAL       SW5,SW8,SW11
      INTEGER       SW2
      REAL*8        MEMO
      DIMENSION     A1(10,10),A2(10,10),A3(10,10)
      NAMELIST      /NAMEL/A1,C1,D1,E1,F1,A2,C2,D2,E2,A3,C3,D3,E3,
     1              F3,G3,H3,O3,P3,Q3,R3

         WRITE(6,2000) MEMO
 2000          FORMAT(1H1,A8,/)

    1 CONTINUE
         A1( 1, 1)  =  1.0
         A1( 2, 1)  =  1.0
         A1( 3, 1)  =  1.0
         A1( 4, 1)  =  1.0
         A1( 5, 1)  =  1.0
         A1( 6, 1)  =  1.0
         A1( 7, 1)  =  1.0
         A1( 8, 1)  =  1.0
         A1( 9, 1)  =  1.0
         A1(10, 1)  =  1.0
         A1( 1, 2)  =  1.0
         A1( 2, 2)  =  1.0
         A1( 3, 2)  =  1.0
         A1( 4, 2)  =  1.0
         A1( 5, 2)  =  1.0
         A1( 6, 2)  =  1.0
         A1( 7, 2)  =  1.0
         A1( 8, 2)  =  1.0
         A1( 9, 2)  =  1.0
         A1(10, 2)  =  1.0
         A1( 1, 3)  =  1.0
         A1( 2, 3)  =  1.0
         A1( 3, 3)  =  1.0
         A1( 4, 3)  =  1.0
         A1( 5, 3)  =  1.0
         A1( 6, 3)  =  1.0
         A1( 7, 3)  =  1.0
         A1( 8, 3)  =  1.0
         A1( 9, 3)  =  1.0
         A1(10, 3)  =  1.0
         A1( 1, 4)  =  1.0
         A1( 2, 4)  =  1.0
         A1( 3, 4)  =  1.0
         A1( 4, 4)  =  1.0
         A1( 5, 4)  =  1.0
         A1( 6, 4)  =  1.0
         A1( 7, 4)  =  1.0
         A1( 8, 4)  =  1.0
         A1( 9, 4)  =  1.0
         A1(10, 4)  =  1.0
         A1( 1, 5)  =  1.0
         A1( 2, 5)  =  1.0
         A1( 3, 5)  =  1.0
         A1( 4, 5)  =  1.0
         A1( 5, 5)  =  1.0
         A1( 6, 5)  =  1.0
         A1( 7, 5)  =  1.0
         A1( 8, 5)  =  1.0
         A1( 9, 5)  =  1.0
         A1(10, 5)  =  1.0
         A1( 1, 6)  =  1.0
         A1( 2, 6)  =  1.0
         A1( 3, 6)  =  1.0
         A1( 4, 6)  =  1.0
         A1( 5, 6)  =  1.0
         A1( 6, 6)  =  1.0
         A1( 7, 6)  =  1.0
         A1( 8, 6)  =  1.0
         A1( 9, 6)  =  1.0
         A1(10, 6)  =  1.0
         A1( 1, 7)  =  1.0
         A1( 2, 7)  =  1.0
         A1( 3, 7)  =  1.0
         A1( 4, 7)  =  1.0
         A1( 5, 7)  =  1.0
         A1( 6, 7)  =  1.0
         A1( 7, 7)  =  1.0
         A1( 8, 7)  =  1.0
         A1( 9, 7)  =  1.0
         A1(10, 7)  =  1.0
         A1( 1, 8)  =  1.0
         A1( 2, 8)  =  1.0
         A1( 3, 8)  =  1.0
         A1( 4, 8)  =  1.0
         A1( 5, 8)  =  1.0
         A1( 6, 8)  =  1.0
         A1( 7, 8)  =  1.0
         A1( 8, 8)  =  1.0
         A1( 9, 8)  =  1.0
         A1(10, 8)  =  1.0
         A1( 1, 9)  =  1.0
         A1( 2, 9)  =  1.0
         A1( 3, 9)  =  1.0
         A1( 4, 9)  =  1.0
         A1( 5, 9)  =  1.0
         A1( 6, 9)  =  1.0
         A1( 7, 9)  =  1.0
         A1( 8, 9)  =  1.0
         A1( 9, 9)  =  1.0
         A1(10, 9)  =  1.0
         A1( 1,10)  =  1.0
         A1( 2,10)  =  1.0
         A1( 3,10)  =  1.0
         A1( 4,10)  =  1.0
         A1( 5,10)  =  1.0
         A1( 6,10)  =  1.0
         A1( 7,10)  =  1.0
         A1( 8,10)  =  1.0
         A1( 9,10)  =  1.0
         A1(10,10)  =  1.0
         A2( 1, 1)  =  3.0
         A2( 2, 1)  =  3.0
         A2( 3, 1)  =  3.0
         A2( 4, 1)  =  3.0
         A2( 5, 1)  =  3.0
         A2( 6, 1)  =  3.0
         A2( 7, 1)  =  3.0
         A2( 8, 1)  =  3.0
         A2( 9, 1)  =  3.0
         A2(10, 1)  =  3.0
         A2( 1, 2)  =  3.0
         A2( 2, 2)  =  3.0
         A2( 3, 2)  =  3.0
         A2( 4, 2)  =  3.0
         A2( 5, 2)  =  3.0
         A2( 6, 2)  =  3.0
         A2( 7, 2)  =  3.0
         A2( 8, 2)  =  3.0
         A2( 9, 2)  =  3.0
         A2(10, 2)  =  3.0
         A2( 1, 3)  =  3.0
         A2( 2, 3)  =  3.0
         A2( 3, 3)  =  3.0
         A2( 4, 3)  =  3.0
         A2( 5, 3)  =  3.0
         A2( 6, 3)  =  3.0
         A2( 7, 3)  =  3.0
         A2( 8, 3)  =  3.0
         A2( 9, 3)  =  3.0
         A2(10, 3)  =  3.0
         A2( 1, 4)  =  3.0
         A2( 2, 4)  =  3.0
         A2( 3, 4)  =  3.0
         A2( 4, 4)  =  3.0
         A2( 5, 4)  =  3.0
         A2( 6, 4)  =  3.0
         A2( 7, 4)  =  3.0
         A2( 8, 4)  =  3.0
         A2( 9, 4)  =  3.0
         A2(10, 4)  =  3.0
         A2( 1, 5)  =  3.0
         A2( 2, 5)  =  3.0
         A2( 3, 5)  =  3.0
         A2( 4, 5)  =  3.0
         A2( 5, 5)  =  3.0
         A2( 6, 5)  =  3.0
         A2( 7, 5)  =  3.0
         A2( 8, 5)  =  3.0
         A2( 9, 5)  =  3.0
         A2(10, 5)  =  3.0
         A2( 1, 6)  =  3.0
         A2( 2, 6)  =  3.0
         A2( 3, 6)  =  3.0
         A2( 4, 6)  =  3.0
         A2( 5, 6)  =  3.0
         A2( 6, 6)  =  3.0
         A2( 7, 6)  =  3.0
         A2( 8, 6)  =  3.0
         A2( 9, 6)  =  3.0
         A2(10, 6)  =  3.0
         A2( 1, 7)  =  3.0
         A2( 2, 7)  =  3.0
         A2( 3, 7)  =  3.0
         A2( 4, 7)  =  3.0
         A2( 5, 7)  =  3.0
         A2( 6, 7)  =  3.0
         A2( 7, 7)  =  3.0
         A2( 8, 7)  =  3.0
         A2( 9, 7)  =  3.0
         A2(10, 7)  =  3.0
         A2( 1, 8)  =  3.0
         A2( 2, 8)  =  3.0
         A2( 3, 8)  =  3.0
         A2( 4, 8)  =  3.0
         A2( 5, 8)  =  3.0
         A2( 6, 8)  =  3.0
         A2( 7, 8)  =  3.0
         A2( 8, 8)  =  3.0
         A2( 9, 8)  =  3.0
         A2(10, 8)  =  3.0
         A2( 1, 9)  =  3.0
         A2( 2, 9)  =  3.0
         A2( 3, 9)  =  3.0
         A2( 4, 9)  =  3.0
         A2( 5, 9)  =  3.0
         A2( 6, 9)  =  3.0
         A2( 7, 9)  =  3.0
         A2( 8, 9)  =  3.0
         A2( 9, 9)  =  3.0
         A2(10, 9)  =  3.0
         A2( 1,10)  =  3.0
         A2( 2,10)  =  3.0
         A2( 3,10)  =  3.0
         A2( 4,10)  =  3.0
         A2( 5,10)  =  3.0
         A2( 6,10)  =  3.0
         A2( 7,10)  =  3.0
         A2( 8,10)  =  3.0
         A2( 9,10)  =  3.0
         A2(10,10)  =  3.0
         A3( 1, 1)  =  5.0
         A3( 2, 1)  =  5.0
         A3( 3, 1)  =  5.0
         A3( 4, 1)  =  5.0
         A3( 5, 1)  =  5.0
         A3( 6, 1)  =  5.0
         A3( 7, 1)  =  5.0
         A3( 8, 1)  =  5.0
         A3( 9, 1)  =  5.0
         A3(10, 1)  =  5.0
         A3( 1, 2)  =  5.0
         A3( 2, 2)  =  5.0
         A3( 3, 2)  =  5.0
         A3( 4, 2)  =  5.0
         A3( 5, 2)  =  5.0
         A3( 6, 2)  =  5.0
         A3( 7, 2)  =  5.0
         A3( 8, 2)  =  5.0
         A3( 9, 2)  =  5.0
         A3(10, 2)  =  5.0
         A3( 1, 3)  =  5.0
         A3( 2, 3)  =  5.0
         A3( 3, 3)  =  5.0
         A3( 4, 3)  =  5.0
         A3( 5, 3)  =  5.0
         A3( 6, 3)  =  5.0
         A3( 7, 3)  =  5.0
         A3( 8, 3)  =  5.0
         A3( 9, 3)  =  5.0
         A3(10, 3)  =  5.0
         A3( 1, 4)  =  5.0
         A3( 2, 4)  =  5.0
         A3( 3, 4)  =  5.0
         A3( 4, 4)  =  5.0
         A3( 5, 4)  =  5.0
         A3( 6, 4)  =  5.0
         A3( 7, 4)  =  5.0
         A3( 8, 4)  =  5.0
         A3( 9, 4)  =  5.0
         A3(10, 4)  =  5.0
         A3( 1, 5)  =  5.0
         A3( 2, 5)  =  5.0
         A3( 3, 5)  =  5.0
         A3( 4, 5)  =  5.0
         A3( 5, 5)  =  5.0
         A3( 6, 5)  =  5.0
         A3( 7, 5)  =  5.0
         A3( 8, 5)  =  5.0
         A3( 9, 5)  =  5.0
         A3(10, 5)  =  5.0
         A3( 1, 6)  =  5.0
         A3( 2, 6)  =  5.0
         A3( 3, 6)  =  5.0
         A3( 4, 6)  =  5.0
         A3( 5, 6)  =  5.0
         A3( 6, 6)  =  5.0
         A3( 7, 6)  =  5.0
         A3( 8, 6)  =  5.0
         A3( 9, 6)  =  5.0
         A3(10, 6)  =  5.0
         A3( 1, 7)  =  5.0
         A3( 2, 7)  =  5.0
         A3( 3, 7)  =  5.0
         A3( 4, 7)  =  5.0
         A3( 5, 7)  =  5.0
         A3( 6, 7)  =  5.0
         A3( 7, 7)  =  5.0
         A3( 8, 7)  =  5.0
         A3( 9, 7)  =  5.0
         A3(10, 7)  =  5.0
         A3( 1, 8)  =  5.0
         A3( 2, 8)  =  5.0
         A3( 3, 8)  =  5.0
         A3( 4, 8)  =  5.0
         A3( 5, 8)  =  5.0
         A3( 6, 8)  =  5.0
         A3( 7, 8)  =  5.0
         A3( 8, 8)  =  5.0
         A3( 9, 8)  =  5.0
         A3(10, 8)  =  5.0
         A3( 1, 9)  =  5.0
         A3( 2, 9)  =  5.0
         A3( 3, 9)  =  5.0
         A3( 4, 9)  =  5.0
         A3( 5, 9)  =  5.0
         A3( 6, 9)  =  5.0
         A3( 7, 9)  =  5.0
         A3( 8, 9)  =  5.0
         A3( 9, 9)  =  5.0
         A3(10, 9)  =  5.0
         A3( 1,10)  =  5.0
         A3( 2,10)  =  5.0
         A3( 3,10)  =  5.0
         A3( 4,10)  =  5.0
         A3( 5,10)  =  5.0
         A3( 6,10)  =  5.0
         A3( 7,10)  =  5.0
         A3( 8,10)  =  5.0
         A3( 9,10)  =  5.0
         A3(10,10)  =  5.0
         C1         =  0.0
         C2         =  0.0
         C3         =  0.0
         D1         =  0.0
         D2         =  0.0
         D3         =  0.0
         E1         =  0.0
         E2         =  0.0
         E3         =  0.0
         I          =  1
         J          =  1
         F1         =  0.0
         F3         =  0.0
         G3         =  0.0
         H3         =  0.0
         O3         =  0.0
         P3         =  0.0
         Q3         =  0.0
         R3         =  0.0

    2 CONTINUE
         SW2  =  MOD(SW2,5) + 1
         C1   =  A1(I,J)
         GO  TO  (3,4,5,8,11),SW2

    3 CONTINUE
         C3   =  A3(I,J)
         GO  TO  5

    4 CONTINUE
         D3   =  A3(I,J)

    5 CONTINUE
         SW5  =  .NOT. SW5
         D1   =  A1(I,J)
         C2   =  A2(I,J)
         F3   =  A3(I,J)
         IF( SW5 )  GO  TO  7

    6 CONTINUE
         G3   =  A3(I,J)
         GO  TO  8

    7 CONTINUE
         H3   =  A3(I,J)

    8 CONTINUE
         SW8  =  .NOT. SW8
         E1   =  A1(I,J)
         D2   =  A2(I,J)
         O3   =  A3(I,J)
         IF( SW8 )  GO  TO  10

    9 CONTINUE
         P3   =  A3(I,J)
         GO  TO  11

   10 CONTINUE
         Q3   =  A3(I,J)

   11 CONTINUE
         SW11 =  .NOT. SW11
         F1   =  A1(I,J)
         E2   =  A2(I,J)
         R3   =  A3(I,J)
         I    =  I + 1
         J    =  J + 1
         IF( SW11 )  GO  TO  2

   12 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END