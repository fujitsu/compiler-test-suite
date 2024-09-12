      WRITE (6,10)
10    FORMAT(1H1,5X,'====== FORTRAN ====== ... = TEST =')
      IP=0
      CALL F65501(IP)
      IF(IP.NE.0) GO TO 30
      WRITE(6,20)
   20 FORMAT(21X,'= TEST =',5X,'OK')
30    WRITE (6,40)
   40 FORMAT(5X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE F65501(IP)
      IMPLICIT COMPLEX*16(W) , REAL * 8
     E  (D)
      COMMON /X1/ W(2,5,2,5,2,5,13) , D(2,5,2,5,2,5,08)
      W(1,1,1,1,1,1,1)=(1.0D1,1.1D1)
      D(1,1,1,1,1,1,1) = 1.0D1
      W(2,5,2,5,2,5,13)=(1.0D1,1.1D1)
      D(2,5,2,5,2,5,8) = 1.0D1
      CALL F65502
      IF(DREAL(W(2,1,1,1,1,1,1)).EQ.2.0D1 .AND.
     1   DIMAG(W(2,1,1,1,1,1,1)).EQ.2.0D1) GO TO 20
      IF(DREAL(W(2,5,2,5,2,5,9)).NE.DREAL(W(1,1,1,1,1,1,1))  .AND.
     2   DIMAG(W(2,5,2,5,2,5,9)).NE.DIMAG(W(1,1,1,1,1,1,1))) GO TO 20
      IF(D(1,5,2,5,2,5,8).NE.D(1,1,1,1,1,1,1)) GO TO 20
      GO TO 30
20    IP = IP+1
      WRITE(6,400)
400   FORMAT(1H , 20X, '==TEST==',3X,'=================================
     E============================= ' )
30    RETURN
      END
      SUBROUTINE F65502
      IMPLICIT COMPLEX*16(W),REAL*8(D)
      COMMON /X1/ W(2,5,2,5,2,5,13) , D(2,5,2,5,2,5,8)
      W(2,1,1,1,1,1,1)=(0.0D0,0.0D0)
    3 IF(DREAL(W(1,1,1,1,1,1,1)).NE.1.0D1  .AND.
     +   DIMAG(W(1,1,1,1,1,1,1)).NE.1.0D1) GO TO 20
    5 IF(((D(1,1,1,1,1,1,1)-1.0D1)**2+(D(2,5,2,5,2,5,8)-1.0D1)**2)
     E.NE.0.0D1) GOTO 20
    4 IF(DREAL(W(1,1,1,1,1,1,1)).NE.DREAL(W(2,5,2,5,2,5,13))  .AND.
     +   DIMAG(W(1,1,1,1,1,1,1)).NE.DIMAG(W(2,5,2,5,2,5,13))) GO TO 20
      W(2,5,2,5,2,5,9) = (3.0D1, 3.0D1)
      W(1,1,1,1,1,1,1) = (3.0D1, 3.0D1)
      D(1,5,2,5,2,5,8) = 3.0D1
      D(1,1,1,1,1,1,1) = 3.0D1
      GO TO 30
   20 W(2,1,1,1,1,1,1)=(2.0D1,2.0D1)
30    RETURN
      END
