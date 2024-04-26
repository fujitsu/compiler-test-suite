      PROGRAM MAIN
      REAL*8     DBB(10),DBC(10)
      COMPLEX*16 QSM(3,10)
      DATA DBB/0.11,0.22,0.33,0.44,0.55,0.66,0.77,0.88,0.99,2.1/
      DATA DBC/2.1,0.99,0.88,0.77,0.66,0.55,0.44,0.33,0.22,0.11/
C
      DO 10 I=1,10
         QSM(1,I) = DBB(I) + DBC(I)
         QSM(2,I) = DBB(I) - DBC(I)
         QSM(3,I) = QSM(1,I) * QSM(2,I)
   10 CONTINUE
C
      WRITE(6,100) QSM
  100 FORMAT(1H ,10F7.3)
      STOP
      END
