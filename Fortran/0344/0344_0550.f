      PROGRAM MAIN
      REAL*8  QS(24,24),QL(24,24)
      REAL*4  Z(10,10),PA(10,10),PB(10,10),EM(10)
      DATA QS/576*0.123/,QL/576*0.567/,SD/0.89/,N/10/
      DATA PA/20*0.12,20*0.34,20*0.56,20*0.78,20*0.90/
      DATA PB/20*1.23,20*4.56,20*7.89,20*0.12,20*3.45/
      DATA EM/6.78,9.01,2.34,5.67,8.90,1.23,4.56,7.89,0.12,3.45/
C
      DO 10 I=1,24
         DO 10 J=1,24
            DO 10 K=1,9
               QS(I,J) = QS(I,J) + QL(K,I) * QL(K,J) * SD
   10 CONTINUE
C
      DO 20 I=1,N
         DO 20 J=3,N
            Z(I,J) = PA(I,J-2) * PB(I,J)
            PA(I,J) = Z(I,J) / EM(J)
   20 CONTINUE
C
      WRITE(6,100) QS,PA
  100 FORMAT(1H ,5F15.3)
      STOP
      END
