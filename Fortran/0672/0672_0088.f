      LOGICAL  SW8,SW11
      INTEGER  SW2,SW5

         SW2 = 1
         SW5 = 2
         SW8 = .TRUE.
         SW11 = .FALSE.
         CALL  SUB ('SUB-1',SW2,SW5,SW8,SW11)

         SW2  = 2
         SW5  = 3
         SW8  = .TRUE.
         SW11 = .TRUE.
         CALL  SUB ('SUB-2',SW2,SW5,SW8,SW11)

         SW2  = 3
         SW5  = 1
         SW8  = .FALSE.
         SW11 = .TRUE.
         CALL  SUB ('SUB-3',SW2,SW5,SW8,SW11)

         SW2  = 2
         SW5  = 3
         SW8  = .TRUE.
         SW11 = .FALSE.
         CALL  SUB ('SUB-4',SW2,SW5,SW8,SW11)

         SW2  = 1
         SW5  = 2
         SW8  = .TRUE.
         SW11 = .TRUE.
         CALL  SUB ('SUB-5',SW2,SW5,SW8,SW11)

      STOP
      END
      SUBROUTINE    SUB(MEMO,SW2,SW5,SW8,SW11)
      REAL*8        MEMO
      LOGICAL       SW8,SW11
      INTEGER  SW2,SW5
      NAMELIST      /NAMEL/ A ,B ,C ,D ,E ,
     *                      I , K

      WRITE(6,2000) MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         I     = 0
         J     = -2
         K     = 0
         A     = 0
         B     = 0
         C     = 0
         D     = 0
         E     = 0
    2 CONTINUE
         SW2   = MOD(SW2,3) + 1
         A     = SQRT(FLOAT(I))
         B     = FLOAT(I * 2 + J * 4 )
         C     = FLOAT(4 ** I - 2 ** (I - 2))
         D     = FLOAT(5 ** J - 2 ** (2 - J))
         GO TO (3 , 4 , 8) , SW2
    3 CONTINUE
         A     = A * FLOAT(J)
         B     = B + FLOAT(I * 2 - J * 4)
         C     = C + FLOAT(2 ** (I -2) - 4 ** I) + 1
         D     = D + FLOAT(-2 ** (2 - J) + 5 ** J)
         GO TO 5
    4 CONTINUE
         A     = A / (FLOAT(J) + 9)
         B     = -B + FLOAT(I * 2 + J * 4)
         C     = -C + FLOAT(2 ** (I - 2) + 4 ** I) + 1
         D     = -D + FLOAT(2 ** (2 - J) - 5 ** J)
    5 CONTINUE
         SW5   = MOD(SW5,3) + 1
         J     = J + 1
         E     = A + B / C + D
         GO TO (2 ,6 , 7) , SW5
    6 CONTINUE
         A     = A + D + E
         B     = B / C + E
         GO TO 8
    7 CONTINUE
         A     = A + D - E
         B     = B / C - E
    8 CONTINUE
         SW8   = .NOT. SW8
         E     = FLOAT(K + I * 2 + J * 4)
         K     = K + I + J
         IF ( .NOT. SW8 ) GO TO 10
    9 CONTINUE
         A     = A + A / E
         B     = B + B / E
         C     = C + C / E
         D     = D + D / E
         GO TO 11
   10 CONTINUE
         A     = A - A / E
         B     = B - B / E
         C     = C - C / E
         D     = D - D / E
   11 CONTINUE
         SW11  = .NOT. SW11
         A     = A + 2 ** I
         B     = B + (-2) ** I
         C     = C + 3 ** (I - 1)
         D     = D + (-3) ** (5 - I)
         E     = E + 4 ** (I - 5)
          IF (SW11) GO TO 2

   12 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
