      INTEGER     A(100,100),B(100,100)
      INTEGER     C(100,100),D(100,100)
      REAL*8      H(100,100),O(100,100)
      REAL        P(100,100),Q(100,100)
      COMPLEX*16  V(100,100),W(100,100)
      COMPLEX     X(100,100),Y(100,100)
      DO 15 I1=1,100
      DO 15 I2=1,100
        A(I2,I1)=1
        B(I2,I1)=A(I2,I1)
        C(I2,I1)=1
        D(I2,I1)=I2
        H(I2,I1)=1.0
        O(I2,I1)=SIN(1.0)
        P(I2,I1)=SIN(REAL(I1))
        Q(I2,I1)=MAX(O(I2,I1),P(I2,I1))
        V(I2,I1)=CMPLX(1)
        W(I2,I1)=V(I2,I1)
        X(I2,I1)=V(I2,I1)
        Y(I2,I1)=CMPLX(I2)
   15 CONTINUE
      DO 10 I2=2,99
      DO 10 I1=2,99
        D(I1,I2)=A(I1-1,I2)+C(I1,I2)
        A(I1,I2)=B(I1,I2)+C(I1,I2)
   10 CONTINUE
      DO 20 I2=10,99
      DO 20 I1=10,99
        D(I1,I2)=A(I1,I2-1)+C(I1,I2)
        A(I1,I2)=B(I1,I2)+C(I1,I2)
   20 CONTINUE
      DO 30 I2=10,90
      DO 30 I1=10,90
        Q(I1,I2)=H(I1-2,I2)+P(I1,I2)
        H(I1,I2)=O(I1,I2)+P(I1,I2)
   30 CONTINUE
      DO 40 I2=10,90
      DO 40 I1=10,90
        Q(I1,I2)=H(I1,I2-2)+P(I1,I2)
        H(I1,I2)=O(I1,I2)+P(I1,I2)
   40 CONTINUE
      DO 50 I2=10,90
      DO 50 I1=10,90
        Y(I1,I2)=V(I1-5,I2)+W(I1,I2)
        V(I1,I2)=W(I1,I2)+X(I1,I2)
   50 CONTINUE
      DO 60 I2=10,90
      DO 60 I1=10,90
        Y(I1,I2)=V(I1,I2-5)+W(I1,I2)
        V(I1,I2)=W(I1,I2)+X(I1,I2)
   60 CONTINUE
      IF (SUM(A).NE.19604) PRINT *,'NG1'
      IF (SUM(B).NE.10000) PRINT *,'NG2'
      IF (SUM(C).NE.10000) PRINT *,'NG3'
      IF (SUM(D).NE.48712) PRINT *,'NG4'
      IF (ABS(SUM(H)-8945.078427516855D0)>1.0E-3) PRINT *,'NG5'
      IF (ABS(SUM(O)-8414.709568023682D0)>1.0E-3) PRINT *,'NG6'

      IF (SUM(V).NE.(16561.00000000000,0.000000000000000))
     1 PRINT *,'NG9'
      IF (SUM(W).NE.(10000.00000000000,0.000000000000000))
     1 PRINT *,'NG10'
      IF (SUM(X).NE.(10000.0000,0.00000000)) PRINT *,'NG11'
      IF (SUM(Y).NE.(196228.000,0.00000000)) PRINT *,'NG12'
      PRINT *,'*** OK ***'
      END
