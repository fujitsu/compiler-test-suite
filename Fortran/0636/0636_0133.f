      PARAMETER (N=10)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      REAL*8 B1(N),B2(N),B3(N),B4(N),B5(N),B6(N),B7(N),B8(N),B9(N)
      DATA A1/N*1.0/,A2/N*2.0/,A3/N*3.0/,A4/N*4.0/,A5/N*5.0/,
     *     A6/N*6.0/,A7/N*7.0/,A8/N*8.0/,A9/N*9.0/
      DO 10 I=1,N
      T1=A1(I)
      T2=A2(I)
      T3=A3(I)
      T4=A4(I)
      T5=A5(I)
      T6=A6(I)
      T7=A7(I)
      T8=A8(I)
      T9=A9(I)
      B1(I)=1.0
      B2(I)=I
      B3(I)=I-0.9
      B4(I)=A1(I)+A2(I)
      B5(I)=A3(I)/A4(I)
      B6(I)=A5(I)*A6(I)
      B7(I)=A7(I)-A8(I)
      B8(I)=A9(I)*0.7
      B9(I)=A9(I)-0.5
      A1(I)=A3(I)+A5(I)+A7(I)+A9(I)
      A2(I)=A4(I)*A6(I)*A8(I)
      X=(A1(I)+A2(I))/2.0
      IF(X.GT.-100.0) THEN
      A3(I)=B1(I)+B2(I)+B3(I)+B4(I)+B5(I)
      A4(I)=B6(I)+B7(I)+B8(I)+B9(I)
      ENDIF
   10 CONTINUE
      PRINT *,A1,A2,A3,A4,A5,A6,A7,A8,A9,
     1        B1,B2,B3,B4,B5,B6,B7,B8,B9
      STOP
      END
