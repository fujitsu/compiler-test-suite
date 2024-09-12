      WRITE (6,10)
10    FORMAT(1H1,5X,'====== FORTRAN ====== ... = TEST =')
      IP=0
      CALL F65301(IP)
      IF(IP.NE.0) GO TO 30
      WRITE (6,20)
 20   FORMAT(1H0,20X,'= TEST =',5X,'OK')
30    WRITE (6,40)
  40  FORMAT(1H0,5X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE F65301(IP)
      DIMENSION R0199(2,2,3,8,8,9,9)
      R0199(2,2,3,8,8,9,9) = 1.0
      R0199(1,1,1,1,1,1,1) = 1.0
     0IF( R0199(2,2,3,8,8,9,9).EQ.R0199(1,1,1,1,1,1,1)) GO TO
     E 10
510   WRITE(6,20) R0199(1,1,1,1,1,1,1),R0199(2,2,3,8,8,9,9)
  20  FORMAT (1H ,20X,'==TEST==',3X,
     1 F10.3, '=', F10.3, 3X,'========================================
     E=== ' )
      IP = IP+1
10    RETURN
      END
