      PARAMETER (N=10)
      REAL*8 A(N),B(N),C(N),D(N),X(N),Y(N),Z(N)
      DATA A/N*1.2/,B/N*0.1/,C/N*-9.4/,D/N*-5.2/
      DO 10 I=1,N
      T1=A(I)
      T2=A(I)*2
      T3=A(I)/2.0
      X(I)=B(I)+C(I)*4.8
      Y(I)=(B(I)+C(I))/2.0
      Z(I)=B(I)**2-C(I)
      A(I)=X(I)+Y(I)+Z(I)
      V=T1*T2*T3
      X(I)=A(I)/9.9
      B(I)=X(I)*Y(I)-D(I)
      C(I)=B(I)/D(I)
      D(I)=V*C(I)
   10 CONTINUE
      WRITE (6,*) V
      WRITE (6,20) A,B,C,D,X,Y,Z
   20 FORMAT (3F25.15)
      STOP
      END
