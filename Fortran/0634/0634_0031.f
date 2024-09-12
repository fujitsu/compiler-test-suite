      IMPLICIT REAL*8 (A-C)
      EXTERNAL  ZD209
      WRITE(6,10)
      WRITE(6,15)
   15 FORMAT(5X,'===============================================')
   10 FORMAT('1',5X,'====== FORTRAN ====== ... = TEST =')
      ASSIGN 1 TO K
      I = -1
   77 I = I+2
      IF(I.GT.9) GO TO 25
      GO TO K,(9,2,7,1,3,8,5,4,6)
   44 WRITE(6,11)I
   11 FORMAT(5X,'ASSIGNED GO TO  ',I1,'===============')
      GO TO 25
    1 WRITE(6,12)I
   12 FORMAT(5X,'ASSIGNED GO TO ',I1,'===========')
      ASSIGN 3 TO K
      GO TO 77
2     GO TO 44
    3 WRITE(6,12)I
      ASSIGN 5 TO K
      GO TO 77
4     GO TO 44
    5 WRITE(6,12)I
      ASSIGN 7 TO K
      GO TO 77
6     GO TO 44
    7 WRITE(6,12)I
      ASSIGN 9 TO K
      GO TO 77
8     GO TO 44
    9 WRITE(6,12)I
25    A = 0.0
      WRITE(6,35)
   35 FORMAT(10X,'END RUN UNIT')
      STOP
      END
      SUBROUTINE  ZD209
      WRITE(6,10)
   10 FORMAT(10X,'============')
      WRITE(6,35)
   35 FORMAT(10X,'END RUN UNIT')
      STOP
      END
