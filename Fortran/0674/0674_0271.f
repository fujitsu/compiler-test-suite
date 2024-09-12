      PARAMETER (N=10)
      REAL*8 A(N),B(N),X(N),Y(N)
      INTEGER L(N)
      DATA X/N*1.0/,Y/N*9.9/,L/N*1/,A/N*9.4/
      DO 10 I=1,N
      B(I)=X(L(I))+1.85
      Y(I)=B(I)**2
      B(I)=A(I)+Y(I)*2
      Y(I)=X(L(I))*A(I)
   10 CONTINUE
      PRINT *,A,B,X,Y
      STOP
      END
