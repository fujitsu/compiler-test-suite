      PROGRAM MAIN
      PARAMETER (L1=5,L2=5,L3=5,L4=5)
      REAL X(L1,L2),X2(L1,L2),X3(L1,L2)
      REAL A(L1,L2,L3),A2(L1,L2,L3),A3(L1,L2,L3)
      REAL B(L1,L2,L3,L4),B2(L1,L2,L3,L4),B3(L1,L2,L3,L4)
      REAL C(L1,L2,L3,L4),C2(L1,L2,L3,L4),C3(L1,L2,L3,L4)
      REAL D(L1,L2,L3),D2(L1,L2,L3),D3(L1,L2,L3)
      REAL Z(L1),Z2(L1),Z3(L1)

      DO 10 I=1,L1
        Z2(I)=I+I
        Z3(I)=I+3
        DO 10 J=1,L2
          X2(I,J)=(I+J)*4
          X3(I,J)=(I+J)*(I+J)
          DO 10 K=1,L3
            A2(I,J,K)=I+J+K
            A3(I,J,K)=I+K*K
            D2(I,J,K)=I*J-K
            D3(I,J,K)=I*K-J
            DO 10 L=1,L4
              B2(I,J,K,L)=I+J+K+L
              B3(I,J,K,L)=I*J-K*L
              C2(I,J,K,L)=I-J+K-L
              C3(I,J,K,L)=I-J-K*L
10          CONTINUE

      WRITE(6,*) Z3,X2,X3,A2,A3,D2,D3,B2,B3,C2,C3
      STOP
      END
