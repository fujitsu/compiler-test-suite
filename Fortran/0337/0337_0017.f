      WRITE(6,101)
  101 FORMAT(1H0 // 10X,21HTEST OF STOP STATMENT)
  102 FORMAT(1H0,10X,10HSTOP  4567)
  103 FORMAT(1H0,10X,20HCOMPARE TO NEXT PAGE)
      J   =0
      N   =1
C
      ITM =01
   10 J   =J+1
      GO TO 20
   20 IF(J-5)30,30,50
   30 J   =J+N
      GO TO 10
   50 JANS=7
      WRITE(6,102)
      WRITE(6,103)
      STOP 4567
      END
