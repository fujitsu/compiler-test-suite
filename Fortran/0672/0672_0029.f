          LOGICAL     SW3 , SW4

           SW3 = .FALSE.
           SW4 = .TRUE.
           CALL SUB('SUB-1',SW3,SW4)

           SW3 = .TRUE.
           SW4 = .TRUE.
           CALL SUB('SUB-2',SW3,SW4)

           SW3 = .FALSE.
           SW4 = .FALSE.
           CALL SUB('SUB-3',SW3,SW4)

           SW3 = .TRUE.
           SW4 = .FALSE.
           CALL SUB('SUB-4',SW3,SW4)
         STOP
         END
      SUBROUTINE   SUB(MEMO,SW3,SW4)
         REAL*8    MEMO
         LOGICAL   SW3 , SW4
         DIMENSION A(5)

         NAMELIST  /NAMEL/ A , B , C , D , E ,
     1                     I
         WRITE(6,2000)  MEMO
 2000         FORMAT(1H0 , A8)

    1 CONTINUE
         I = 1
         B = 4.0
         C = 2.0
         D = B * C - 4.0
         E = 2.0
         A(1) = 1.0
         A(2) = 1.0
         A(3) = 1.0
         A(4) = 1.0
         A(5) = 1.0

    2 CONTINUE
         A(1) = 2.0 * I - 2.0 * (I - 1)
         A(2) = B ** I - C ** I

    3 CONTINUE
         SW3 = .NOT. SW3
         A(3) = (B / C) ** I
         A(4) = B / C ** I - B ** I / C ** I
         D = 2.0
         E = 1.0 * 2.0 + D
         IF (SW3) GO TO 4
    6 CONTINUE
         D = D + B / C
         E = D
         GO TO 3

    4 CONTINUE
         SW4 = .NOT. SW4
         A(5) = B / C ** I + B / C - B ** I
         IF (SW4) GO TO 2

    5 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
