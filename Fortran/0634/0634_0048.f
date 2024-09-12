      WRITE(6,10)
   10 FORMAT('1',5X,'====== FORTRAN ====== ... = TEST ='//T21,'OBJECT ',
     *       '==================== ' )
      IP=0
      CALL E19001 (IP)
      CALL E19002 (IP)
      IF( IP.NE.0 ) GO TO 30
      WRITE(6,20)
   20 FORMAT('0',10X,'=====================================')
   30 WRITE(6,40)
   40 FORMAT('0',5X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE E19001 (IP)
      IMPLICIT REAL*8(D),REAL*8 (Q)
  100 FORMAT('0',10X,'E19001(',I1,')  NG',4G25.12 )
      NO=1
               DATA A,B /2.0,64.0/
   11 C=A**6
      IF( ABS(B-C).LE.1.0E-5) GO TO 10
      IP=IP+1
      WRITE(6,100)NO,A,B,C
   10 NO=2
      K=1
   22 DO 33 N=1,10
   33 K=K+2**N
      IF( K.EQ.2047 ) GO TO 20
      IP=IP+1
      WRITE(6,100)NO,K,N
   20 NO=3
   44 I=8**3
      IF(I.EQ.512) GO TO 30
      IP=IP+1
      WRITE(6,100)NO,I
   30 RETURN
      END
      SUBROUTINE E19002 (IP)
      IMPLICIT REAL*8(D),COMPLEX*16 (Q)
  100 FORMAT('0',10X,'E19002(',I1,')  NG',4G25.12 )
      NO=1
    1 D2=D1**5
               DATA D1 /4.0D0/
      IF( ABS( D2-1024.0D0 ).LE.1.0D-13 ) GO TO 10
      IP=IP+1
      WRITE(6,100)NO,D1,D2
   10 NO=2
   11 Q1=Q2**K
               DATA Q2/(1.0D0,0.0D0)/
               DATA K/0/
      IF( CDABS( Q1-Q2) .LE.1.0D-30 ) GO TO 20
      IP=IP+1
      WRITE(6,100)NO,Q1,Q2
   20 NO=3
   21 M=20**2
   22 MM=3**4
      IF( M.EQ.400 .AND. MM.EQ.81 ) GO TO 30
      IP=IP+1
      WRITE(6,100)NO,M,MM
   30 RETURN
      END
