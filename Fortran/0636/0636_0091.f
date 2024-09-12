      PARAMETER (N=10)
      REAL A(N),B(N),C(N),D(N)
      LOGICAL L(N,N)
      DATA L/50*.TRUE.,50*.FALSE./
      DO 100 I=1,N
      DO 100 J=1,N
      IF(L(I,J)) THEN
        DO 10 K1=1,N
        A(K1)=1.2
   10   CONTINUE
        DO 20 L1=1,N
        B(L1)=-0.9
   20   CONTINUE
      ELSE
        DO 30 K2=1,N
        C(K2)=REAL(K2)-0.99
   30   CONTINUE
        DO 40 L2=1,N
        D(L2)=0.33
   40   CONTINUE
      ENDIF
  100 CONTINUE
      SUM=0.0
      DO 50 II=1,N
      SUM=SUM+A(II)+B(II)+C(II)+D(II)
   50 CONTINUE
      PRINT *,SUM
      STOP
      END
