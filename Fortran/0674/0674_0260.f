      REAL*8 A(50),B(50),C(50),D(50),E(50),F(50),
     *       G(50),H(50),O(50),P(50)
      DATA A,B,C,D,E,F,G,H,O,P/500*0.0/
      LOGICAL L(50),M
      INTEGER NI(5)
      DATA NI/10,20,30,40,50/
      DATA L/50*.FALSE./,M/.FALSE./
      DO 1000 III=1,5
      N=NI(III)
      DO 10 I=1,N
        A(I)=1.0
        B(I)=2.0
        C(I)=1.0
        D(I)=3.0
        E(I)=0.2
        F(I)=-17.6
        G(I)=9.04
        H(I)=5.902
        O(I)=3.2
        P(I)=100.0
        JJ=1
        DO 1 II=1,N
          IF( M ) THEN
            IF(L(II)) THEN
              E(JJ)=B(II)
              A(II)=(B(II)+C(II))/2.0
              JJ=JJ+1
            ENDIF
          ENDIF
        F(II)=1
        O(1)=F(II)
    1   CONTINUE
        H(I)=A(I)+C(I)+9.9
        D(I)=E(I)+F(I)
        G(I)=H(I)+O(I)
        P(I)=G(I)-31.9
        DO 5 J=1,N
         IF(P(J).GT.40.0) GO TO 7
    5   CONTINUE
        DO 6 K=1,N
         C(K)=(O(K)+P(K))/2.0
    6   CONTINUE
    7   IF(A(I).GT.5.0) THEN
          P(I)=E(I)-0.01
          G(I)=SQRT(B(I))
        ELSE
          H(I)=G(I)
          O(I)=F(I)
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
 1000 CONTINUE
      DO 2000 I=1,10
       A(I)=1.0
       B(I)=1.9
       C(I)=8.45
 2000 CONTINUE
      STOP
      END
