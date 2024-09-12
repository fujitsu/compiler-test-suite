      PROGRAM MAIN
      REAL*8  A(10),B(10),C(10),D(10),E(10)
      REAL*8  F(10),G(10),H(10),II(10),J(10)
      REAL*8  K(10),L(10),M(10),N(10),O(10)
      REAL*8  P(10),Q(10),R(10),S(10),T(10)
      REAL*8  U(10),V(10),W(10),X(10),Y(10)
      REAL*8  Z(10)
      INTEGER A1(10),B1(10),C1(10),D1(10),E1(10)
      INTEGER F1(10),G1(10),H1(10),I1(10),J1(10)
      INTEGER K1(10),L1(10),M1(10),N1(10),O1(10)
      INTEGER P1(10),Q1(10),R1(10),S1(10),T1(10)
      INTEGER U1(10),V1(10),W1(10),X1(10),Y1(10)
      INTEGER Z1(10)
      DATA NN/10/
      DO 100 I = 1,NN
  100   A(I) = I * I
      DO 110 I = 1,NN
  110   B(I) =  - I * I
      DO 120 I = 1,NN
  120   C(I) = - I * 2 + 3
      DO 130 I = 1,NN
  130   D(I) =  - I * NN
      DO 140 I = 1,NN
  140   E(I) = - I * 9 + 3
      DO 150 I = 1,NN
  150   F(I) =    I * NN+ 3 * I
      DO 160 I = 1,NN
  160   G(I) =  - I * NN* I
      DO 170 I = 1,NN
  170   H(I) = - I * 9 / 3
      DO 180 I = 1,NN
  180   II(I) =  - I * NN+ 3 / I
      DO 190 I = 1,NN
  190   J(I) =  - I *NN * I /10
      DO 200 I = 1,NN
  200   K(I) = - I * 9 / 3 * NN
      DO 210 I = 1,NN
  210   L(I) =  - I * NN- 7 / I
      DO 220 I = 1,NN
  220   M(I) =  - L(I) + K(I)*2 + 0.1
      DO 230 I = 1,NN
  230   N(I) = - K(I)*I + C(I) + 4.4789
      DO 240 I = 1,NN
  240   O(I) =  - I * J(I) * D(I) + 432.678
      DO 250 I = 1,NN
  250   P(I) = - E(I)*I + F(I) + G(I) - A(I) + 453.7889
      DO 260 I = 1,NN
  260   Q(I) =  - A(I) * B(I) / C(I) + D(I) /O(I) + 43.789
      DO 270 I = 1,NN
  270   R(I) =   E(I)*I + F(I) + G(I) - A(I) + 789.21
      DO 280 I = 1,NN
  280   S(I) =    A(I) * B(I) / C(I) + D(I) /O(I) + 3.2
      DO 285 I = 1,NN
  285   T(I) =   E(I)*I + F(I) + G(I) - A(I) / N(I) + A(I) + 389.8392
      DO 290 I = 1,NN
  290   U(I) =    A(I) * T(I) / S(I) + N(I) /M(I) + 32.789
      DO 300 I = 1,NN
  300   V(I) =   P(I)*I + S(I) + C(I) - L(I) / G(I) + H(I) + 890.4321
      DO 310 I = 1,NN
  310   W(I) =    J(I) * K(I) / A(I) + B(I) /C(I) + 999.3
      DO 320 I = 1,NN
  320   X(I) =   A(I)*I + W(I) + V(I) - Q(I) / R(I) + H(I) + 3.213443
      DO 330 I = 1,NN
  330   Y(I) =    J(I) * K(I) / A(I) + H(I) /G(I) + 89.431435
      DO 340 I = 1,NN
  340   Z(I) =    A(I) * F(I) / V(I) + X(I) /Y(I)  + 798.432
      PRINT *,A,B,C,D,E,F,G,H,II,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z
      STOP
      END
