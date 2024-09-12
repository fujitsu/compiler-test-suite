           LOGICAL      SW2 , SW3 , SW4 , SW8 , SW9
           INTEGER      SW10

           SW2  = .TRUE.
           SW3  = .TRUE.
           SW4  = .TRUE.
           SW8  = .TRUE.
           SW9  = .TRUE.
           SW10 = 2
           CALL SUB('SUB-1',SW2,SW3,SW4,SW8,SW9,SW10)

           SW2  = .FALSE.
           SW3  = .FALSE.
           SW4  = .TRUE.
           SW8  = .TRUE.
           SW9  = .TRUE.
           SW10 = 2
           CALL SUB('SUB-2',SW2,SW3,SW4,SW8,SW9,SW10)

           SW2  = .FALSE.
           SW3  = .TRUE.
           SW4  = .TRUE.
           SW8  = .FALSE.
           SW9  = .TRUE.
           SW10 = 1
           CALL SUB('SUB-3',SW2,SW3,SW4,SW8,SW9,SW10)

           SW2  = .FALSE.
           SW3  = .FALSE.
           SW4  = .FALSE.
           SW8  = .FALSE.
           SW9  = .FALSE.
           SW10 = 1
           CALL SUB('SUB-4',SW2,SW3,SW4,SW8,SW9,SW10)

         SW2  = .FALSE.
         SW3  = .FALSE.
         SW4  = .FALSE.
         SW8  = .TRUE.
         SW9  = .TRUE.
         SW10 = 3
         CALL SUB('SUB-5',SW2,SW3,SW4,SW8,SW9,SW10)

           SW2  = .TRUE.
           SW3  = .FALSE.
           SW4  = .TRUE.
           SW8  = .TRUE.
           SW9  = .FALSE.
           SW10 = 3
           CALL SUB('SUB-6',SW2,SW3,SW4,SW8,SW9,SW10)
         STOP
         END
      SUBROUTINE   SUB(MEMO,SW2,SW3,SW4,SW8,SW9,SW10)
         REAL*8    MEMO
         LOGICAL   SW2 , SW3 , SW4 , SW8 , SW9
         INTEGER   SW10
         COMPLEX   A1 , A2 , A3 , A4 , C(4) ,
     *             B1 , B2 , B3 , B4 ,
     *             D1 , D2 , D3 , D4
         NAMELIST  /NAMEL/   A1 , A2 , A3 , A4 ,
     *                       B1 , B2 , B3 , B4 , C ,
     *                       D1 , D2 , D3 , D4 ,
     *                       E1 , E2 , E3 , E4 ,
     *                       P1 , P2 , P3 , P4 ,
     *                       Q1 , Q2 , Q3 , M

         WRITE(6,2000) MEMO
 2000         FORMAT(1H0,A8)

    1 CONTINUE
         B1 = (4.0 , 1.0)
         B2 = (4.0 , 1.0)
         B3 = (4.0 , 1.0)
         B4 = (4.0 , 1.0)
         C(1) = (2.0 , 2.7)
         C(2) = (2.0 , 2.7)
         C(3) = (2.0 , 2.7)
         C(4) = (2.0 , 2.7)
         D1 = (1.5 , 0.3)
         D2 = (1.5 , 0.3)
         D3 = (1.5 , 0.3)
         D4 = (1.5 , 0.3)
         E1 = 1.0
         E2 = 2.0
         E3 = 3.0
         E4 = 4.0
         P1 = 10.0
         P2 = 10.0
         P3 = 10.0
         P4 = 10.0
         Q1 = 5.1
         Q2 = 5.2
         Q3 = 5.3

    2 CONTINUE
         SW2 = .NOT. SW2
         A1  = CABS(C(1))
         A2  = CEXP(C(2))
         A3  = CONJG(C(3))
         A4  = CLOG(D1 + D4)
         E4  = REAL(B1 / D1) / 1.0
         IF ( .NOT. SW2 ) GO TO 6
    3 CONTINUE
         SW3 = .NOT. SW3
         A1  = CABS(C(1))
         D3  = REAL(A1 - A3) + AIMAG(A1)
         IF ( .NOT. SW3 ) GO TO 6
    4 CONTINUE
         SW4 = .NOT. SW4
         C(1) = A1 + 1.0
         C(3) = REAL(A2) - AIMAG(A1 - A3)
         Q1  =  E1 * P4 - 1.0
         IF ( .NOT. SW4 ) GO TO 6
    5 CONTINUE
         B2 = CEXP(C(2))
         D3 = CONJG(C(3))
         D2 = A1 - A3
         P1 = AINT(E1 * P4) + 3.0
         E2 = E3 * 0.5
    6 CONTINUE
         A1 = CABS(C(1))
         M  = IFIX(P3 * P2) + 1
         D3 = D1 + D4
         CALL SUB01(B4)

    7 CONTINUE
         D2 = CSQRT(B4 + D4)
         Q3 = P3 * P2
         E3 = REAL (CLOG(C(4))) + 2.1
         CALL SUB02(P2)
    8 CONTINUE
         SW8 = .NOT. SW8
         B2  = B4 + D4
         C(2) = A2 + 2.0
         P1  = P1 * 1.0
         Q1  = P2 + 1.0
         IF ( SW8) GO TO 7
    9 CONTINUE
         SW9 = .NOT. SW9
         B3  = CONJG(C(3))
         B4  = B1 / D1
         Q2  = REAL (CLOG(C(4))) + 2.1
         Q3  = Q2 + 0.5
         CALL SUB02(P2)
         IF ( SW9 ) GO TO 7
   10 CONTINUE
         SW10 = MOD(SW10,3) + 1
         C(2) = A2 + 1.1
         Q3   = P3 * Q2
         P2   = Q1 + Q2
         CALL SUB01(B4)
         GO TO (2 , 7 , 11) , SW10

   11 CONTINUE
         WRITE(6,NAMEL)
         RETURN
         END
      SUBROUTINE   SUB01(B4)
         COMPLEX   B4
         B4 = (10.0 , 10.0)
         RETURN
         END
      SUBROUTINE   SUB02(P2)
         P2 = 5.0
         RETURN
         END
