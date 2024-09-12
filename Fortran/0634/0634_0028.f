   5  WRITE (6,10)
10    FORMAT('1',5X,'====== FORTRAN ====== --- = TEST ='/,10X,'=========
     -====')
      WRITE (6,200)
200   FORMAT(1H0,3X,'RIGHT',5X,'========================================
     1=')
      GO TO 50
30    WRITE (6,40)
40    FORMAT(1H0,9X,'==============='/,1H0,4X,'END RUNUNIT')
      GO TO 60
50    I10=2
      GOTO  (5,30),I10
60    STOP
      END
