      COMPLEX A(20),B(20),D
      DIMENSION D(3,3,2)
  102 FORMAT(1H0 8X,15H*ERROR* *ERROR*3X,2H( I2,2H )5X,2E14.7,
     *2(3X,2E14.7))
  103 FORMAT(1H0 11X,12H*OK*    *OK*3X,2H( I2,2H )5X,2E14.7,
     *2(3X,2E14.7))
  104 FORMAT(1H0 8X,15H*ERROR*    *OK*,3X,2H( I2,2H )5X,2E14.7,
     *2(3X,2E14.7))
  105 FORMAT(1H0,11X,12H*OK* *ERROR*3X,2H( I2,2H )5X,2E14.7,
     *2(3X,2E14.7))

      CALL SUB(D,2,2,4)
      A( 1)=D(1,1,1)
      B( 1)=(-1.0,1.0)
      A( 2)=D(2,1,1)
      B( 2)=(2.0,2.0)
      A( 3)=D(3,1,1)
      B( 3)=(-2.0,2.0)
      A( 4)=D(1,2,1)
      B( 4)=(4.0,4.0)
      A( 5)=D(2,2,1)
      B( 5)=(-2.0,2.0)
      A( 6)=D(3,2,1)
      B( 6)=(4.0,4.0)
      A( 7)=D(1,3,1)
      B( 7)=(-4.0,4.0)
      A( 8)=D(2,3,1)
      B( 8)=(8.0,8.0)
      A( 9)=D(3,3,1)
      B( 9)=(-3.0,3.0)
      A(10)=D(1,1,2)
      B(10)=(6.0,6.0)
      A(11)=D(2,1,2)
      B(11)=(-6.0,6.0)
      A(12)=D(3,1,2)
      B(12)=(12.0,12.0)
      A(13)=D(1,2,2)
      B(13)=(-4.0,4.0)
      A(14)=D(2,2,2)
      B(14)=(8.0,8.0)
      A(15)=D(3,2,2)
      B(15)=(-8.0,8.0)
      A(16)=D(1,3,2)
      B(16)=(16.0,16.0)
      DO 10 I=1,16
      RL  =REAL(B(I))
      AG  =AIMAG(B(I))
      DIFR=REAL(A(I))-RL
      DIFI=AIMAG(A(I))-AG
      IF(ABS(DIFR)-1.0E-5*ABS(RL))707,708,708
  707 IF(ABS(DIFI)-1.0E-5*ABS(AG))709,710,710
  708 IF(ABS(DIFI)-1.0E-5*ABS(AG))711,712,712
  709 WRITE(6,103)I
      GO TO 10
  710 WRITE(6,105)I
      GO TO 10
  711 WRITE(6,104)I,A(I),B(I),DIFR,DIFI
      GO TO 10
  712 WRITE(6,102)I,A(I),B(I),DIFR,DIFI
   10 CONTINUE
      STOP
      END
      SUBROUTINE SUB(X,I,J,K)
      COMPLEX X
      DIMENSION X(I,J,K)
      DO 10 KK=1,K
      DO 10 JJ=1,J
      DO 10 II=1,I
      P =II*JJ*KK
      Q =II*JJ*KK*(-1)**II
      X(II,JJ,KK)=CMPLX(Q,P)
   10 CONTINUE
      RETURN
      END
