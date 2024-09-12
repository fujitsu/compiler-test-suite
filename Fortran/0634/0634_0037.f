      WRITE (6,10)
   10 FORMAT('1',5X,'====== FORTRAN ====== ... = TEST ='/)
      IP=0
      CALL F18301 (IP)
      IF (IP.NE. 0 ) GO TO 30
      WRITE (6,20)
   20 FORMAT(21X,'= TEST =     OK'/)
   30 WRITE (6,40)
   40 FORMAT(6X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE F18301 (IP)
      IMPLICIT INTEGER (I)
      COMMON /J/J1,J
      COMMON /K/K1,K2
      COMMON /I/I1,I2
      INTEGER J(2,2)
      EQUIVALENCE (I,K)
      K=3
      I=4
   30 IF(I1.EQ.J1.AND.K1.EQ.J(1,1).AND.J(1,1).EQ.K2) GOTO 10
      IP=IP+1
      WRITE (6,20) I1,J1,K1,I2,J(1,1),K2
   200FORMAT (1H0,20X,'==TEST==',3X,'NG',5X,I4,3H ' ,I4,3H ' ,I4,3H ' ,
     E I4,3H ' ,I4,3H ' ,I4,3H ' ,I4)
   10 RETURN
      END
      BLOCK DATA
      COMMON /I/I1,I2
      COMMON /J/J1,J
      COMMON /K/K1,K2
      INTEGER J(2,2)
      DATA I1,I2/2*4/
      DATA J1,J/5*4/
      DATA K1,K2/2*4/
      END
