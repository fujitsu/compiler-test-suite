      PARAMETER (N=100)
      REAL A(N),B(N),C(N),D(N)
      DO 1 I=1,N
      A(I)=SQRT(REAL(I))
      B(I)=A(I)+I
      C(I)=B(I)+I
      D(I)=A(I)+B(I)+I
    1 CONTINUE
      DO 10 I=2,N-1
      A(I)=A(I-1)+B(I)
   10 CONTINUE
      DO 20 I=2,N-2
      A(I)=A(I-1)+B(I)
      B(I)=B(I-1)-C(I)
      C(I)=C(I-1)+D(I)
      D(I)=D(I-1)+I
   20 CONTINUE
      IF(N.GT.56) THEN
       DO 30 I=2,N-10
       A(I)=A(I-1)+B(I)
       B(I)=B(I-1)+C(I)
       D(I)=A(I-1)+B(I)
   30  CONTINUE
      ELSE
       DO 40 I=2,N-3
       A(I)=A(I-1)+B(I)
   40  CONTINUE
      ENDIF
      PRINT *,A,B,C,D
      STOP
      END
