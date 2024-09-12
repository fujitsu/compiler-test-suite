      INTEGER     A(100,100)
      REAL*8      H(100,100)
      COMPLEX*16  V(100,100)
      REAL        CONDR
      COMPLEX     CONDC
      CONDR=1.0
      CONDC=(0.0,1.0)
      DO 15 I1=1,100
      DO 15 I2=1,100
        A(I2,I1)=1
        H(I2,I1)=1.0
        V(I2,I1)=CMPLX(1)
   15 CONTINUE
      CALL SUB1(A,H,V,CONDR,CONDC)
      END
      SUBROUTINE SUB1(A,H,V,CONDR,CONDC)
      INTEGER     A(100,100),B(100,100)
      INTEGER     C(100,100),D(100,100)
      REAL*8      H(100,100),O(100,100)
      INTEGER     HH(100,100),OO(100,100)
      REAL        P(100,100),Q(100,100)
      COMPLEX*16  V(100,100),W(100,100)
      COMPLEX     VV(100,100),WW(100,100)
      COMPLEX     X(100,100),Y(100,100)
      REAL        CONDR
      COMPLEX     CONDC
      DO 15 I1=1,100
      DO 15 I2=1,100
        B(I2,I1)=A(I2,I1)
        C(I2,I1)=1
        D(I2,I1)=I2
        O(I2,I1)=SIN(1.0)
        P(I2,I1)=SIN(REAL(I1))
        Q(I2,I1)=MAX(O(I2,I1),P(I2,I1))
        W(I2,I1)=V(I2,I1)
        X(I2,I1)=V(I2,I1)
        Y(I2,I1)=CMPLX(I2)
   15 CONTINUE
      DO 10 I2=2,99
      DO 10 I1=2,99
        IF(CONDR.GT.1.0)THEN
        D(I1,I2)=ABS(A(I1-1,I2))+ABS(C(I1,I2))
        ELSE
        A(I1,I2)=ABS(B(I1,I2))+ABS(C(I1,I2))
        ENDIF
        D(I1,I2)=ABS(A(I1-1,I2))+ABS(C(I1,I2))
        A(I1,I2)=B(I1,I2)+C(I1,I2)
   10 CONTINUE
      DO 20 I2=10,99
      DO 20 I1=10,99
        IF(CONDC.EQ.(0.0,0.0))THEN
        D(I1,I2)=A(I1,I2-1)+C(I1,I2)
        A(I1,I2)=B(I1,I2)+C(I1,I2)
        ELSE
        D(I1,I2)=A(I1,I2-1)+C(I1,I2)
        A(I1,I2)=B(I1,I2)+C(I1,I2)
        ENDIF
   20 CONTINUE
      DO 30 I2=10,90
      DO 30 I1=10,90
        IF(A(I1,I2).GT.5.OR.Q(I1,I2).LT.10.0)THEN
        Q(I1,I2)=SIN(H(I1-2,I2))+COS(P(I1,I2))
        H(I1,I2)=COS(O(I1,I2))+SIN(P(I1,I2))
        Q(I1,I2)=SIN(H(I1-2,I2)+P(I1,I2))
        ELSE
        H(I1,I2)=SIN(O(I1,I2)+P(I1,I2))
        Q(I1,I2)=COS(H(I1-2,I2))+SIN(P(I1,I2))
        ENDIF
        H(I1,I2)=SIN(O(I1,I2))+COS(P(I1,I2))
   30 CONTINUE
      DO 40 I2=10,90
      DO 40 I1=10,90
        IF(I1.GT.5.OR.Q(I1,I2).LT.10.0.AND.CONDR.EQ.1.0)THEN
        Q(I1,I2)=EXP(H(I1,I2-2))+P(I1,I2)
        H(I1,I2)=SQRT(O(I1,I2))+P(I1,I2)
        ELSE
        Q(I1,I2)=COS(H(I1,I2-2))+P(I1,I2)
        H(I1,I2)=COS(O(I1,I2))+P(I1,I2)
        ENDIF
        IF(I1.GT.5.OR.Q(I1,I2).LT.10.0.AND.CONDR.EQ.1.0)THEN
        IF(I2.GT.5.OR.P(I1,I2).LT.10.0.AND.CONDR.EQ.1.0)THEN
        IF(I1.GT.5.OR.O(I1,I2).LT.10.0.AND.CONDR.EQ.1.0)THEN
        IF(I2.GT.5.OR.H(I1,I2).LT.10.0.AND.CONDR.EQ.1.0)THEN
        IF(I1.GT.5.OR.Q(I1,I2).LT.30.0.AND.CONDR.EQ.1.0)THEN
        IF(I2.GT.5.OR.Q(I1,I2).LT.40.0.AND.CONDR.EQ.1.0)THEN
        Q(I1,I2)=COS(H(I1,I2-2))+P(I1,I2)
        H(I1,I2)=O(I1,I2)+SIN(P(I1,I2))
        ELSE
        Q(I1,I2)=LOG(H(I1,I2-2))+P(I1,I2)
        H(I1,I2)=LOG(O(I1,I2))+P(I1,I2)
        ENDIF
        ENDIF
        ENDIF
        ENDIF
        ENDIF
        ENDIF
   40 CONTINUE
      DO 50 I2=10,90
      DO 50 I1=10,90
        IF(I2.GT.5.OR.Q(I1,I2).LT.40.0.AND.CONDR.EQ.1.0)THEN
        Y(I1,I2)=V(I1-5,I2)+W(I1,I2)
        V(I1,I2)=W(I1,I2)+X(I1,I2)
        ENDIF
   50 CONTINUE
      DO 60 I2=10,90
      DO 60 I1=10,90
        Y(I1,I2)=V(I1,I2-5)+W(I1,I2)
        V(I1,I2)=W(I1,I2)+X(I1,I2)
        IF(I2.GT.5.OR.Q(I1,I2).LT.40.0.AND.CONDR.EQ.1.0)THEN
        IF(ABS(CONDC).EQ.1.0)THEN
        IF(I1.GT.5.OR.Q(I2,I1).LT.40.0.AND.CONDR.EQ.1.0)THEN
        Y(I1,I2)=CONJG(V(I1,I2-5))+W(I1,I2)
        V(I1,I2)=CONJG(W(I1,I2))+X(I1,I2)
        ELSE
        Y(I1,I2)=V(I1,I2-5)+W(I1,I2)
        V(I1,I2)=CONJG(CONJG(W(I1,I2))+X(I1,I2))
        ENDIF
        Y(I1,I2)=V(I1,I2-5)+SQRT(W(I1,I2))
        V(I1,I2)=W(I1,I2)+X(I1,I2)
        ELSE
        Y(I1,I2)=SQRT(LOG(EXP(V(I1,I2-5))))+W(I1,I2)
        V(I1,I2)=LOG(W(I1,I2))+X(I1,I2)
        ENDIF
        Y(I1,I2)=V(I1,I2-5)+W(I1,I2)
        V(I1,I2)=W(I1,I2)+X(I1,I2)
        ENDIF
   60 CONTINUE
      DO 70 I2=1,100
      DO 70 I1=1,100
        HH(I1,I2)=H(I2,I1)
        OO(I1,I2)=O(I2,I1)
        VV(I1,I2)=V(I2,I1)
        WW(I1,I2)=W(I2,I1)
   70 CONTINUE
      WRITE(6,*)((A(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((B(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((C(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((D(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((HH(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((OO(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((P(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((Q(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((VV(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((WW(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((X(I1,I2),I1=20,100,20),I2=20,100,20)
      WRITE(6,*)((Y(I1,I2),I1=20,100,20),I2=20,100,20)
      END
