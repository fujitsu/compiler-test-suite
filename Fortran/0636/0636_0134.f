      PARAMETER (N=10)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N)
      REAL*8 B1(N),B2(N),B3(N),B4(N),B5(N)
      DATA A1/N*1.0/,A2/N*2.0/,A3/N*3.0/,A4/N*4.0/,A5/N*8.0/,
     1     A6/N*7.0/
      DO 10 I=1,N
      T=A1(I)*A2(I)
      U=A3(I)-A4(I)
      X=A5(I)/A6(I)
      B1(I)=I
      B2(I)=I+1.5
      B3(I)=SQRT(B1(I))
      B4(I)=B3(I)-0.00001
      B5(I)=B2(I)/B1(I)
      Y=A1(I)
      Z=A2(I)
      C=A3(I)
      D=A4(I)
      E=A5(I)
      F=A6(I)
      B1(I)=A1(I)/A2(I)
      B2(I)=A3(I)*A4(I)
      B3(I)=A5(I)+A6(I)
   10 CONTINUE
      PRINT *,T,U,X,Y,Z,C,D,E,F,B1,B2,B3,B4,B5
      STOP
      END
