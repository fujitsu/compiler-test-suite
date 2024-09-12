      DIMENSION A1(10),A2(10),A3(10),A4(10),A5(10)
      DIMENSION A6(10),A7(10),A8(10),A9(10),A10(10)
      DIMENSION B1(10),B2(10),B3(10),B4(10),B5(10)
      DIMENSION B6(10),B7(10),B8(10),B9(10),B10(10)
      DIMENSION C1(10),C2(10),C3(10),C4(10),C5(10)
      DIMENSION C6(10),C7(10),C8(10),C9(10),C10(10),A(10),C(10)
      DATA A/10*1/,B/   1.0/,C/10*2.0/
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
      IF(A(I).EQ.0) GOTO 10
        A1(I)=B*B1(I)+C1(I)
10    CONTINUE
      DO 11 I=1,10
      IF(A(I).EQ.0) GOTO 11
        A2(I)=B2(I)*B+C2(I)
11    CONTINUE
      DO 12 I=1,10
      IF(A(I).EQ.0) GOTO 12
        A3(I)=C3(I)+B3(I)*B
12    CONTINUE
      DO 13 I=1,10
      IF(A(I).EQ.0) GOTO 13
        A4(I)=C4(I)+B*B4(I)
13    CONTINUE
      DO 14 I=1,10
      IF(A(I).EQ.0) GOTO 14
        A5(I)=     +B*B5(I)
14    CONTINUE
      DO 15 I=1,10
      IF(A(I).EQ.0) GOTO 15
        A6(I)=B*B6(I)+B*B5(I)
15    CONTINUE

      DO 16 I=1,10
      IF(A(I).EQ.0) GOTO 16
        A7(I)=5.*B7(I)+C7(I)
16    CONTINUE
      DO 17 I=1,10
      IF(A(I).EQ.0) GOTO 17
        A8(I)=B8(I)*3.0+C8(I)
17    CONTINUE
      DO 18 I=1,10
      IF(A(I).EQ.0) GOTO 18
        A9(I)=C9(I)+B9(I)*1.5
18    CONTINUE
      DO 19 I=1,10
      IF(A(I).EQ.0) GOTO 19
        A10(I)=C10(I)+10*B10(I)
19    CONTINUE

      DO 20 I=1,10,2
      IF(A(I).EQ.0) GOTO 20
        A1(I)=B*B1(I)-C1(I)
20    CONTINUE
      DO 21 I=1,10,2
      IF(A(I).EQ.0) GOTO 21
        A2(I)=B2(I)*B-C2(I)
21    CONTINUE
      DO 22 I=1,10,2
      IF(A(I).EQ.0) GOTO 22
        A3(I)=C3(I)-B3(I)*B
22    CONTINUE
      DO 23 I=1,10,2
      IF(A(I).EQ.0) GOTO 23
        A4(I)=C4(I)-B*B4(I)
23    CONTINUE
      DO 24 I=1,10,2
      IF(A(I).EQ.0) GOTO 24
        A5(I)=     -B*B5(I)
24    CONTINUE
      DO 25 I=1,10,2
      IF(A(I).EQ.0) GOTO 25
        A6(I)=B*B6(I)-B*B5(I)
25    CONTINUE

      DO 26 I=1,10,2
      IF(A(I).EQ.0) GOTO 26
        A7(I)=5.*B7(I)-C7(I)
26    CONTINUE
      DO 27 I=1,10,2
      IF(A(I).EQ.0) GOTO 27
        A8(I)=B8(I)*3.0-C8(I)
27    CONTINUE
      DO 28 I=1,10,2
      IF(A(I).EQ.0) GOTO 28
        A9(I)=C9(I)-B9(I)*1.5
28    CONTINUE
      DO 29 I=1,10,2
      IF(A(I).EQ.0) GOTO 29
        A10(I)=C10(I)-10*B10(I)
29    CONTINUE

      DO 30 I=1,5
      IF(A(I).EQ.0) GOTO 30
        A1(I)=C(1)*B1(I)+C1(I)
30    CONTINUE
      DO 31 I=1,5
      IF(A(I).EQ.0) GOTO 31
        A2(I)=B2(I)*C(2)+C2(I)
31    CONTINUE
      DO 32 I=1,5
      IF(A(I).EQ.0) GOTO 32
        A3(I)=C3(I)+B3(I)*C(3)
32    CONTINUE
      DO 33 I=1,5
      IF(A(I).EQ.0) GOTO 33
        A4(I)=C4(I)+C(4)*B4(I)
33    CONTINUE
      DO 34 I=1,5
      IF(A(I).EQ.0) GOTO 34
        A5(I)=     +C(5)*B5(I)
34    CONTINUE
      DO 35 I=1,5
      IF(A(I).EQ.0) GOTO 35
        A6(I)=C(6)*B6(I)+B*B5(I)
35    CONTINUE
      DO 36 J=1,10
      DO 36 I=1,5
      IF(A(I).EQ.0) GOTO 36
        A7(I)=C(J)*B7(I)+  C7(I)
        A8(I)=C(J)*B8(I)+C8(I)
36    CONTINUE

      DO 40 I=6,10
      IF(A(I).EQ.0) GOTO 40
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
