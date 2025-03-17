           LOGICAL    SW3 , SW6

           SW3 = .TRUE.
           SW6 = .TRUE.
           CALL SUB('SUB-1',SW3,SW6)

           SW3 = .TRUE.
           SW6 = .FALSE.
           CALL SUB('SUB-2',SW3,SW6)

           SW3 = .FALSE.
           SW6 = .TRUE.
           CALL SUB('SUB-3',SW3,SW6)

           SW3 = .FALSE.
           SW6 = .FALSE.
           CALL SUB('SUB-4',SW3,SW6)
         STOP
         END
      SUBROUTINE   SUB(MEMO,SW3,SW6)
         character(*)  MEMO
         LOGICAL   SW3 , SW6
         COMPLEX   C   , C1  , C2  , C3

         NAMELIST  /NAMEL / A ,
     1                      C , C1 , C2 , C3 ,
     2                      K , L  , M  , N  , IC1 , IC2
         WRITE(6,2000) MEMO
 2000         FORMAT(1H0 , A8)

    1 CONTINUE
         J = 1
         A = 0.
         L = 3
         IC1 = 0
         IC2 = 0
         C  = (0. , 0.)
         C1 = (0. , 0.)
         C2 = (0. , 0.)
         C3 = (0. , 0.)
         K = 0
         M = 0
         N = 0

    2 CONTINUE
         K = 2
         I = 1
         M = 0
         N = 0

    3 CONTINUE
         SW3 = .NOT. SW3
         C = (2.0 , 1.0)
         M = I * 5 + M + N
         N = I * 5 + N
         C1 = CMPLX(FLOAT(M) , FLOAT(N))
         C2 = CMPLX(FLOAT(I * 2 + 3) , FLOAT(I * 4 - 2))
         IF (.NOT. SW3) GO TO 5
    4 CONTINUE
         C1 = (C1 + C2) * C
         C2 = C2 * C
         GO TO 6
    5 CONTINUE
         C1 = (C1 + C2) / C
         C2 = C2 / C
         I = I + 1
         IF(I .LE. K) GO TO 3
    6 CONTINUE
         SW6 = .NOT. SW6
         C1 = C1 + C * 2.0
         C2 = C2 + C * 2.0
         M = M + N
         IC1 = IC1 + 1
         IF (SW6) GO TO 5

    7 CONTINUE
         A = A + FLOAT(M + 3 * J + 2)
         C3 = C1 + C2
         IC2 = IC2 + 1
         J = J + 1
         IF(J .LE. L) GO TO 2

    8 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
