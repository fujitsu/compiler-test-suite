      REAL I(20)
      INTEGER Y
      DIMENSION A(50),C(20),D(3,3,3,3),E(7,7,7,7,7),F(2,2,2,2,2,2,2),B(5
     *0)
      EQUIVALENCE (D(1,1,1,1),E(1,1,1,1,1),F(1,1,1,1,1,1,1))
 1000 FORMAT(1H1 / 2X,28H*FORTRAN*              ENTER)
  100 FORMAT(1H0/10X,44H_ JUSTICE _     _ ITEM _          _ COMPUTED,
     *9H RESULT _,13X,17H_ COMPARE VALUE _,15X,14H_ DIFFERENCE _)
  102 FORMAT(1H0,13X,4H*OK*,11X,1H(,I2,1H),15X,E14.7,17X,E14.7,16X,E14.7
     *)
  103 FORMAT(1H0,13X,7H*ERROR*,8X,1H(,I2,1H),15X,E14.7,17X,E14.7,16X,
     *E14.7)
  999 FORMAT(1H0///7X,24H*FORTRAN*           EXIT)
      D(1,2,1,2)=32.6
      D(3,3,3,3)=24.8
      E(1,2,3,1,2)=63.2
      E(3,3,3,3,3)=-46.8
      E(7,7,7,7,7)=-46.8
      F(1,2,1,2,1,2,1)=128.6
      F(2,2,2,2,2,2,2)=-256.0
      J=1
      K=2
      L=3
      M=4
      N=5
      I(5)=-10.5
      I(7)=48.2
      I(12)=128.0
      I(18)=63.7
      C(1)=1.5
      C(3)=3.0
      C(4)=10.0
      C(10)=6.5
      C(16)=4.2
      A(1)=D(J,K,J,K)
      B(1)=32.6
      A(2)=D(K*M-N,K*M-N,K*M-N,K*M-N)
      B(2)=24.8
      A(3)=D(K-J,M-K,K-J,M-K)
      B(3)=32.6
      A(4)=E(J,K,L,J,K)
      B(4)=63.2
      A(5)=E(K*L-L,K*L-L,K*L-L,K*L-L,K*L-L)
      B(5)=-46.8
      A(6)=E(L*M-N,L*M-N,L*M-N,L*M-N,L*M-N)
      A(6)=E(K*L-N,K*L-M,K*L-L,K*L-N,K*L-M)
      B(6)=63.2
      A(7)=F(N-M,M-K,N-M,M-K,N-M,M-K,N-M)
      B(7)=128.6
      A(8)=F(N*J-L,N*J-L,N*J-L,N*J-L,N*J-L,N*J-L,N*J-L)
      B(8)=-256.0
      A(9)=I(INT(K+3.3))
      B(9)=-10.5
      A(10)=I(INT(10.4-L))
      B(10)=48.2
      A(11)=I(INT(L*4.1))
      B(11)=128.0
      A(12)=D(INT(J+0.3),INT(J+1.2),INT(J+0.3),INT(J+1.2))
      B(12)=32.6
      A(13)=I(INT(C(1)*2+C(3)*5))
      B(13)=63.7
      A(14)=C(INT(C(4)*1-C(3)*L))
      B(14)=1.5
      A(15)=C(INT(I(12)/4-K**4))
      B(15)=4.2
      A(16)=I(IABS(-7))
      B(16)=48.2
      A(17)=I(IFIX(ABS(-12.34)))
      B(17)=128.0
      A(18)=C(IFIX(10.4))
      B(18)=6.5
      A(19)=C(INT(SQRT(K*C(4)+J)))
      B(19)=10.0
      A(20)=C(IFIX(SQRT(16.81)))
      B(20)=10.0
      WRITE(6,1000)
      WRITE(6,100)
      DO 10 Y=1,20
      DIF=A(Y)-B(Y)
      IF(B(Y))1,2,1
    1 IF(ABS(DIF)-1.0E-5*ABS(B(Y)))501,502,502
    2 IF(ABS(DIF)-1.0E-5)501,502,502
  501 WRITE(6,102)Y,A(Y),B(Y),DIF
      GO TO 10
  502 WRITE(6,103)Y,A(Y),B(Y),DIF
   10 CONTINUE
      WRITE(6,999)
      STOP
      END
