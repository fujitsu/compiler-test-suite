      DIMENSION A1(10),A2(10),A3(10),A4(10),A5(10)
      DIMENSION A6(10),A7(10),A8(10),A9(10),A10(10)
      DIMENSION B1(10),B2(10),B3(10),B4(10),B5(10)
      DIMENSION B6(10),B7(10),B8(10),B9(10),B10(10)
      DIMENSION C1(10),C2(10),C3(10),C4(10),C5(10)
      DIMENSION C6(10),C7(10),C8(10),C9(10),C10(10),A(10),C(10)
      DATA A/10*1/,B/   1.0/,C/10*2.0/
      DATA I1/1/,I2/2/,I5/5/,I6/6/,I10/10/

      DO 1 I=I1,I10
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

      DO 10 I=I1,I10
        A1(I)=B*B1(I)+C1(I)
      IF(A(I).EQ.0) GOTO 10
        A1(I)=B*B1(I)+C1(I)
 10   CONTINUE
      DO 11 I=I1,I10
      IF(A(I).EQ.0) GOTO 11
        A2(I)=B2(I)*B+C2(I)
        A2(I)=B2(I)*B+C2(I)
11    CONTINUE
      DO 12 I=I1,I10
        A3(I)=C3(I)+B3(I)*B
        A3(I)=C3(I)+B3(I)*B
      IF(A(I).EQ.0) GOTO 12
        A3(I)=C4(I)+B3(I)*2.5
12    CONTINUE
      DO 13 I=I1,I10
      IF(A(I).EQ.0) GOTO 13
        A4(I)=C4(I)+B*B4(I)+I
13    CONTINUE
      DO 14 I=I1,I10
        A5(I)=  I
      IF(A(I).EQ.I+B*B5(I)) GOTO 14
        A5(I)=  I  +B*B5(I)
14    CONTINUE
      DO 15 I=I1,I10
        A6(I)=B*B6(I)+B*B5(I)
      IF(A(I).EQ.0) GOTO 15
        A6(I)=B*B6(I)+B*B5(I)+1
15    CONTINUE

      DO 16 I=I1,I10
      IF(A(I).EQ.0) GOTO 16
        A7(I)=5.*B7(I)+C7(I)+1
  16    A7(I)=5.*B7(I)+C7(I)

      DO 17 I=I1,I10
        A8(I)=B8(I)*3.0+C8(I)+1
      IF(A(I).EQ.0) GOTO 17
17      A8(I)=B8(I)*3.0+C8(I)

      DO 18 I=I1,I10
      IF(C9(I).EQ.0) GOTO 18
        A9(I)=C9(I)+B9(I)*1.5
18    CONTINUE

      DO 19 I=I1,I10
      IF(A(I).EQ.0) THEN
        A10(I)=C10(I)+10*B10(I)
      ELSE
        A10(I)=      (10*B10(I)+C10(I))*2
      ENDIF
19    CONTINUE

      DO 20 I=I1,I10,2
      B1(I)=1
      C1(I)=1
      A1(I)=0
      IF(A(I).EQ.0) GOTO 20
        A1(I)=B*B1(I)-C1(I)
20    CONTINUE
      DO 21 I=I1,I10,2
      IF(A(I).EQ.0) GOTO 21
21      A2(I)=B2(I)*B-C2(I)

      DO 22 I=I1,I10,2
      IF(A(I).EQ.0) GOTO 22
22      A3(I)=C3(I)-B3(I)*B

      DO 23 I=I1,I10,2
      IF(A(I).EQ.0) GOTO 23
23      A4(I)=C4(I)-B*B4(I)

      DO 24 I=I1,I10,2
      IF(A(I).EQ.0) GOTO 24
24      A5(I)=     -B*B5(I)

      DO 25 I=I1,I10,2
      IF(A(I).EQ.0) GOTO 25
25      A6(I)=B*B6(I)-B*B5(I)


      DO 26 I=I1,I10,2
      IF(A(I).EQ.0) GOTO 26
  26    A7(I)=5.*B7(I)-C7(I)

      DO 27 I=I1,I10,2
      IF(A(I).EQ.0) GOTO 27
27      A8(I)=B8(I)*3.0-C8(I)

      DO 28 I=I1,I10,2
      IF(A(I).EQ.0) GOTO 28
28      A9(I)=C9(I)-B9(I)*1.5

      DO 29 I=I1,I10,2
      IF(A(I).EQ.0) GOTO 29
29      A10(I)=C10(I)-10*B10(I)

      DO 30 I=1,I5
      IF(A(I).EQ.0) GOTO 30
  30    A1(I)=C(1)*B1(I)+C1(I)

      DO 31 I=1,I5
      IF(A(I).EQ.0) GOTO 31
31      A2(I)=B2(I)*C(2)+C2(I)

      DO 32 I=1,I5
      IF(A(I).EQ.0) GOTO 32
32      A3(I)=C3(I)+B3(I)*C(3)

      DO 33 I=1,I5
      IF(A(I).EQ.0) GOTO 33
33      A4(I)=C4(I)+C(4)*B4(I)

      DO 34 I=1,I5
      IF(A(I).EQ.0) GOTO 34
34      A5(I)=     +C(5)*B5(I)

      DO 35 I=1,I5
      IF(A(I).EQ.0) GOTO 35
35      A6(I)=C(6)*B6(I)+B*B5(I)

      DO 36 J=1,3
      DO 36 I=1,I5
      IF(A(I).EQ.0) GOTO 36
        A7(I)=C(J)*B7(I)+  C7(I)
36      A8(I)=C(J)*B8(I)+C8(I)

      DO 40 I=I6,10+I2-2
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
