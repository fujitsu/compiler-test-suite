      PARAMETER (N=10)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      REAL*8 B1(N),B2(N),B3(N),B4(N),B5(N),B6(N),B7(N),B8(N),B9(N)
      INTEGER L(N)
      DATA A1/10*1.0/,A2/10*2.0/,A3/10*3.0/,A4/10*4.0/,A5/10*5.0/,
     1     A6/10*6.0/,A7/10*7.0/,A8/10*8.0/,A9/10*9.0/
      DO 100 I=1,N
      L(I)=I
      B1(I)=A1(I)
      B2(I)=A2(I)
      B3(I)=A3(I)
      B4(I)=A4(I)
      B5(I)=A5(I)
      B6(I)=A6(I)
      B7(I)=A7(I)
      S=1.0
      IF(S.LT.10.0) GO TO 10
      B8(I)=A1(I)*A2(I)*A3(I)
      B9(I)=A4(I)+A5(I)+A6(I)
   10 S=S+1.0
      B1(I)=SQRT(ABS(A1(I)))
      B2(I)=B1(I)+0.001
      B3(I)=B1(I)+B2(I)
      B4(I)=SQRT(ABS(A4(I)))
      B5(I)=B4(I)-0.00001
      B6(I)=A7(I)-A8(I)
      B7(I)=A9(I)*7.45
      B8(I)=B1(I)+6.9
      B9(I)=B2(I)-0.1
      B1(I)=B9(I)/2.0
      B9(I)=A1(I)+5.0
      B2(I)=A2(I)/A3(I)+0.4
      B3(I)=A4(I)+A5(I)
      B2(I)=(A5(I)+A6(I))/2.0
      B4(I)=B2(I)
      B5(L(1))=10.0
  100 CONTINUE
      PRINT *,A1,A2,A3,A4,A5,A6,A7,A8,A9,
     1        B1,B2,B3,B4,B5,B6,B7,B8,B9
      STOP
      END
