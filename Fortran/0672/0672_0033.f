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
         COMPLEX   C1  , C2  , C3

         NAMELIST  /NAMEL/ C1 , C2 , C3 ,
     1                     I  , J  , K
         WRITE(6,2000)  MEMO
 2000         FORMAT(1H0 , A8)

    1 CONTINUE
         I = 1
         C1 = (5.0 , 0.)
         C2 = (-5.0 , 0.)
         C3 = (5.0 , 0.)

    2 CONTINUE
         J = I - I + I - I + I - I + 1
         K = (J - J) - (J - J) + (J - J) - (J - J) + 2

    3 CONTINUE
         SW3 = .NOT. SW3
         K = I + 2
         J = I + 3
         I = C1 * 2 + C2 / 4
         J = J + REAL(C1 - C2)
         K = K + AIMAG(C1 - C2)
         IF (.NOT. SW3) GO TO 5
    4 CONTINUE
         SW4 = .NOT. SW4
         C3 = CMPLX(J+1.0 , K-1.0)
         K = K + 1
         J = J + 1

         IF (SW4) GO TO 6

    5 CONTINUE
         C1 = C1 + CMPLX(I+0.0 , J-0.0)
         C2 = C2 - CMPLX(-I-0.0 , -J+0.0)
         GO TO  2

    6 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
