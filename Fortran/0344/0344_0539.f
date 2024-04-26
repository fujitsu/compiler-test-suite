      PROGRAM MAIN
      REAL*4     PS(10),RSM(10)
      REAL*8     DBA(20)
      COMPLEX*16 QSM(10)
      DATA QSM/2*0.11,4*0.33,4*0.55/
      DATA PS/0.11,0.22,0.33,0.44,0.55,0.66,0.77,0.88,0.99,2.1/
      DATA RSM/2.1,0.99,0.88,0.77,0.66,0.55,0.44,0.33,0.22,0.11/
C
      DO 10 I=1,10
         DBA(I)    = QSM(I) * RSM(I)
         DBA(21-I) = QSM(I) * PS(I)
   10 CONTINUE
C
      WRITE(6,100) DBA
  100 FORMAT(1H ,5F15.6)
      STOP
      END
