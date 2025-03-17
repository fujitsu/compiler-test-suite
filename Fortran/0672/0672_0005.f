      INTEGER  SW2

         SW2 = 3
         CALL  SUB('SUB-1',SW2)

         SW2 = 2
         CALL  SUB('SUB-2',SW2)

         SW2 = 1
         CALL  SUB('SUB-3',SW2)

         SW2 = 4
         CALL  SUB('SUB-4',SW2)

      STOP
      END

      SUBROUTINE   SUB(MEMO,SW2)

      character(*) MEMO
      INTEGER      SW2
     0NAMELIST     /NAMEL/   A1,A2,A3,A4,
     1                       C1,C2,C3,C4,
     2                       D1,   D3,D4,
     3                       E1

      WRITE(6,2000)MEMO
 2000 FORMAT(1H0,A8)

    1 CONTINUE
         A1    = 1.1
         A2    = 1.2
         A3    = 1.3
         A4    = 1.4
         C1    = 1.1
         C2    = 1.1
         C3    = 1.1
         C4    = 1.1
         D1    = 1.1
         D3    = 1.1
         D4    = 1.1
         E1    = 1.1

    2 CONTINUE
         SW2   = MOD(SW2,4) + 1
         C1    = ALOG(A1)
         C4    = SIN(A4)
         A4    = C4 + 2.1
         GO TO (3,5,6,9), SW2
    3 CONTINUE
         D1    = ALOG(A1)
         C3    = SQRT(A3)
    4 CONTINUE
         E1    = ALOG(A1)
         C2    = EXP(A2)
         D3    = SQRT(A3)
         GO TO 2
    5 CONTINUE
         C2    = EXP(A2)
         GO TO 2
    6 CONTINUE
         D1    = ALOG(A1)
         D4    = SIN(A4)
    7 CONTINUE
         A1    = D1 + 7.1
         C2    = EXP(A2)
         A2    = C2 + 7.1
    8 CONTINUE
         E1    = ALOG(A1)
         D3    = SQRT(A3)
         A3    = D3 + 8.1
         GO TO 2

    9 CONTINUE
         WRITE(6,NAMEL)

      RETURN
      END
