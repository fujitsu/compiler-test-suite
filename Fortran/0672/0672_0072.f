           INTEGER    SW2

           SW2 = 1
           CALL SUB('SUB-1',SW2)

           SW2 = 3
           CALL SUB('SUB-2',SW2)

           SW2 = 2
           CALL SUB('SUB-3',SW2)

         STOP
         END
      SUBROUTINE   SUB(MEMO,SW2)
         REAL*8    MEMO
         INTEGER   SW2
         NAMELIST  /NAMEL/ M1 , M2 , M3 , M4 , J

         WRITE(6,2000)  MEMO
 2000         FORMAT(1H0,A8)

    1 CONTINUE
         I = 2 + 2 - 2 + 2
         J = I / I + I - 1
         M3 = 0
         M4 = 0

    2 CONTINUE
         SW2 = MOD(SW2,3) + 1
         M1 = I * 5 + I * 5 + I * J
         M2 = M1 + (I + J)
         GO TO (3, 4, 5) , SW2
    3 CONTINUE
         M3 = I * 5 + I * J
         I = I + 1
         M4 = I * 5 + (-I) * (-J)
         GO TO 2
    5 CONTINUE
         J = I + J + I * 5
         GO TO 2

    4 CONTINUE
         WRITE(6,NAMEL)
         RETURN
      END
