          LOGICAL     SW3 , SW5 , SW6

           SW3 = .TRUE.
           SW5 = .TRUE.
           SW6 = .TRUE.
           CALL SUB('SUB-1',SW3,SW5,SW6)

           SW3 = .FALSE.
           SW5 = .TRUE.
           SW6 = .TRUE.
           CALL SUB('SUB-2',SW3,SW5,SW6)

           SW3 = .TRUE.
           SW5 = .TRUE.
           SW6 = .FALSE.
           CALL SUB('SUB-3',SW3,SW5,SW6)

           SW3 = .FALSE.
           SW5 = .FALSE.
           SW6 = .TRUE.
           CALL SUB('SUB-4',SW3,SW5,SW6)

           SW3 = .FALSE.
           SW5 = .FALSE.
           SW6 = .FALSE.
           CALL SUB('SUB-5',SW3,SW5,SW6)
         STOP
         END
      SUBROUTINE   SUB(MEMO,SW3,SW5,SW6)
         REAL*8    MEMO
         LOGICAL   SW3 , SW5 , SW6
         COMPLEX   C1  , C2  , C3  , C4  , C5

         NAMELIST  /NAMEL/ A  , B  , C  , D  ,
     1                     E  , F  , G  , H  ,
     2                     C1 , C2 , C3 , C4 , C5 ,
     3                     W
         WRITE(6,2000)  MEMO
 2000         FORMAT(1H0 , A8)

    1 CONTINUE
         A  = 0
         B  = 0
         C  = 0
         D  = 0
         E  = 0
         F  = 0
         G  = 0
         H  = 0
         W  = 0
         C1 = (2.0 , 1.0)
         C2 = (1.0 , -2.0)
         C3 = (-1.0 , 2.0)
         C4 = (2.0 , -1.0)
         C5 = (0. , 0.)

    2 CONTINUE
         A = 2.0 * C1 + 2.0 * C2
         B = C2 + C3 * 3.0
         C5 = B + C4
    3 CONTINUE
         SW3 = .NOT. SW3
         B = C1 + C2 - C3 - C4
         D = C3 * 3.0 + C2
         E = 1.0
         F = D / E
         IF (.NOT. SW3) GO TO 5
    4 CONTINUE
         G = B + A + D + F
         B = C1 + C2
         D = C3 + C4 - C2
         GO TO 2
    5 CONTINUE
         SW5 = .NOT. SW5
         B = B + (1.0 , 1.0)
         G = C1 + C2
         H = C3 + C4 - C1
         W = C1 + C2 + C3
         IF (SW5) GO TO 4
    6 CONTINUE
         SW6 = .NOT. SW6
         C = A + B
         IF (SW6) GO TO 5

    7 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
