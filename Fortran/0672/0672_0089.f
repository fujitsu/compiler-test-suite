           LOGICAL    SW3 , SW8 , SW9 , SW10 , SW11
           INTEGER    SW2 , SW12

           SW2 = 3
           SW3 = .FALSE.
           SW8 = .TRUE.
           SW9 = .TRUE.
           SW10 = .FALSE.
           SW11 = .TRUE.
           SW12 = 2
           CALL SUB('SUB-1',SW2,SW3,SW8,SW9,SW10,SW11,SW12)

           SW2 = 3
           SW3 = .TRUE.
           SW8 = .TRUE.
           SW9 = .TRUE.
           SW10 = .TRUE.
           SW11 = .TRUE.
           SW12 = 1
           CALL SUB('SUB-2',SW2,SW3,SW8,SW9,SW10,SW11,SW12)

           SW2 = 1
           SW3 = .TRUE.
           SW8 = .TRUE.
           SW9 = .TRUE.
           SW10 = .FALSE.
           SW11 = .FALSE.
           SW12 = 2
           CALL SUB('SUB-3',SW2,SW3,SW8,SW9,SW10,SW11,SW12)

           SW2 = 3
           SW3 = .FALSE.
           SW8 = .TRUE.
           SW9 = .TRUE.
           SW10 = .FALSE.
           SW11 = .TRUE.
           SW12 = 3
           CALL SUB('SUB-4',SW2,SW3,SW8,SW9,SW10,SW11,SW12)
         STOP
         END
      SUBROUTINE   SUB(MEMO,SW2,SW3,SW8,SW9,SW10,SW11,SW12)
         character(*)  MEMO
         LOGICAL   SW3 , SW8 , SW9 , SW10 , SW11
         INTEGER   SW2 , SW12
         COMPLEX   C   , C0  , C1  , C2
         DIMENSION IA(2,2)

         NAMELIST  /NAMEL/ A , B  , D  , E ,
     1                     K , M  , N  , IA ,
     2                     C , C0 , C1 , C2
         WRITE(6,2000) MEMO
 2000         FORMAT(1H0 , A8)

    1 CONTINUE
         A = 0
         B = 0
         D = 0
         E = 0
         I = 1
         J = 1
         K = 1
         M = I - J
         N = I - J
         IA(1,1) = 0
         IA(1,2) = 0
         IA(2,1) = 0
         IA(2,2) = 0
         C  = (0. , 0.)
         C0 = (0. , 0.)
         C1 = (0. , 0.)
         C2 = (0. , 0.)
    2 CONTINUE
         SW2 = MOD(SW2,3) + 1
         A = 1.0
         B = A + 2.0
         C1 = CMPLX(1.0 , B)
         C2 = CMPLX(A , A+2.0)
         C  = (1.0 , -1.0)
         IA(1,1) = I + J
         IA(1,2) = I + J
         IA(2,1) = I + J
         IA(2,2) = I + J
         GO TO (3 , 6 , 14), SW2
    3 CONTINUE
         SW3 = .NOT. SW3
         A = A + FLOAT(I*2) - REAL(C1+C2)
         B = B + REAL(C1+C2)
         C = C1 + C2 + CMPLX(A , B)
         M = 5 ** (5 - I)
         N = (-5) ** (I - 5) + 1
         IF (.NOT. SW3) GO TO 5
    4 CONTINUE
         M = M + I * 2
         N = M + N - I * 4
         A = A + A * J
         B = B + C * J
         C = C * J + (C1 + C2) * J
    5 CONTINUE
         M = (M + N) * 2 ** J
         N = M / N ** (I + J)
         A = A - A * J
         B = A + C * J
         C = B + (C1 + C2) * J
         J = J + 1
         GO TO 2
    6 CONTINUE
         J = 1
         A = 0.0
         C0 = (1.0 , -1.0)
         C1 = CMPLX(REAL(C0)-1.0 , AIMAG(C0)+1.0)
         M = A

    7 CONTINUE
         C1 = C1 + CMPLX(FLOAT(I * 2) , - FLOAT(I * 2))
         M = M + J ** (J - 1) / I ** (J - 1)
         N = IA(I + 1 - I , 1) + IA(I * 2 + 2 - I * 2 , 2)
         C2 = CMPLX(FLOAT(M+N) , FLOAT(-M-N))
    8 CONTINUE
         SW8 = .NOT. SW8
         A = A + M ** N / FLOAT(M ** (N - 1))
         C2 = C2 - C1 / C2
         M = M + 1
         N = N + 1
         IF (SW8) GO TO 7
    9 CONTINUE
         SW9 = .NOT. SW9
         M = IA(J - J + 1 , 1 + J - J) * M
         N = IA(1 , 2) * IA(2 , 1) / N
         M = N + N
         N = 1
         IF (SW9) GO TO 7
   10 CONTINUE
         SW10 = .NOT. SW10
         B = A
         N = IFIX(B + 2.0) + N * M
         A = A / SQRT(B + 2.0)
         M = M + 4 * (J - J + 1) ** J
         A = ABS(AIMAG(C2 + C1)) + A * 2.0
         B = B - REAL(CMPLX(FLOAT(I * 4) , FLOAT(J * (I-2))))
         IF (.NOT. SW10) GO TO 12
   11 CONTINUE
         SW11 = .NOT. SW11
         C = C1 + C2 + C0 ** J
         A = A + REAL(C0 ** J)
         B = B + AIMAG(C0 ** J)
         C = C + CMPLX(FLOAT(M) , FLOAT(N))
         IF (SW11) GO TO 9
   12 CONTINUE
         SW12 = MOD(SW12,3) + 1
         C = C1 + C2 - C0 ** J
         A = A - C0 ** J
         B = B - AIMAG(C0 ** J)
         C = C - CMPLX(FLOAT(-M) , FLOAT(-N))
         J = J + 1
         GO TO (7 , 10 , 13), SW12

   13 CONTINUE
         D = A ** FLOAT(I ** J)
         E = B / I ** J
         I = I + 1
         GO TO 2

   14 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
