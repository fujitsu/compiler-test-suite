      PARAMETER (N=100)
      REAL*8 A1(N)
      REAL*8 B1(N),B2(N),B3(N),B4(N),B5(N),B6(N),B7(N),B8(N)
      REAL*8 X1(N),X2(N),X3(N),X4(N),X5(N),X6(N),X7(N),X8(N)
      DATA B1,B2,B3,B4,B5,B6,B7,B8/800*0/
      DATA X1,X2,X3,X4,X5,X6,X7,X8/800*0/
      DATA A1/N*9.0/
      DO 100 J=1,N
      DO 100 I=J+1,N
      B1(I)=J
      B2(I)=B1(I)
      B3(I)=J-0.1
      B4(I)=SQRT(REAL(I))
      B5(I)=B4(I)-0.001
      B6(I)=B3(I)*4.2
      B7(I)=B2(I)+9.1
      B8(I)=B1(I)-0.1
      X1(I)=B1(I)-B2(I)
      X2(I)=B2(I)+9.3
      X3(I)=B3(I)*8.3
      X4(I)=B4(I)/0.3
      X5(I)=B5(I)-0.0000001
      X6(I)=SQRT(ABS(B6(I)))+9.333
      X7(I)=B1(I)+B2(I)+B3(I)+B4(I)+B5(I)+B6(I)+B7(I)+B8(I)
      X8(I)=(B1(I)+B2(I))/2.0
      IX=I-1
      S1=9.7
      S2=A1(I)
      A1(IX)=S1
      X=A1(I)-S2
  100 CONTINUE
      PRINT *,A1,S1,S2,X,
     1        B1,B2,B3,B4,B5,B6,B7,B8,
     2        X1,X2,X3,X4,X5,X6,X7,X8
      STOP
      END
