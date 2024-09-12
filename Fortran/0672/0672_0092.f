      LOGICAL  SW3,SW4,SW5,SW6,SW8,SW9

         SW3 = .TRUE.
         SW4 = .FALSE.
         SW5 = .TRUE.
         SW6 = .FALSE.
         SW8  = .FALSE.
         SW9  = .TRUE.
         CALL  SUB ('SUB-1',SW3,SW4,SW5,SW6,SW8,SW9)

         SW3  = .FALSE.
         SW4  = .TRUE.
         SW5  = .FALSE.
         SW6  = .TRUE.
         SW8  = .TRUE.
         SW9  = .FALSE.
         CALL  SUB ('SUB-2',SW3,SW4,SW5,SW6,SW8,SW9)

         SW3  = .TRUE.
         SW4  = .TRUE.
         SW5  = .TRUE.
         SW6  = .TRUE.
         SW8  = .FALSE.
         SW9  = .FALSE.
         CALL  SUB ('SUB-3',SW3,SW4,SW5,SW6,SW8,SW9)

         SW3  = .FALSE.
         SW4  = .FALSE.
         SW5  = .FALSE.
         SW6  = .FALSE.
         SW8  = .TRUE.
         SW9  = .TRUE.
         CALL  SUB ('SUB-4',SW3,SW4,SW5,SW6,SW8,SW9)

         SW3  = .FALSE.
         SW4  = .FALSE.
         SW5  = .FALSE.
         SW6  = .FALSE.
         SW8  = .FALSE.
         SW9  = .FALSE.
         CALL  SUB ('SUB-5',SW3,SW4,SW5,SW6,SW8,SW9)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW3,SW4,SW5,SW6,SW8,SW9)
      REAL*8        MEMO
      LOGICAL  SW3,SW4,SW5,SW6,SW8,SW9
      NAMELIST      /NAMEL/ A  ,B  ,
     *                      C  ,C1
      COMPLEX       C,C1

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         IC1   = 0
         IC2   = 0
         L     = 1
         I     = 6
         K     = 3
         A     = 0
         B     = 0
         C     =(0. , 0.)
         C1    =(0. , 0.)

    2 CONTINUE
         A     = 0.0
         C1    = (1.0 , -1.0)
         M     = 0

    3 CONTINUE
         SW3   = .NOT. SW3
         C     = (2.0 , -2.0)
         A     = IFIX(2.0) ** I
         B     = 2 ** I + C / K
         D     = C / K * 2.0 + A * 2 ** (2 - I)
         E     = 1.0
         IF ( .NOT. SW3 ) GO TO 8
    4 CONTINUE
         SW4   = .NOT. SW4
         C     = C + C1 / K
         A     = A + C1 / K
         B     = B + C / K
         D     = D + C + C1 / K
         IF ( SW4 ) GO TO 4
    5 CONTINUE
         SW5   = .NOT. SW5
         E     = E + (E + E) ** 2
         M     = M + K ** I / (K - 1) ** (I - 1)
         N     = M + I * (K - 1) + (I - 1) * K
         IF ( SW5 ) GO TO 4
    6 CONTINUE
         SW6   = .NOT. SW6
         CALL  SUB01(A+B, A+B-D, 2**I, I*(K-1), (K-1)**(I-1), K**I)
         A     = A + B + C / E
         B     = A + B - D + C / E
         L     = L - 1
         IF ( L .GE. 0 ) GO TO 5
    7 CONTINUE
         IC2   = IC2 + 1
         I     = I - 1

         IF ( I .GT. K ) GO TO 11

    8 CONTINUE
         SW8   = .NOT. SW8
         A     = A / FLOAT(4 ** K)
         B     = (C + C1) / (K - 1) * 2 + B
         D     = D / (A + B)
         E     = E / (A + B - D)
         IF ( .NOT. SW8 ) GO TO 10
    9 CONTINUE
         SW9   = .NOT. SW9
         A     = A + FLOAT(K)
         B     = B + FLOAT(1)
         E     = E + 1.0
         D     = D / E + (A + B)
         IF ( SW9 ) GO TO 9
   10 CONTINUE
         CALL  SUB01(A-B, A-B+D, 4**K, (K-1)*2, (K-1)**K, K**I)
         IC1   = IC1 + 1
         K     = K + 1

         IF ( K .GT. 4 ) GO TO 9

   11 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
      SUBROUTINE    SUB01( AA,BB,KK,LL,MM,NN )
         AAA   = AA + 1
         BBB   = BB + 1
         KKK   = KK + 1
         LLL   = LL + 1
         MMM   = MM + 1
         NNN   = NN + 1
      RETURN
      END
