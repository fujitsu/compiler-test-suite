      PARAMETER (N=10)
      REAL A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N),A10(N)
      REAL B1(N),B2(N),B3(N),B4(N),B5(N),B6(N),B7(N),B8(N),B9(N),B10(N)
      REAL C1(N),C2(N),C3(N),C4(N),C5(N),C6(N),C7(N),C8(N),C9(N),C10(N)
      REAL D1(N),D2(N),D3(N),D4(N),D5(N),D6(N),D7(N),D8(N),D9(N),D10(N)
      REAL E1(N),E2(N),E3(N),E4(N),E5(N),E6(N),E7(N),E8(N),E9(N),E10(N)
      REAL X(N),Y(N),Z(N)
      DO 1 I=1,10
      A1(I)=1.0D0
    1 CONTINUE
      DO 2 I=1,10
      A2(I)=1.1D0
    2 CONTINUE
      DO 3 I=1,10
      A3(I)=2.0D0
    3 CONTINUE
      DO 4 I=1,10
      A4(I)=1.9D0
    4 CONTINUE
      DO 5 I=1,10
      A5(I)=9.0D0
    5 CONTINUE
      DO 6 I=1,10
      A6(I)=3.1D0
    6 CONTINUE
      DO 7 I=1,10
      A7(I)=5.3D0
    7 CONTINUE
      DO 8 I=1,10
      A8(I)=1.9D0
    8 CONTINUE
      DO 9 I=1,10
      A9(I)=2.9D0
    9 CONTINUE
      DO 10 I=1,10
      A10(I)=8.9D0
   10 CONTINUE
      DO 11 I=1,10
      B1(I)=9.9D0
   11 CONTINUE
      DO 12 I=1,10
      B2(I)=8.9D0
   12 CONTINUE
      DO 13 I=1,10
      B3(I)=1.9D0
   13 CONTINUE
      DO 14 I=1,10
      B4(I)=7.9D0
   14 CONTINUE
      DO 15 I=1,10
      B5(I)=0.9D0
   15 CONTINUE
      DO 16 I=1,10
      B6(I)=8.9D0
   16 CONTINUE
      DO 17 I=1,10
      B7(I)=1.9D0
   17 CONTINUE
      DO 18 I=1,10
      B8(I)=7.9D0
   18 CONTINUE
      DO 19 I=1,10
      B9(I)=0.9D0
   19 CONTINUE
      DO 20 I=1,10
      B10(I)=3.1D0
   20 CONTINUE
      DO 21 I=1,10
      C1(I)=5.9D0
   21 CONTINUE
      DO 22 I=1,10
      C2(I)=7.9D0
   22 CONTINUE
      DO 23 I=1,10
      C3(I)=0.9D0
   23 CONTINUE
      DO 24 I=1,10
      C4(I)=2.1D0
   24 CONTINUE
      DO 25 I=1,10
      C5(I)=2.9D0
   25 CONTINUE
      DO 26 I=1,10
      C6(I)=8.9D0
   26 CONTINUE
      DO 27 I=1,10
      C7(I)=0.9D0
   27 CONTINUE
      DO 28 I=1,10
      C8(I)=1.1D0
   28 CONTINUE
      DO 29 I=1,10
      C9(I)=5.2D0
   29 CONTINUE
      DO 30 I=1,10
      C10(I)=2.1D0
   30 CONTINUE
      DO 31 I=1,10
      D1(I)=1.8D0
   31 CONTINUE
      DO 32 I=1,10
      D2(I)=3.2D0
   32 CONTINUE
      DO 33 I=1,10
      D3(I)=2.1D0
   33 CONTINUE
      DO 34 I=1,10
      D4(I)=5.8D0
   34 CONTINUE
      DO 35 I=1,10
      D5(I)=5.2D0
   35 CONTINUE
      DO 36 I=1,10
      D6(I)=6.1D0
   36 CONTINUE
      DO 37 I=1,10
      D7(I)=5.8D0
   37 CONTINUE
      DO 38 I=1,10
      D8(I)=8.2D0
   38 CONTINUE
      DO 39 I=1,10
      D9(I)=9.1D0
   39 CONTINUE
      DO 40 I=1,10
      D10(I)=1.1D0
   40 CONTINUE
      DO 41 I=1,10
      E1(I)=1.7D0
   41 CONTINUE
      DO 42 I=1,10
      E2(I)=2.1D0
   42 CONTINUE
      DO 43 I=1,10
      E3(I)=3.7D0
   43 CONTINUE
      DO 44 I=1,10
      E4(I)=4.1D0
   44 CONTINUE
      DO 45 I=1,10
      E5(I)=5.1D0
   45 CONTINUE
      DO 46 I=1,10
      E6(I)=6.7D0
   46 CONTINUE
      DO 47 I=1,10
      E7(I)=7.1D0
   47 CONTINUE
      DO 48 I=1,10
      E8(I)=8.1D0
   48 CONTINUE
      DO 49 I=1,10
      E9(I)=9.7D0
   49 CONTINUE
      DO 50 I=1,10
      E10(I)=1.1D0
   50 CONTINUE
      SUM1=0.0
      SUM2=0.0
      SUM3=0.0
      SUM4=0.0
      SUM5=0.0
      DO 100 I=1,10
      SUM1=SUM1+A1(I)+A2(I)+A3(I)+A4(I)+A5(I)+A6(I)+A7(I)+A8(I)+A9(I)+
     *          A10(I)
  100 CONTINUE
      DO 200 I=1,10
      SUM2=SUM2+B1(I)+B2(I)+B3(I)+B4(I)+B5(I)+B6(I)+B7(I)+B8(I)+B9(I)+
     *          B10(I)
  200 CONTINUE
      DO 300 I=1,10
      SUM3=SUM3+C1(I)+C2(I)+C3(I)+C4(I)+C5(I)+C6(I)+C7(I)+C8(I)+C9(I)+
     *          C10(I)
  300 CONTINUE
      DO 400 I=1,10
      SUM4=SUM4+D1(I)+D2(I)+D3(I)+D4(I)+D5(I)+D6(I)+D7(I)+D8(I)+D9(I)+
     *          D10(I)
  400 CONTINUE
      DO 500 I=1,10
      SUM5=SUM5+E1(I)+E2(I)+E3(I)+E4(I)+E5(I)+E6(I)+E7(I)+E8(I)+E9(I)+
     *          E10(I)
  500 CONTINUE
      DO 1000 I=1,N
      X(I)=A1(I)+B1(I)
 1000 CONTINUE
      DO 2000 I=1,N
      Y(I)=C1(I)-D1(I)
 2000 CONTINUE
      DO 3000 I=1,N
      Z(I)=E1(I)*0.333
 3000 CONTINUE
      PRINT *,X,Y,Z
      STOP
      END
