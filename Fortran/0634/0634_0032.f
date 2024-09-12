      WRITE (6,10)
10    FORMAT('1',5X,'====== FORTRAN ====== --- = TEST =')
      IP = 0
      CALL F13101 (IP)
      IF (IP.NE.0 ) GO TO 30
      WRITE ( 6,20 )
   20 FORMAT(1H0,20X,'= TEST =      OK')
   30 WRITE (6 ,40 )
   40 FORMAT (1H0,4X,12HEND  RUNUNIT)
      STOP
      END
      SUBROUTINE  F13101  (IP)
      DATA I11,I12,I13 /10,20,30 /
      REWIND  1
      REWIND  1
      WRITE(1,10) I11
      WRITE(1,10) I12
      WRITE(1,10) I13
      REWIND  1
      READ(1,10) I20
   10 FORMAT(I4)
   15 IF(I11.EQ.I20) GO TO  30
      IP=IP+1
      WRITE(6,20)
   200FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'==========================='
     E, '=================='  )
   30 READ(1,10) I22
      REWIND 1
      READ(1,10) I21
   35 IF(I11.EQ.I21)  GO TO  45
   400FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'==========================='
     E,  '======' )
      IP=IP+1
      WRITE(6,40)
   45 READ(1,10,END=100) I22,I23,I24
      IP=IP+1
      WRITE(6,50)
   500FORMAT(1H0,20X,'==TEST==',3X,'==================================='
     E    )
  100 RETURN
      E N D
