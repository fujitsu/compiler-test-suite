      PARAMETER (N=50)
      REAL*8 A(N),B(N),C(N),D(N),E(N),F(N),G(N),H(N),O(N),P(N)
      SUM1=0.0
      SUM2=0.0
      SUM3=0.0
      SUM4=0.0
      SUM5=0.0
      SUM6=0.0
      SUM7=0.0
      SUM8=0.0
      SUM9=0.0
      SUM10=0.0
      DO 10 I=1,N
        A(I)=REAL(I)+5.74
        B(I)=SQRT(REAL(I))
        C(I)=1.0
        D(I)=REAL(I)*3.9
        E(I)=0.2
        F(I)=107.6
        G(I)=REAL(I)-0.093
        H(I)=REAL(I)*2.0
        O(I)=3.2
        P(I)=100.0
        SUM1=SUM1+A(I)
        SUM2=SUM2+B(I)
        SUM3=SUM3+C(I)
        SUM4=SUM4+D(I)
        SUM5=SUM5+E(I)
        SUM6=SUM6+F(I)
        SUM7=SUM7+G(I)
        SUM8=SUM8+H(I)
        SUM9=SUM9+O(I)
        SUM10=SUM10+P(I)
        A(I)=B(I)+C(I)+9.9
        D(I)=E(I)+F(I)
        G(I)=H(I)+O(I)
        P(I)=G(I)
        IF(A(I).GT.5.0) THEN
          P(I)=A(I)-0.01
          G(I)=SQRT(B(I))
        ELSE
          H(I)=0.0
          O(I)=0.0
        ENDIF
   10 CONTINUE
      SUMA=0.0
      SUMB=0.0
      DO 20 I=1,N
        SUMA=SUMA+A(I)+B(I)+C(I)+D(I)+E(I)
        SUMB=SUMB+F(I)+G(I)+H(I)+O(I)+P(I)
   20 CONTINUE
      AVE1=SUMA/5.0
      AVE2=SUMB/5.0
      IF(AVE1.GT.AVE2) THEN
      DO 30 I=1,N
        A(I)=O(I)+SQRT(P(I))
        B(I)=G(I)-SQRT(H(I))
        C(I)=(E(I)+F(I))/2.0
        D(I)=A(I)-0.0001
        E(I)=B(I)
        F(I)=ABS(C(I))
   30 CONTINUE
      ELSE
      DO 40 I=1,N
       G(I)=A(I)
       H(I)=B(I)
       O(I)=C(I)
       P(I)=D(I)
   40 CONTINUE
      ENDIF
      PRINT *,A,B,C,D,E,F,G,H,O,P
      STOP
      END
