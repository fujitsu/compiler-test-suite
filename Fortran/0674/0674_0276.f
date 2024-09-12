      PARAMETER (N=10)
      REAL*8 A(N),B(N),C(N),X(N),Y(N),Z(N)
      DATA Y/N*1.9/,Z/N*0.9/,X/N*9.3/
      DO 10 I=1,N
      T=X(I)
      A(I)=Y(I)**2
      B(I)=Z(I)+Y(I)
      X(I)=A(I)+B(I)
      V=X(I)+1.2
      C(I)=A(I)/5.3
      B(I)=A(I)*C(I)
      A(I)=X(I)+Y(I)
   10 CONTINUE
      PRINT *,A,B,C,X,Y,Z,T,V
      STOP
      END
