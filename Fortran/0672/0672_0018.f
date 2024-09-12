      COMMON K1,K2,K3,K4,K5,B1,B2,B3,B4,B5
      COMMON /ANS/ X1,X2,X3,X4,X5,X6,X7,X8,X9,X0,
     *             Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y0
      DIMENSION ID1(10),ID2(20)
      EQUIVALENCE (K1,ID1(1)),(X1,ID2(1))

      CALL INIT

      R1=B1
      R2=B2
      R3=B3
      R4=B4
      R5=B5

      DO 10 I=1,2
      X1=R1*R2
      T1=X1*R3
      T2=T1*R4
      Y1=R1*R2
      S1=Y1*R3
      S2=S1*R4
      X2=T2
      Y2=S2
   10 CONTINUE

      DO 20 I=1,2
      X3=R1/R2
      T1=X3/R3
      T2=R4/T1
      Y3=R1/R2
      S1=Y3/R3
      S2=R4/S1
      X4=T2
      Y4=S2
   20 CONTINUE

      CALL OUTPUT
      STOP
      END

      SUBROUTINE INIT
      COMMON K1,K2,K3,K4,K5,B1,B2,B3,B4,B5
      COMMON /ANS/ X1,X2,X3,X4,X5,X6,X7,X8,X9,X0,
     *             Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y0
      DIMENSION ID1(10),ID2(20)
      DIMENSION RD1(10),RD2(20)
      EQUIVALENCE (K1,ID1(1),RD1(1)),(X1,RD2(1))

      DO 10 I=1,5
   10 ID1(I)=I
      DO 20 I=6,10
   20 RD1(I)=I
      DO 30 I=1,20
   30 RD2(I)=0.
      RETURN
      ENTRY OUTPUT
      WRITE(6,1000) RD2
      RETURN
 1000 FORMAT(5X,5E20.7)
      END
