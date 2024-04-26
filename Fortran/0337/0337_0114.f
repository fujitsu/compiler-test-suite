      DOUBLE PRECISION A(20),B(20),D,DIF
      DIMENSION D(3,3,2)
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( I2,2H )7X,D24.17,7X,D24.17,7X,
     *D24.17)
  103 FORMAT(1H0,12X,4H*OK*10X,2H( I2,2H )7X,D24.17,7X,D24.17,7X,D24.17)

      CALL SUB(D,2,2,4)
      A(1)=D(1,1,1)
      B(1)=0.1D1
      A(2)=D(2,1,1)
      B(2)=0.2D1
      A(3)=D(3,1,1)
      B(3)=0.2D1
      A(4)=D(1,2,1)
      B(4)=0.4D1
      A(5)=D(2,2,1)
      B(5)=0.2D1
      A(6)=D(3,2,1)
      B(6)=0.4D1
      A(7)=D(1,3,1)
      B(7)=0.4D1
      A(8)=D(2,3,1)
      B(8)=0.8D1
      A( 9)=D(3,3,1)
      B( 9)=0.3D1
      A(10)=D(1,1,2)
      B(10)=0.6D1
      A(11)=D(2,1,2)
      B(11)=0.6D1
      A(12)=D(3,1,2)
      B(12)=0.12D2
      A(13)=D(1,2,2)
      B(13)=0.4D1
      A(14)=D(2,2,2)
      B(14)=0.8D1
      A(15)=D(3,2,2)
      B(15)=0.8D1
      A(16)=D(1,3,2)
      B(16)=0.16D2
      DO 20 I=1,16
      DIF=A(I)-B(I)
      IF(DABS(DIF)-1.0D-15*DABS(B(I)))700,700,701
  700 WRITE(6,103)I
      GO TO 20
  701 WRITE(6,102)I,A(I),B(I),DIF
   20 CONTINUE
      STOP
      END
      SUBROUTINE SUB(X,L,J,K)
      DOUBLE PRECISION X,P,Q,R,S
      DIMENSION X(L,J,K)
      P =0.0D0
      Q =0.0D0
      R =0.0D0
      S =0.1D1
      DO 10 KK=1,K
      Q=0.0D0
      P=P+S
      DO 10 JJ=1,J
      Q=Q+S
      R=0.0D0
      DO 10 II=1,L
      R=R+S
      X(II,JJ,KK)=P*Q*R
   10 CONTINUE
      RETURN
      END
