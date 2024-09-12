      INTEGER     A(10,8,10)
      REAL*8      H(10,8,10)
      COMPLEX*16  V(10,8,10)
      REAL        CONDR
      COMPLEX     CONDC
      CONDR=1.0
      CONDC=(0.0,1.0)
      DO 15 I1=1,10
      DO 15 I2=1,8
      DO 15 I3=1,10
        A(I3,I2,I1)=I1
        H(I3,I2,I1)=SIN(1.0)
        V(I3,I2,I1)=CMPLX(1.0)*(I1+I2)
   15 CONTINUE
      CALL SUB1(A,H,V,CONDR,CONDC)
      END
      SUBROUTINE SUB1(A,H,V,CONDR,CONDC)
      INTEGER     A(10,8,10),B(10,8,10)
      INTEGER     C(10,8,10),D(10,8,10)
      REAL        O(10,8,10)
      REAL        P(10,8,10),Q(10,8,10)
      REAL*8      H(10,8,10)
      COMPLEX*16  V(10,8,10),W(10,8,10)
      COMPLEX*16  X(10,8,10),Y(10,8,10)
      REAL        CONDR
      COMPLEX     CONDC
      INTEGER     CONDI
      CONDI=1
      I4=0
      DO 15 I1=1,10
      DO 15 I2=1,8
      DO 15 I3=1,10
        B(I3,I2,I1)=I2
        C(I3,I2,I1)=I3
        D(I3,I2,I1)=I1
        O(I3,I2,I1)=I2
        P(I3,I2,I1)=I3
        Q(I3,I2,I1)=I2
        W(I3,I2,I1)=I1
        X(I3,I2,I1)=I2
        Y(I3,I2,I1)=I3
   15 CONTINUE
      DO 10 I3=1,10
      DO 10 I2=2,8
      DO 10 I1=2,10
        IF(I1.LT.5) GOTO 11
        D(I1,I2,I3)=MOD(A(I1-1,I2-1,I3),C(I1,I2,I3))
        A(I1,I2,I3)=MIN(B(I1,I2,I3),C(I1,I2,I3))
        D(I1,I2,I3)=MAX(A(I1-1,I2-1,I3),C(I1,I2,I3))
   11   IF(CONDR*7.0.GT.I3*3.0) GOTO 12
        D(I1,I2,I3)=MIN(A(I1-1,I2-1,I3),C(I1,I2,I3))
        A(I1,I2,I3)=MAX(ABS(B(I1,I2,I3)),ABS(C(I1,I2,I3)))
        D(I1,I2,I3)=MAX(A(I1-1,I2-1,I3),C(I1,I2,I3))
   12   IF(I1-CONDI)13,14,16
   13   D(I1,I2,I3)=A(I1-1,I2-1,I3)+C(I1,I2,I3)
   14   A(I1,I2,I3)=B(I1,I2,I3)+C(I1,I2,I3)
   16   D(I1,I2,I3)=A(I1-1,I2-1,I3)+C(I1,I2,I3)
        IF(CONDI-I1)17,18,19
   17   D(I1,I2,I3)=A(I1-1,I2-1,I3)+C(I1,I2,I3)
        A(I1,I2,I3)=B(I1,I2,I3)+C(I1,I2,I3)
        D(I1,I2,I3)=A(I1-1,I2-1,I3)+C(I1,I2,I3)
   18   D(I1,I2,I3)=MAX(A(I1-1,I2-1,I3),C(I1,I2,I3))
        A(I1,I2,I3)=MAX(B(I1,I2,I3),C(I1,I2,I3))
   19   D(I1,I2,I3)=MAX(A(I1-1,I2-1,I3),C(I1,I2,I3))
        D(I1,I2,I3)=MAX(A(I1-1,I2-1,I3),C(I1,I2,I3))
        A(I1,I2,I3)=MAX(B(I1,I2,I3),C(I1,I2,I3))
        D(I1,I2,I3)=MAX(A(I1-1,I2-1,I3),C(I1,I2,I3))
   10 CONTINUE
      DO 20 I3=2,10
      DO 20 I2=1,8
      DO 20 I1=2,10
        IF(H(I1,I2,I3).GT.P(I1-1,I2,I3-1)) THEN
        D(I1,I2,I3)=A(I1-1,I2,I3-1)+C(I1,I2,I3)
        A(I1,I2,I3)=B(I1,I2,I3)+C(I1,I2,I3)
        D(I1,I2,I3)=A(I1-1,I2,I3-1)+C(I1,I2,I3)
        IF(I2)22,23,24
   22   D(I1,I2,I3)=A(I1-1,I2,I3-1)+C(I1,I2,I3)
   23   A(I1,I2,I3)=B(I1,I2,I3)+C(I1,I2,I3)
   24   D(I1,I2,I3)=A(I1-1,I2,I3-1)+C(I1,I2,I3)
        ELSE
        IF(H(I1,I2,I3).GT.P(I1-1,I2,I3-1)) GOTO 21
        IF(H(I1,I2,I3).GT.REAL(I4-I3)    ) GOTO 21
        IF(H(I1,I2,I3).GT.Q(I1-1,I2,I3-1)) GOTO 21
        D(I1,I2,I3)=A(I1-1,I2,I3-1)+C(I1,I2,I3)
        IF(CONDR      .GT.Q(I1-1,I2,I3-1)) GOTO 21
        A(I1,I2,I3)=B(I1,I2,I3)+C(I1,I2,I3)
        IF(H(I1-1,I2,I3).GT.P(I1-1,I2,I3-1)) GOTO 21
        D(I1,I2,I3)=A(I1-1,I2,I3-1)+C(I1,I2,I3)
   21   D(I1,I2,I3)=A(I1-1,I2,I3-1)+C(I1,I2,I3)
        ENDIF
   20 CONTINUE
      DO 30 I3=3,10
      DO 30 I2=3,8
      DO 30 I1=3,10
        IF(IMAG(CONDC).GT.REAL(I3))THEN
        Q(I1,I2,I3)=SQRT(H(I1,I2-2,I3-2))+LOG(ABS(P(I1,I2,I3))+1)
        ELSE
        H(I1,I2,I3)=EXP(O(I1,I2,I3))+P(I1,I2,I3)
        ENDIF
        Q(I1,I2,I3)=LOG(EXP(H(I1,I2-1,I3-2)))+P(I1,I2,I3)
        IF(IMAG(CONDC).GT.2.0)GOTO 31
        Q(I1,I2,I3)=LOG(EXP(H(I1,I2-2,I3-2)))+P(I1,I2,I3)
        H(I1,I2,I3)=LOG(EXP(O(I1,I2,I3)))+P(I1,I2,I3)
        Q(I1,I2,I3)=LOG(EXP(H(I1,I2-1,I3-2)))+P(I1,I2,I3)
        Q(I1,I2,I3)=LOG(EXP(H(I1,I2-2,I3-2)))+P(I1,I2,I3)
   31   H(I1,I2,I3)=LOG(EXP(O(I1,I2,I3)))+P(I1,I2,I3)
        IF(IMAG(CONDC).GT.2.0) THEN
        Q(I1,I2,I3)=MAX(SQRT(H(I1,I2-1,I3-2)),P(I1,I2,I3))
        Q(I1,I2,I3)=SQRT(H(I1,I2-2,I3-2))+P(I1,I2,I3)
        H(I1,I2,I3)=SIN(O(I1,I2,I3))+P(I1,I2,I3)
        Q(I1,I2,I3)=SIN(H(I1,I2-1,I3-2)+P(I1,I2,I3))
        ELSE
        Q(I1,I2,I3)=SIN(H(I1,I2-2,I3-2)+P(I1,I2,I3))
        H(I1,I2,I3)=SIN(O(I1,I2,I3))+P(I1,I2,I3)
        Q(I1,I2,I3)=COS(H(I1,I2-1,I3-2))+P(I1,I2,I3)
        ENDIF
        Q(I1,I2,I3)=H(I1,I2-2,I3-2)+SIN(P(I1,I2,I3))
        H(I1,I2,I3)=SIN(SIN(O(I1,I2,I3))+COS(P(I1,I2,I3)))
        Q(I1,I2,I3)=SIN(H(I1,I2-1,I3-2))+P(I1,I2,I3)
   30 CONTINUE
      DO 40 I3=1,10
      DO 40 I2=5,8
      DO 40 I1=4,10
        IF(CONDR*7.0.GT.I3*3.0) THEN
        Q(I1,I2,I3)=H(I1-3,I2-4,I3)+P(I1,I2,I3)
        H(I1,I2,I3)=O(I1,I2,I3)+P(I1,I2,I3)
        Q(I1,I2,I3)=H(I1,I2-3,I3)+P(I1,I2,I3)
        ELSE
        Q(I1,I2,I3)=H(I1-3,I2-4,I3)+P(I1,I2,I3)
        H(I1,I2,I3)=O(I1,I2,I3)+P(I1,I2,I3)
        Q(I1,I2,I3)=H(I1,I2-3,I3)+P(I1,I2,I3)
        ENDIF
        IF(I3.EQ.1.OR.A(I1,2,2).EQ.3.OR.CONDR.GT.REAL(I3)) GOTO 41
        IF(CONDI-I1+I2)43,44,45
   43   Q(I1,I2,I3)=H(I1-3,I2-4,I3)+P(I1,I2,I3)
   44   H(I1,I2,I3)=O(I1,I2,I3)+P(I1,I2,I3)
   45   Q(I1,I2,I3)=H(I1,I2-3,I3)+P(I1,I2,I3)
   41   Q(I1,I2,I3)=H(I1-3,I2-4,I3)+P(I1,I2,I3)
        H(I1,I2,I3)=O(I1,I2,I3)+P(I1,I2,I3)
        Q(I1,I2,I3)=H(I1,I2-3,I3)+P(I1,I2,I3)
        IF(I3.EQ.1.OR.A(I1,2,2).EQ.3.OR.CONDR.GT.REAL(I3)) GOTO 42
        Q(I1,I2,I3)=H(I1-3,I2-4,I3)+P(I1,I2,I3)
        IF(CONDI-I1+I2)46,47,48
   46   H(I1,I2,I3)=O(I1,I2,I3)+P(I1,I2,I3)
        Q(I1,I2,I3)=H(I1,I2-3,I3)+P(I1,I2,I3)
   42   Q(I1,I2,I3)=H(I1-3,I2-4,I3)+P(I1,I2,I3)
   47   Q(I1,I2,I3)=H(I1-3,I2-4,I3)+P(I1,I2,I3)
        H(I1,I2,I3)=O(I1,I2,I3)+P(I1,I2,I3)
   48   Q(I1,I2,I3)=H(I1,I2-3,I3)+P(I1,I2,I3)
   40 CONTINUE
      DO 50 I3=3,10
      DO 50 I2=3,8
      DO 50 I1=3,10
        IF(H(I1,I2,I3).GT.P(I1-1,I2,I3-1)) THEN
        IF(H(I1,I2,I1).GT.P(I1-1,I2,I1-1)) THEN
        Y(I1,I2,I3)=SQRT(V(I1-2,I2,I3-2))+W(I1,I2,I3)
        V(I1,I2,I3)=SQRT(W(I1,I2,I3)+X(I1,I2,I3))
        Y(I1,I2,I3)=SQRT(V(I1-2,I2,I3-1))+W(I1,I2,I3)
        ELSE
        IF(A(I3,I2,I1).GT.1.AND.B(I1,I2,I3).LT.10)GOTO 52
        Y(I1,I2,I3)=SIN(V(I1-2,I2,I3-2))+W(I1,I2,I3)
        V(I1,I2,I3)=SIN(W(I1,I2,I3))+X(I1,I2,I3)
        Y(I1,I2,I3)=COS(V(I1-2,I2,I3-1))+W(I1,I2,I3)
   52   Y(I1,I2,I3)=COS(V(I1-2,I2,I3-2))+W(I1,I2,I3)
        ENDIF
        V(I1,I2,I3)=COS(W(I1,I2,I3))+X(I1,I2,I3)
        Y(I1,I2,I3)=COS(V(I1-2,I2,I3-1)+W(I1,I2,I3))
        Y(I1,I2,I3)=COS(V(I1-2,I2,I3-2))+W(I1,I2,I3)
        V(I1,I2,I3)=COS(W(I1,I2,I3))+X(I1,I2,I3)
        ELSE
        Y(I1,I2,I3)=CONJG(V(I1-2,I2,I3-1))+W(I1,I2,I3)
        Y(I1,I2,I3)=CONJG(V(I1-2,I2,I3-2)+W(I1,I2,I3))
        V(I1,I2,I3)=CONJG(W(I1,I2,I3))+X(I1,I2,I3)
        Y(I1,I2,I3)=SIN(V(I1-2,I2,I3-1))+W(I1,I2,I3)
        Y(I1,I2,I3)=COS(V(I1-2,I2,I3-2))+W(I1,I2,I3)
        ENDIF
   50 CONTINUE
      DO 60 I3=1,10
      DO 60 I2=2,8
      DO 60 I1=2,10
        IF(A(I3,I2,I1).GT.1.AND.B(I1,I2,I3).LT.10)GOTO 62
        IF(CONDI-I1+I2)63,64,65
   63   Y(I1,I2,I3)=V(I1-1,I2,I3)+W(I1,I2,I3)
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2-1,I3)+W(I1,I2,I3)
   64   Y(I1,I2,I3)=V(I1-1,I2,I3)+W(I1,I2,I3)
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2-1,I3)+W(I1,I2,I3)
   65   Y(I1,I2,I3)=V(I1-1,I2,I3)+W(I1,I2,I3)
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2-1,I3)+W(I1,I2,I3)
        Y(I1,I2,I3)=V(I1-1,I2,I3)+W(I1,I2,I3)
        IF(A(I3,I2,I1).GT.1.AND.B(I1,I2,I3).LT.10)THEN
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        ELSE
        Y(I1,I2,I3)=V(I1,I2-1,I3)+W(I1,I2,I3)
        Y(I1,I2,I3)=V(I1-1,I2,I3)+W(I1,I2,I3)
        V(I1,I2,I3)=W(I1,I2,I3)+X(I1,I2,I3)
        Y(I1,I2,I3)=V(I1,I2-1,I3)+W(I1,I2,I3)
        ENDIF
   62   Y(I1,I2,I3)=V(I1,I2-1,I3)+W(I1,I2,I3)
   60 CONTINUE
      WRITE(6,*)((((A(I1,I2,I3),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((B(I1,I2,I3),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((C(I1,I2,I3),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((D(I1,I2,I3),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((H(I1,I2,I3),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((O(I1,I2,I3),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((P(I1,I2,I3),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((Q(I1,I2,I3),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((V(I1,I2,I3),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((W(I1,I2,I3),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((X(I1,I2,I3),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      WRITE(6,*)((((Y(I1,I2,I3),I1=1,10,3)
     *                                ,I2=1,8,3 )
     *                                ,I3=1,8,3 )
     *                                ,I4=1,8,3 )
      END
