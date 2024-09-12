      PARAMETER (N=10)
      REAL*8 A(N),B(N),C(N),T(N),X(N),Y(N),Z(N)
      DATA X/N*1.0/,Y/N*-4.3/,Z/N*7.7/
      DO 10 I=1,N
      TT=X(I)
      A(I)=Y(I)*Z(I)
      B(I)=Y(I)+Z(I)
      C(I)=Y(I)-Z(I)
      T(I)=A(I)*B(I)*C(I)
      Y(I)=A(I)*A(I)
      Z(I)=A(I)*B(I)
      B(I)=A(I)-Z(I)
      T(I)=A(I)+B(I)+C(I)
      A(I)=Y(I)+Z(I)
      B(I)=TT
      C(I)=X(I)*A(I)
   10 CONTINUE
      PRINT *,A,B,C,X,T,Y,Z,TT
      STOP
      END
