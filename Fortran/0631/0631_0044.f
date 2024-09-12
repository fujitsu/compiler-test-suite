      INTEGER     A(100,100),B(100,100)
      INTEGER     C(100,100),D(100,100)
      REAL*8      H(100,100),O(100,100)
      REAL*8      P(100,100),Q(100,100)
      COMPLEX     V(100,100),W(100,100)
      COMPLEX     X(100,100),Y(100,100)
      INTEGER     HH(100,100),OO(100,100)
      INTEGER     PP(100,100),QQ(100,100)
      INTEGER     VV(100,100),WW(100,100)
      INTEGER     XX(100,100),YY(100,100)
      DO 15 I1=1,100
      DO 15 I2=1,100
        A(I2,I1)=1
        B(I2,I1)=I1
        C(I2,I1)=1
        D(I2,I1)=I2
        H(I2,I1)=1.0
        O(I2,I1)=1.0
        P(I2,I1)=1.0
        Q(I2,I1)=SIN(REAL(I1+I2))
        V(I2,I1)=CMPLX(1)
        W(I2,I1)=CMPLX(I2)
        X(I2,I1)=CMPLX(I1)
        Y(I2,I1)=CMPLX(I2)
   15 CONTINUE
      DO 10 I2=1,99
      DO 10 I1=1,99
        A(I1,I2)=B(I1,I2)+C(I1,I2)
        D(I1,I2)=A(I1+1,I2)+C(I1,I2)
   10 CONTINUE
      DO 20 I2=1,99
      DO 20 I1=1,99
        A(I1,I2)=B(I1,I2)+C(I1,I2)
        D(I1,I2)=A(I1,I2+1)+C(I1,I2)
   20 CONTINUE
      DO 30 I2=1,90
      DO 30 I1=1,90
        H(I1,I2)=O(I1,I2)+P(I1,I2)
        Q(I1,I2)=H(I1+2,I2)+P(I1,I2)
   30 CONTINUE
      DO 40 I2=1,90
      DO 40 I1=1,90
        H(I1,I2)=O(I1,I2)+P(I1,I2)
        Q(I1,I2)=H(I1,I2+2)+P(I1,I2)
   40 CONTINUE
      DO 50 I2=1,90
      DO 50 I1=1,90
        V(I1,I2)=W(I1,I2)+X(I1,I2)
        Y(I1,I2)=V(I1+5,I2)+W(I1,I2)
   50 CONTINUE
      DO 60 I2=1,90
      DO 60 I1=1,90
        V(I1,I2)=W(I1,I2)+X(I1,I2)
        Y(I1,I2)=V(I1,I2+5)+W(I1,I2)
   60 CONTINUE
      DO 70 I2=1,100
      DO 70 I1=1,100
        HH(I1,I2)=H(I1,I2)
        OO(I1,I2)=O(I1,I2)
        PP(I1,I2)=P(I1,I2)
        QQ(I1,I2)=Q(I1,I2)
        VV(I1,I2)=V(I1,I2)
        WW(I1,I2)=W(I1,I2)
        XX(I1,I2)=X(I1,I2)
        YY(I1,I2)=Y(I1,I2)
   70 CONTINUE
      WRITE(6,*)((A(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((B(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((C(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((D(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((HH(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((OO(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((PP(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((QQ(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((VV(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((WW(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((XX(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((YY(I1,I2),I1=20,100,20),I2=20,100,20)
      END
