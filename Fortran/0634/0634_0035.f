      IMPLICIT LOGICAL (L)
      DIMENSION L1005(5)
      WRITE(6,10)
   10 FORMAT('1',5X,'====== FORTRAN ====== ...= TEST ='/)
      DATA  L1005(1),L1005(2),L1005(3),L1005(4),L1005(5) /5*.TRUE. /
     0IF(L1005(1).AND.L1005(2).AND.L1005(3)
     E .AND.L1005(4).AND.L1005(5) ) GO TO 30
   20 FORMAT( 21X,'=================='/)
      WRITE(6,20)
      GO TO 50
   30 WRITE(6,40)
   40 FORMAT(21X,'= TEST =     OK'/)
   50 WRITE(6,60)
   60 FORMAT(6X,'END RUNUNIT')
      STOP
      END
