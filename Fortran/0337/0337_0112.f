      DIMENSION AD( 50, 50),BD(500),CD(10,10,10),A(100),B(100)
      DOUBLE PRECISION BD,A,B,C,D,E,DIF,AD,CD
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( I2,2H )7X,D24.17,7X,D24.17,7X,
     *D24.17)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( I2,2H )7X,D24.17,7X,D24.17,7X,
     *D24.17)
      C  =0.0D0
      D  =0.0D0
      E  =0.0D0
      N  =2
      M  =5
      NN =22
      DO 10 I=1,50
      D=0.0D0
      C=C+0.1D1
      DO 10 J=1,50
      D=D+0.1D1
      AD(I,J)=C*D
   10 CONTINUE
      DO 11 I=1,500
      E=E+0.1D1
      BD(I)=E
   11 CONTINUE
      C=0.0D0
      D=0.0D0
      E=0.0D0
      DO 12 I=1,10
      C=C+0.1D1
      D=0.0D0
      DO 12 J=1,10
      D=D+0.1D1
      E=0.0D0
      DO 12 K=1,10
      E=E+0.1D1
      CD(I,J,K)=C*D*E
   12 CONTINUE
      MM  =55
      CD(7,8,9)=-1.234567891011
      AD(30,32)=-78.91011121314D50
      A(1)=BD(500)
      B(1)=0.5D3
      A(2)=BD(N)
      B(2)=0.2D1
      A(3)=BD(N+30)
      B(3)=0.32D2
      A(4)=BD(NN-3)
      B(4)=0.19D2
      A(5)=BD(3*MM)
      B(5)=0.165D3
      A(6)=BD(3*MM+100)
      B(6)=0.265D3
      A(7)=BD(10*MM-100)
      B(7)=0.45D3
      A(8)=AD(1,1)
      B(8)=0.1D1
      A(9)=AD(M,M)
      B(9)=0.25D2
      A(10)=AD(M+6,M+6)
      B(10)=0.121D3
      A(11)=AD(MM-8,MM-8)
      B(11)=0.2209D4
      A(12)=AD(20*N,20*N)
      B(12)=1.6D3
      A(13)=AD(4*M+10,4*M+10)
      B(13)=0.9D3
      A(14)=AD(2*NN-4,2*NN-4)
      B(14)=0.16D4
      A(15)=CD(1,1,1)
      B(15)=0.1D1
      A(16)=CD(N,N,N)
      B(16)=0.8D1
      A(17)=CD(N+1,N+1,N+1)
      B(17)=0.27D2
      A(18)=CD(M-1,M-1,M-1)
      B(18)=0.64D2
      A(19)=CD(3*N,3*N,3*N)
      B(19)=0.216D3
      A(20)=CD(3*N+4,3*N+4,3*N+4)
      B(20)=0.1D4
      A(21)=CD(2*M-1,2*M-1,2*M-1)
      B(21)=0.729D3
      A(22)=AD(1,NN)
      B(22)=0.22D2
      A(23)=AD(NN,N+2)
      B(23)=0.88D2
      A(24)=AD(NN+3,MM-5)
      B(24)=0.125D4
      A(25)=AD(MM-5, 8*M)
      B(25)=0.2D4
      A(26)=AD(10*M,2*NN+ 6)
      B(26)=0.25D4
      A(27)=AD(5*M+5,3*NN-16)
      B(27)=0.15D4
      A(28)=CD(1,N,N+1)
      B(28)=0.6D1
      A(29)=CD(N,N+1,M-1)
      B(29)=0.24D2
      A(30)=CD(N+1,M-0,3*N)
      B(30)=0.9D2
      A(31)=CD(M-0,3*N,3*N+1)
      B(31)=0.21D3
      A(32)=CD(3*N,3*N+1,2*M-2)
      B(32)=0.336D3
      A(33)=CD(3*N+1,2*M-2,2*M-1)
      B(33)=-1.234567891011
      A(34)=AD(5*NN-80,1*NN+10)
      B(34)=-78.91011121314D50
      I=1
      N=29
  699 DO 20 I=I,N
      DIF=A(I)-B(I)
      IF(B(I))1,2,1
    1 IF(DABS(DIF)-1.0D-15*DABS(B(I)))700,700,701
    2 IF(DABS(DIF)-1.0D-15)700,700,701
  700 CONTINUE
C
      GO TO 20
  701 WRITE(6,102)I,A(I),B(I),DIF
   20 CONTINUE
      IF(N-29)3,4,3
    4 CONTINUE
C
      I=30
      N=34
      GO TO 699
    3 CONTINUE
      STOP
      END
