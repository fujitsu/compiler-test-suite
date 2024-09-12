      COMMON K1,K2,K3,K4,D,E,F,G,H1,H2,A(10),B(10),C(10)
      COMMON /ANS/ X1,X2,X3,X4,X5,X6,X7,X8,X9,X0,
     *             Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y0
      DIMENSION ID(40),IDM(20)
      EQUIVALENCE (K1,ID(1)),(X1,IDM(1))

      CALL INIT

      DO 10 I=1,2
      R1=A(I)*D
      S1=A(I)*D
      R2=SIN(A(I)*D)
      S2=COS(A(I)*D)
      R3=SIN(E)
      S3=COS(E)
      X1=R1+R2+R3
      Y1=S1+R2+R3+S2+S3
      X6=R1
      X7=R2
      X8=R3
      Y6=S1
      Y7=S2
      Y8=S3
   10 CONTINUE

      DO 20 I=1,2
      R1=A(I)*E
      H1=I*4
      S1=A(I)*E
      R2=SIN(A(I)*E)
      H2=I*4
      S2=COS(A(I)*E)
      X2=R1+R2+S2
      Y2=S1+R2+S2
   20 CONTINUE

      DO 30 I=1,2
      X3=F*G
      Y3=F*G
      R1=E*F
      X4=E*F
      S1=E*F
      Y4=E*F
      X5=SIN(E*G)**2+COS(E*G)**2+R1-S1
      Y5=SIN(G*E)**2+COS(G*E)**2+S1-R1
   30 CONTINUE

      CALL OUTPUT
      STOP
      END

      SUBROUTINE INIT
      COMMON K1,K2,K3,K4,D,E,F,G,H1,H2,A(10),B(10),C(10)
      COMMON /ANS/ X1,X2,X3,X4,X5,X6,X7,X8,X9,X0,
     *             Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y0
      DIMENSION ID(4),RD(40),X(10),Y(10)
      EQUIVALENCE (K1,ID(1),RD(1)),(X1,X(1)),(Y1,Y(1))
      DO 10 I=1,4
   10 ID(I)=I
      DO 20 I=5,40
   20 RD(I)=I
      DO 30 I=1,10
      X(I)=0
   30 Y(I)=0
      RETURN
      ENTRY OUTPUT
      WRITE(6,1000) X,Y
      RETURN
 1000 FORMAT(5X,5E20.7)
      END
