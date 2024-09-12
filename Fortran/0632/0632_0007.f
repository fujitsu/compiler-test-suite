      INTEGER     A(100,10,10),B(100,10,10)
      INTEGER     C(100,10,10),D(100,10,10)
      REAL*8      H(100,10,10),O(100,10,10)
      REAL*8      P(100,10,10),Q(100,10,10)
      COMPLEX     V(100,10,10),W(100,10,10)
      COMPLEX     X(100,10,10),Y(100,10,10)
      DO 15 I1=1,10
      DO 15 I2=1,10
      DO 15 I3=1,100
        A(I3,I2,I1)=1
        B(I3,I2,I1)=I1
        C(I3,I2,I1)=1
        D(I3,I2,I1)=I2
        H(I3,I2,I1)=1.0
        O(I3,I2,I1)=1.0
        P(I3,I2,I1)=1.0
        Q(I3,I2,I1)=SIN(REAL(I1+I2))
        V(I3,I2,I1)=CMPLX(1)
        W(I3,I2,I1)=CMPLX(I2)
        X(I3,I2,I1)=CMPLX(I1)
        Y(I3,I2,I1)=CMPLX(I2)
   15 CONTINUE
      DO 10 I3=1,10
      DO 10 I2=1,10
      DO 10 I1=1,99
        A(I1,I2,I3)=B(I1,I2,I3)+C(I1,I2,I3)
        D(I1,I2,I3)=A(I1+1,I2,I3)+C(I1,I2,I3)
   10 CONTINUE
      DO 20 I3=1,10
      DO 20 I2=1,8
      DO 20 I1=1,99
        A(I1,I2,I3)=B(I1,I2,I3)+C(I1,I2,I3)
        D(I1,I2,I3)=A(I1,I2+2,I3)+C(I1,I2,I3)
   20 CONTINUE
      DO 30 I3=1,7
      DO 30 I2=1,10
      DO 30 I1=1,90
        H(I1,I2,I3)=O(I1,I2,I3)+P(I1,I2,I3)
        Q(I1,I2,I3)=H(I1,I2,I3+3)+P(I1,I2,I3)
   30 CONTINUE
      DO 40 I3=1,10
      DO 40 I2=1,10
      DO 40 I1=1,90
        H(I1,I2,I3)=O(I1,I2,I3)+P(I1,I2,I3)
        Q(I1,I2,I3)=H(I1+4,I2,I3)+P(I1,I2,I3)
   40 CONTINUE
      DO 50 I3=1,10
      DO 50 I2=1,9
      DO 50 I1=1,90
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2+1,I3)+W(I1,I2,I3)
   50 CONTINUE
      DO 60 I3=1,7
      DO 60 I2=1,10
      DO 60 I1=1,90
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2,I3)+W(I1,I2,I3+2)
   60 CONTINUE
      IF (SUM(A).NE.64450) PRINT *,'NG1'
      IF (SUM(B).NE.55000) PRINT *,'NG2'
      IF (SUM(C).NE.10000) PRINT *,'NG3'
      IF (SUM(D).NE.63910) PRINT *,'NG4'
      IF (ABS(SUM(H)-19000.00000000000D0)>1.0E-6) PRINT *,'NG5'
      IF (ABS(SUM(O)-10000.00000000000)>1.0E-6) PRINT *,'NG6'
      IF (SUM(P).NE.10000.00000000000D0) PRINT *,'NG7'

      IF (SUM(V).NE.(95140.0000,0.00000000)) PRINT *,'NG9'
      IF (SUM(W).NE.(55000.0000,0.00000000)) PRINT *,'NG10'
      IF (SUM(X).NE.(55000.0000,0.00000000)) PRINT *,'NG11'
      IF (SUM(Y).NE.(117280.000,0.00000000)) PRINT *,'NG12'
      PRINT *,'*** OK ***'
      END
