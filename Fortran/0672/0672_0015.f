      COMMON K1,K2,K3,K4,K5,B1,B2,B3,B4,B5,C1,C2,C3,C4,C5,
     *       D1,D2,D3,D4,D5,E1,E2,E3,E4,E5,F1,F2,F3,F4,F5,
     *       A1(10),A2(10),A3(10),A4(10),A5(10)
      COMMON /ANS/ X1,X2,X3,X4,X5,X6,X7,X8,X9,X0,
     *             Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y0,
     *             Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,Z9,Z0,
     *             W1,W2,W3,W4,W5,W6,W7,W8,W9,W0
      DIMENSION ID1(80),ID2(40)
      EQUIVALENCE (K1,ID1(1)),(X1,ID2(1))

      CALL INIT

      R1=C1
      R2=B2
      S1=B3
      S2=B4

      DO 10 I=1,2
      O1=R1*R2
      O2=R1*R2
      T1=O2+S1
      O3=R1+R2
      T2=O3+S1
      O3=S1+S2
      O4=R1+R2
      T3=O4+T2
      X1=O1
      X2=T1
      X3=O3
      X4=O4
      X5=T3
   10 CONTINUE

      DO 20 I=1,2
      X6=R1*R2
      X7=R1*R2
      T1=X7+S1
      X8=R1+R2
      T2=X8+S1
      X8=S1+S2
      X9=R1+R2
      T3=X9+T2
      X7=T1
      X0=T3
   20 CONTINUE

      DO 30 I=1,2
      Y1=R1/R2
      O2=R1/R2
      T1=O2+S1
      Y3=R1-R2
      T2=Y3+S1
      Y3=S1+S2
      O4=R1-R2
      T3=O4+T2
      Y2=T1
      Y4=O4
      Y5=T3
   30 CONTINUE

      DO 40 I=1,2
      O1=R1/R2
      Y7=R1/R2
      T1=Y7+S1
      O3=R1-R2
      T2=O3+S1
      O3=S1+S2
      Y9=R1-R2
      T3=Y9+T2
      Y6=O1
      Y7=T1
      Y8=O3
      Y0=T3
   40 CONTINUE

      DO 50 I=1,2
      O1=C1*R2
      O2=C1*R2
      T1=O2+S1
      O3=C1+R2
      T2=O3+S1
      O3=S1+S2
      O4=C1+R2
      T3=O4+T2
      Z1=O1
      Z2=T1
      Z3=O3
      Z4=O4
      Z5=T3
   50 CONTINUE

      DO 60 I=1,2
      Z6=C1*R2
      Z7=C1*R2
      T1=Z7+S1
      Z8=C1+R2
      T2=Z8+S1
      Z8=S1+S2
      Z9=C1+R2
      T3=Z9+T2
      Z7=T1
      Z0=T3
   60 CONTINUE

      DO 70 I=1,2
      W1=C1/R2
      O2=C1/R2
      T1=O2+S1
      W3=C1-R2
      T2=W3+S1
      W3=S1+S2
      O4=C1-R2
      T3=O4+T2
      W2=T1
      W4=O4
      W5=T3
   70 CONTINUE

      DO 80 I=1,2
      O1=C1/R2
      W7=C1/R2
      T1=W7+S1
      O3=C1-R2
      T2=O3+S1
      O3=S1+S2
      W9=C1-R2
      T3=W9+T2
      W6=O1
      W7=T1
      W8=O3
      W0=T3
   80 CONTINUE

      CALL OUTPUT
      STOP
      END

      SUBROUTINE INIT
      COMMON K1,K2,K3,K4,K5,B1,B2,B3,B4,B5,C1,C2,C3,C4,C5,
     *       D1,D2,D3,D4,D5,E1,E2,E3,E4,E5,F1,F2,F3,F4,F5,
     *       A1(10),A2(10),A3(10),A4(10),A5(10)
      COMMON /ANS/ X1,X2,X3,X4,X5,X6,X7,X8,X9,X0,
     *             Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y0,
     *             Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,Z9,Z0,
     *             W1,W2,W3,W4,W5,W6,W7,W8,W9,W0
      DIMENSION ID1(80),ID2(40),RD1(80),RD2(40)
      EQUIVALENCE (K1,ID1(1),RD1(1)),(X1,ID2(1),RD2(1))

      DO 10 I=1,5
   10 ID1(I)=I
      DO 20 I=6,80
   20 RD1(I)=I
      DO 30 I=1,40,4
      RD2(I)=0.
      RD2(I+1)=0.
      RD2(I+2)=0.
      RD2(I+3)=0.
   30 CONTINUE
      RETURN
      ENTRY OUTPUT
      WRITE(6,1000) RD2
      RETURN
 1000 FORMAT(5X,5E20.7)
      END
