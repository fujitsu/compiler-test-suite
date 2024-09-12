      DIMENSION A1(10),A2(10),A3(10),A4(10),A5(10)
      DIMENSION A6(10),A7(10),A8(10),A9(10),A10(10)
      DIMENSION B1(10),B2(10),B3(10),B4(10),B5(10)
      DIMENSION B6(10),B7(10),B8(10),B9(10),B10(10)
      DIMENSION C1(10),C2(10),C3(10),C4(10),C5(10)
      DIMENSION C6(10),C7(10),C8(10),C9(10),C10(10),A(10),C(10)
      DATA A/10*0/,B/   1.0/,C/10*2.0/
      DATA N/3/,M/10/

      DO 1 I=1,10
      B1(I)=A(I)
      B2(I)=2
      B3(I)=2
      B4(I)=2
      B5(I)=2
      B6(I)=2
      B7(I)=2
      B8(I)=2
      B9(I)=2
      B10(I)=2
      C1(I)=1
      C2(I)=3
      C3(I)=1
      C4(I)=12
      C5(I)=1
      C6(I)=1
      C7(I)=4
      C8(I)=1
      C9(I)=5
1     C10(I)=2

      DO 10 I=1,10
  10    A1(I)=B*B1(I)+C1(I)

      DO 11 I=1,10
11      A2(I)=B2(I)*B+C2(I)

      DO 12 I=1,10
12      A3(I)=C3(I)+B3(I)*B

      DO 13 I=1,10
13      A4(I)=C4(I)+B*B4(I)

      DO 14 I=1,10
14      A5(I)=     +B*B5(I)

      DO 15 I=1,10
15      A6(I)=B*B6(I)+B*B5(I)

      DO 16 I=1,10
  16    A7(I)=5.*B7(I)+C7(I)

      DO 17 I=1,10
17      A8(I)=B8(I)*3.0+C8(I)

      DO 18 I=1,10
18      A9(I)=C9(I)+B9(I)*1.5

      DO 19 I=1,10
19      A10(I)=C10(I)+10*B10(I)

      DO 20 I=1,10,2
  20    A1(I)=B*B1(I)-C1(I)

      DO 21 I=1,10,2
21      A2(I)=B2(I)*B-C2(I)

      DO 22 I=1,10,2
22      A3(I)=C3(I)-B3(I)*B

      DO 23 I=1,10,2
23      A4(I)=C4(I)-B*B4(I)

      DO 24 I=1,10,2
24      A5(I)=     -B*B5(I)

      DO 25 I=1,10,2
25      A6(I)=B*B6(I)-B*B5(I)


      DO 26 I=1,10,2
  26    A7(I)=5.*B7(I)-C7(I)

      DO 27 I=1,10,2
27      A8(I)=B8(I)*3.0-C8(I)

      DO 28 I=1,10,2
28      A9(I)=C9(I)-B9(I)*1.5

      DO 29 I=1,10,2
29      A10(I)=C10(I)-10*B10(I)

      DO 30 I=1,5
  30    A1(I)=C(1)*B1(I)+C1(I)

      DO 31 I=1,5
31      A2(I)=B2(I)*C(2)+C2(I)

      DO 32 I=1,5
32      A3(I)=C3(I)+B3(I)*C(3)

      DO 33 I=1,5
33      A4(I)=C4(I)+C(4)*B4(I)

      DO 34 I=1,5
34      A5(I)=     +C(5)*B5(I)

      DO 35 I=1,5
35      A6(I)=C(6)*B6(I)+B*B5(I)

      DO 36 J=1,10
      DO 36 I=1,5
        A7(I)=C(J)*B7(I)+  C7(I)
36      A8(I)=C(J)*B8(I)+C8(I)

      DO 40 I=6,10
        A1(I)=B*B1(I)+C1(I) +B1(I)
        A2(I)=B2(I)*B+C2(I) +B2(I)
        A3(I)=C3(I)+B3(I)*B +B3(I)
        A4(I)=C4(I)+B*B4(I)  +B4(I)
        A5(I)=     +B*B5(I)  +B5(I)
        A6(I)=B*B6(I)+B*B5(I)+B6(I)
        A7(I)=5.*B7(I)+C7(I)     +B7(I)
        A8(I)=B8(I)*3.0+C8(I)    +B8(I)
        A9(I)=C9(I)+B9(I)*1.5    +B9(I)
        A10(I)=C10(I)+10*B10(I)  +B10(I)
        A1(I)=B*B1(I)-C1(I)      +B10(I)
        A2(I)=B2(I)*B-C2(I)      +B9(I)
        A3(I)=C3(I)-B3(I)*B      +B8(I)
        A4(I)=C4(I)-B*B4(I)      +B7(I)
        A5(I)=     -B*B5(I)      +B6(I)
        A6(I)=B*B6(I)-B*B5(I)    +B5(I)
        A7(I)=5.*B7(I)-C7(I)     +B4(I)
        A8(I)=B8(I)*3.0-C8(I)    +B3(I)
        A9(I)=C9(I)-B9(I)*1.5    +B2(I)
        A10(I)=C10(I)-10*B10(I)  +B1(I)
        A1(I)=C(1)*B1(I)+C1(I)   +B1(I)
        A2(I)=B2(I)*C(2)+C2(I)   +B7(I)
        A3(I)=C3(I)+B3(I)*C(3)    +B8(I)
        A4(I)=C4(I)+C(4)*B4(I)    +C3(I)
        A5(I)=     +C(5)*B5(I)    +B5(I)
        A6(I)=C(6)*B6(I)+B*B5(I)  +B5(I)
        A7(I)=C(7)*B7(I)+  C7(I)  +B5(I)
40      A8(I)=C(8)*B8(I)+C8(I)    +A7(I)

       WRITE(6,*) A1,A2,A3,A4,A5,A6,A7,A8,A9,A10
       STOP
       END
