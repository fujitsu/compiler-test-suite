      LOGICAL  SW4,SW5,SW6,SW7

         SW4 = .TRUE.
         SW5 = .TRUE.
         SW6 = .TRUE.
         SW7 = .TRUE.
         CALL  SUB ('SUB-1',SW4,SW5,SW6,SW7)

         SW4 = .TRUE.
         SW5 = .FALSE.
         SW6 = .TRUE.
         SW7 = .TRUE.
         CALL  SUB ('SUB-2',SW4,SW5,SW6,SW7)

         SW4 = .TRUE.
         SW5 = .FALSE.
         SW6 = .TRUE.
         SW7 = .FALSE.
         CALL  SUB ('SUB-3',SW4,SW5,SW6,SW7)

         SW4 = .FALSE.
         SW5 = .TRUE.
         SW6 = .TRUE.
         SW7 = .FALSE.
         CALL  SUB ('SUB-4',SW4,SW5,SW6,SW7)

         SW4 = .FALSE.
         SW5 = .FALSE.
         SW6 = .FALSE.
         SW7 = .TRUE.
         CALL  SUB ('SUB-5',SW4,SW5,SW6,SW7)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW4,SW5,SW6,SW7)
      REAL*8        MEMO
      LOGICAL       SW4,SW5,SW6,SW7
      NAMELIST      /NAMEL/ A,B,C,D,
     *                      E,F,G,H,
     *                      I,W,X,Z

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         A     = 1.0
         I     = 2
         F     = 1.0
         G     = 1.0
         H     = 1.0
         W     = 1.0
         X     = 1.0
         Z     = 1.0

    2 CONTINUE
         A     = A * SQRT(16.0) / SQRT(16.0)
         B     = A * EXP(-1.0)
         C     = B
         D     = C
         E     = C + D
    3 CONTINUE
         B     = A
         C     = B + 2.0
         D     = C + 3.0
         E     = D + 4.0
         F     = E + 5.0
         G     = F + 6.0

    4 CONTINUE
         SW4   = .NOT. SW4
         A     = B + C + D + E
         B     = D + E + F
         E     = D * F + G / F
         IF ( SW4 ) GO TO 2
    5 CONTINUE
         SW5   = .NOT. SW5
         I     = AMIN1(A , A , A)
         H     = FLOAT(I) * 2.0 + A
         H     = 1.0
         H     = FLOAT(I) / 2.0 + A
         IF ( SW5 ) GO TO 7
    6 CONTINUE
         SW6   = .NOT. SW6
         W     = ABS(C + D)
         X     = ABS(C - D)
         Z     = W + X
         IF ( .NOT. SW6 ) GO TO 4
    7 CONTINUE
         SW7   = .NOT. SW7
         H     = H + C + D + E + F
         A     = ALOG(1.0) + H
         B     = ALOG(1.0) - H
         E     = A / B + EXP(1.0)
         IF ( .NOT. SW7 ) GO TO 5
    8 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
