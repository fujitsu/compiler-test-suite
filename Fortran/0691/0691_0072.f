      DIMENSION N(20),A(20),B(5,5),D(5,5,5),E(10,8),M(20),X(20),Y(20)
      COMPLEX C(20),G(5,5),F(10,10,10)
  999 FORMAT(1H1 /)
  100 FORMAT(1H1 / 2X,28H*FORTRAN*              ENTER)
 1000 FORMAT(1H0///7X,23H*FORTRAN*          EXIT)
  101 FORMAT(1H0 / 10X,40H- JUSTICE -     - ITEM -      - COMPUTED,
     *58H RESULT -          - COMPARE VALUE -        - DIFFERENCE -)
  110 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,I6,20X,I6)
  111 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,I6,20X,I6)
  112 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,8X,
     *E14.7)
  113 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),10X,E14.7,13X,E14.7,8X,
     *E14.7)
      A(1)=4.5
      A(5)=10.5
      A(16)=15.8
      A(20)=45.6
      B(1,5)=83.5
      B(3,4)=3.8
      B(5,2)=18.4
      I=1
      J=2
      K=3
      L=5
      B(J,K)=61.5
      D(I,I,I)=18.6
      D(K+1,K+1,K+1)=12.6
      E(K*2,K*2)=2.8
      E(L*3-10,L*3-10)=12345.6
      E(J*1-1,J*1-1)=123.4
      G(J,J)=(2.3,1.0)
      G(J+1,J+1)=(4.5,3.2)
      G(L-1,L-1)=(6.5,8.3)
      G(K*2-1,K*2-1)=(3.6,7.7)
      C(1)=(56.3,0.0)
      C(4)=(0.0,0.0)
      C(8)=(-5.8,4.6)
      C(13)=(0.0,10.8)
      C(16)=(46.8,25.3)
      C(20)=(85.6,46.2)
      F(J,J,J)=(-4.6,3.6)
      F(J*K-L,J*K-L,J*K-L)=(0.0,7.1)
      F(L+1,L+1,L+1)=(1234.5,0.0)
      F(K*J+I,K*J+I,K*J+I)=(6 72.0,326.5)
      N(1)=A(1)
      M(1)=4
      N(2)=A(L)
      M(2)=10
      N(3)=B(I,L)
      M(3)=83
      N(4)=B(J+1,K+1)
      M(4)=3
      N(5)=B(J,K)
      M(5)=61
      N(6)=D(J*K-L,J*K-L,J*K-L)
      M(6)=18
      N(7)=D(J+2,J+2,J+2)
      M(7)=12
      N(8)=D(J*2,J*2,J*2)
      M(8)=12
      N(9)=E(J*I+4,J*I+4)
      M(9)=2
      N(10)=E(L,L)
      M(10)=12345
      N(11)=E(L*J-9,L*J-9)
      M(11)=123
      N(12)=A(J*L+6)
      M(12)=15
      N(13)=A(K*10-10)
      M(13)=45
      N(14)=B(5,L*J-8)
      M(14)=18
      N(15)=E(J+K,J+K)
      M(15)=12345
      WRITE(6,100)
      WRITE(6,101)
      DO 10 I=1,15
      IF(N(I)-M(I))2,1,2
    1 WRITE(6,110)I,N(I),M(I)
      GO TO 10
    2 WRITE(6,111)I,N(I),M(I)
   10 CONTINUE
      X(1)=C(1)
      Y(1)=56.3
      X(2)=C(8)
      Y(2)=-5.8
      X(3)=C(K+L)
      Y(3)=-5.8
      X(4)=C(K*L+1)
      Y(4)=46.8
      X(5)=C(J*L+3)
      Y(5)=0.0
      X(6)=C(L*K+L)
      Y(6)=85.6
      X(7)=G(L-K,L-K)
      Y(7)=2.3
      X(8)=G(J+1,J+1)
      Y(8)=4.5
      X(9)=G(J*K-2,J*K-2)
      Y(9)=6.5
      X(10)=G(L,L)
      Y(10)=3.6
      X(11)=F(J,J,J)
      Y(11)=-4.6
      X(12)=F(K*J-5,K*J-5,K*J-5)
      Y(12)=0.0
      X(13)=F(K*1+3,K*1+3,K*1+3)
      Y(13)=1234.5
      X(14)=F(J*L-K,J*L-K,J*L-K)
      Y(14)=672.0
      X(15)=C(K*L-J)
      Y(15)=0.0
      WRITE(6,999)
      WRITE(6,101)
      DO 20 I=1,15
      J=15+I
      RIF=X(I)-Y(I)
      IF(ABS(RIF)-1.0E-05)3,4,4
    3 WRITE(6,112)J,X(I),Y(I),RIF
      GO TO 20
    4 WRITE(6,113)J,X(I),Y(I),RIF
   20 CONTINUE
      WRITE(6,1000)
      STOP
      END
