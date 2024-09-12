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
         SW6  =  .FALSE.
         CALL  SUB('SUB-2',SW3,SW4,SW5,SW6)

         SW3  =  .TRUE.
         SW4  =  .TRUE.
         SW5  =  .FALSE.
         SW6  =  .TRUE.
         CALL  SUB('SUB-3',SW3,SW4,SW5,SW6)

         SW3  =  .TRUE.
         SW4  =  .FALSE.
         SW5  =  .FALSE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-4',SW3,SW4,SW5,SW6)

         SW3  =  .TRUE.
         SW4  =  .TRUE.
         SW5  =  .FALSE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-5',SW3,SW4,SW5,SW6)

         SW3  =  .FALSE.
         SW4  =  .TRUE.
         SW5  =  .TRUE.
         SW6  =  .TRUE.
         CALL  SUB('SUB-6',SW3,SW4,SW5,SW6)

         SW3  =  .FALSE.
         SW4  =  .FALSE.
         SW5  =  .TRUE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-7',SW3,SW4,SW5,SW6)

         SW3  =  .FALSE.
         SW4  =  .TRUE.
         SW5  =  .FALSE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-8',SW3,SW4,SW5,SW6)

         SW3  =  .FALSE.
         SW4  =  .TRUE.
         SW5  =  .TRUE.
         SW6  =  .FALSE.
         CALL  SUB('SUB-9',SW3,SW4,SW5,SW6)
      STOP
      END
      SUBROUTINE    SUB(MEMO,SW3,SW4,SW5,SW6)
      LOGICAL       SW3,SW4,SW5,SW6
      REAL*8        MEMO
      DIMENSION     C(15)
      COMPLEX       C,C1,C2,C3,C4,C5
      NAMELIST      /NAMEL/C,C1,C2,C3,C4,C5,I,J

         WRITE(6,2000) MEMO
 2000          FORMAT(1H0,A8,/)

    1 CONTINUE
         C(1)   =  0.0
         C(2)   =  0.0
         C(3)   =  0.0
         C(4)   =  0.0
         C(5)   =  0.0
         C(6)   =  0.0
         C(7)   =  0.0
         C(8)   =  0.0
         C(9)   =  0.0
         C(10)  =  0.0
         C(11)  =  0.0
         C(12)  =  0.0
         C(13)  =  0.0
         C(14)  =  0.0
         C(15)  =  0.0
         C1    = (0.0 , 0.0)
         C2    = (0.0 , 0.0)
         C3    = (0.0 , 0.0)
         C4    = (0.0 , 0.0)
         C5    = (0.0 , 0.0)
         I      =  1
         J      =  I
         I      =  J + 1

    2 CONTINUE
         C1     =  1
         C2     =  2

    3 CONTINUE
         SW3    =  .NOT. SW3
         C3     =  CMPLX(FLOAT(I),-FLOAT(I))
         C4     =  CMPLX(I+J+1.0,I-J-1.0)
         IF( SW3 )  GO  TO  5

    4 CONTINUE
         SW4    =  .NOT. SW4
         C(J)   =  C1 * C2 + C3 + C4
         C(J+1) =  C1 / C2 + C3 - C4
         IF( SW4 )  GO  TO  6

    5 CONTINUE
         SW5    =  .NOT. SW5
         C3     =  C3 + 1
         C4     =  C4 + 1
         IF( SW5 )  GO  TO  3

    6 CONTINUE
         SW6    =  .NOT. SW6
         C(J+2) =  C1 / C2 + C3 - C4
         C(J+3) =  C1 * C2 + C3 + C4
         J      =  J + 4
         IF( SW6 )  GO  TO  2

    7 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
