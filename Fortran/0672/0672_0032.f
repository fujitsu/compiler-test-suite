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
      character(*)  MEMO
      COMPLEX       C1,C2
      DIMENSION     A(15)
      NAMELIST      /NAMEL/A,B,C,I,C1,C2,T1,T2,T3,T4,T5,T6

         WRITE(6,2000) MEMO
 2000          FORMAT(1H0,A8,/)

    1 CONTINUE
         T1  =  1.0
         T2  =  1.0
         T3  =  1.0
         T4  =  1.0
         T5  =  1.0
         T6  =  1.0
         C1  =  (1.0,0.0)
         C2  =  (0.0,1.0)
         A(1)   =  0.0
         A(2)   =  0.0
         A(3)   =  0.0
         A(4)   =  0.0
         A(5)   =  0.0
         A(6)   =  0.0
         A(7)   =  0.0
         A(8)   =  0.0
         A(9)   =  0.0
         A(10)  =  0.0
         A(11)  =  0.0
         A(12)  =  0.0
         A(13)  =  0.0
         A(14)  =  0.0
         A(15)  =  0.0
         I   =  1
         B   =  1.0
         C   =  B - 1.0

    2 CONTINUE
         SW2     =  MOD(SW2,5) + 1
         A(I)    =  CEXP(C1+1)
         A(I+1)  =  IFIX(B+REAL(C1))
         A(I+2)  =  CLOG(C1-AIMAG(C1))
         T1      =  C1 + CMPLX(REAL(C1),AIMAG(C1))
         T2      =  C1 - CMPLX(AIMAG(C1),REAL(C1))
         GO  TO  (3,4,5,8,11),SW2

    3 CONTINUE
         T1  =  CEXP(C1+1) + IFIX(B-REAL(C1))
         T2  =  CLOG(C1+REAL(C1))
         CALL  CSUB(T1,T2)
         GO  TO  5

    4 CONTINUE
         T1  =  CEXP(C1-1) + IFIX(B+REAL(C1))
         T2  =  CLOG(C1-REAL(-C1))
         CALL  CSUB(T1,T2)

    5 CONTINUE
         SW5  =  .NOT. SW5
         T3   =  T1 * T2 - CSQRT(B+C1)
         T4   =  T1 / T2 + CSQRT(B-C1)
         C    =  C1 + C2
         IF( SW5 )  GO  TO  7

    6 CONTINUE
         T3   =  T1 + (T2 + T3)
         T4   =  (T1 + T2) + T4
         GO  TO  8

    7 CONTINUE
         T3   =  T1 - (T2 + T3)
         T4   =  T1 - T2 - T4

    8 CONTINUE
         SW8  =  .NOT. SW8
         T5   =  T1 * T2
         T6   =  T1 * (1 / T2)
         IF( SW8 )  GO  TO  10

    9 CONTINUE
         T5   =  T1 * T2 * T5
         T6   =  (T1 / T2) * (1.0 / T5)
         GO  TO  11

   10 CONTINUE
         T5  =  T1 / T2 * T5
         T6  =  T1 * (1 / T2) / (1.0 / T5)

   11 CONTINUE
         SW11  =  .NOT. SW11
         C     =  T1 + T2 + C
         I     =  I + 3
         IF( SW11 )  GO  TO  2

   12 CONTINUE
         WRITE(6,NAMEL)
         RETURN
         END
      SUBROUTINE    CSUB(T1,T2)
         T1  =  1.0
         T2  =  1.0
         RETURN
      END
