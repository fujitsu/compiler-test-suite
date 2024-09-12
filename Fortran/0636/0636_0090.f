      PARAMETER (N=100)
      REAL A(N),B(N),C(N),D(N),E(N),F(N),G(N)
      DO 10 I=1,N
      A(I)=1.9D0
   10 CONTINUE
      DO 20 I=1,N
      B(I)=0.1D0
   20 CONTINUE
      DO 30 I=1,N
      C(I)=-0.5D0
   30 CONTINUE
      DO 40 I=1,N
      D(I)=8.7D0
   40 CONTINUE
      DO 50 I=1,N
      E(I)=6.3D0
   50 CONTINUE
      DO 100 I=1,N
      F(I)=A(I)**2+B(I)
      G(I)=C(I)-D(I)
  100 CONTINUE
      PRINT *,F,G
      STOP
      END
