      REAL*8 A1(10)
      REAL*8 B1(10),B2(10),B3(10),B4(10),B5(10),B6(10),B7(10),B8(10)
      INTEGER L(10)
      DATA A1/10*3.0/,L/10*1/
      DO 10 I=1,10
      T=A1(I)
      B1(I)=I
      B2(I)=B1(I)+0.8
      B3(I)=SQRT(B1(I))
      B4(I)=B3(I)-0.001
      B5(I)=B2(I)*2.5
      B6(I)=B4(I)/0.6
      B7(I)=I+9.9
      B8(I)=B7(I)
      A1(L(I))=1.0
   10 CONTINUE
      PRINT *,A1,T,B1,B2,B3,B4,B5,B6,B7,B8
      STOP
      END
