      REAL*8 A1(20)/20*0/,B1,C1(20)
      REAL*8 A2(20)/20*0/,B2,C2(20)
      REAL*8 A3(20)/20*0/,B3,C3(20)
      REAL*8 A4(20)/20*0/,B4,C4(20)
      REAL*8 A5(20)/20*0/,B5,C5(20)
      REAL*8 A6(20)/20*0/,B6,C6(20)
      REAL*8 A7(20)/20*0/,B7,C7(20)
      REAL*8 A8(20)/20*0/,B8,C8(20)
      REAL*8 A9(20)/20*0/,B9,C9(20)
      REAL*8 A10(20)/20*0/,B10,C10(20)
      REAL*8 A11(20)/20*0/,B11,C11(20)
      REAL*8 A12(20)/20*0/,B12,C12(20)
      REAL*8 A13(20)/20*0/,B13,C13(20)
      REAL*8 A14(20)/20*0/,B14,C14(20)
      REAL*8 A15(20)/20*0/,B15,C15(20)
      REAL*8 A16(20)/20*0/,B16,C16(20)
      REAL*8 A17(20)/20*0/,B17,C17(20),A(20),     C(20)
      DATA A/20*0/,B/   1.0/,C/20*2.0/,RC1/1/,RC0/0/

      B1=1
      B2=2
      B3=3
      B4=4
      B5=5
      B6=6
      B7=7
      B8=8
      B9=9
      B10=10
      B11=1
      B12=2
      B13=3
      B14=4
      B15=5
      B16=6
      B17=7
      DO 1 I=1,20
      A1(1)=1+A(I)
      A2(1)=2
      A3(1)=3
      A4(1)=4
      A5(1)=5
      A6(1)=6
      A7(1)=7
      A8(1)=8
      A9(1)=9
      A10(1)= 10
      A11(1)= 11
      A12(1)= 12
      A13(1)= 13
      A14(1)= 14
      A15(1)= 15
      A16(1)= 16
      A17(1)= 17
      C1(I)=C(I)+B
      C2(I)=C(I)+B
      C3(I)=C(I)+B
      C4(I)=C(I)+B
      C5(I)=C(I)+B
      C6(I)=C(I)+B
      C7(I)=C(I)+B
      C8(I)=C(I)+B
      C9(I)=C(I)+B
      C10(I)=C(I)+B
      C11(I)=C(I)+B
      C12(I)=C(I)+B
      C13(I)=C(I)+B
      C14(I)=C(I)+B
      C15(I)=C(I)+B
      C16(I)=C(I)+B
1     C17(I)=C(I)+B

      DO 10 I=1,19
      A1(I)=C1(I)+1
      A2(I)=C2(I)+1
      A3(I)=C3(I)+1
      IF(RC1.EQ.1) THEN
        A1(I) = B1*A1(I)+C1(I)
        A2(I) = B2*A2(I)+C2(I)
        A3(I) = B3*A3(I)+C3(I)
      ENDIF
  10  CONTINUE

      DO 20 I=1,19
      A4(I)=C4(I)+1
      A5(I)=C5(I)+1
      A6(I)=C6(I)+1
      A7(I)=C7(I)+1
      A8(I)=C8(I)+1
      A9(I)=C9(I)+1
      IF(RC0.EQ.0) THEN
      A10(I)=C10(I)+1
      A11(I)=C11(I)+1
      A12(I)=C12(I)+1
      A13(I)=C13(I)+1
        A4(I) = B4*A4(I)+C4(I)
        A5(I) = B5*A5(I)+C5(I)
        A6(I) = B6*A6(I)+C6(I)
        A7(I) = B7*A7(I)+C7(I)
        A8(I) = B8*A8(I)+C8(I)
        A9(I) = B9*A9(I)+C9(I)
        A10(I) = B10*A10(I)+C10(I)
        A11(I) = B11*A11(I)+C11(I)
        A12(I) = B12*A12(I)+C12(I)
        A13(I) = B13*A13(I)+C13(I)
      ENDIF
  20  CONTINUE

      DO 21 I=1,19
      A1(1)=A1(I)+1
      A2(1)=A2(I)+2
      A3(1)=A3(I)+3
      A4(1)=A4(I)+4
      A5(1)=A5(I)+5
      A6(1)=A6(I)+6
      A7(1)=A7(I)+7
      A8(1)=A8(I)+8
      A9(1)=A9(I)+9
      A10(1)=A10(I)+10
      A11(1)=A11(I)+11
      A12(1)=A12(I)+12
      A13(1)=A13(I)+13
 21   CONTINUE

      DO 30 I=1,19
      A1(I)=C1(I)+1
      A2(I)=C2(I)+1
      A3(I)=C3(I)+1
      A4(I)=C4(I)+1
      A5(I)=C5(I)+1
      A6(I)=C6(I)+1
      A7(I)=C7(I)+1
      A8(I)=C8(I)+1
      A9(I)=C9(I)+1
      A10(I)=C10(I)+1
      A11(I)=C11(I)+1
      A12(I)=C12(I)+1
      A13(I)=C13(I)+1
      A14(I)=C14(I)+1
      A15(I)=C15(I)+1
      A16(I)=C16(I)+1
      A17(I)=C17(I)+1
      IF(RC1.EQ.1) THEN
        A1(I) = B1*A1(I)+C1(I)
        A2(I) = B2*A2(I)+C2(I)
        A3(I) = B3*A3(I)+C3(I)
        A4(I) = B4*A4(I)+C4(I)
        A5(I) = B5*A5(I)+C5(I)
        A6(I) = B6*A6(I)+C6(I)
        A7(I) = B7*A7(I)+C7(I)
        A8(I) = B8*A8(I)+C8(I)
        A9(I) = B9*A9(I)+C9(I)
        A10(I) = B10*A10(I)+C10(I)
        A14(I) = B14*A14(I)+C14(I)
        A15(I) = B15*A15(I)+C15(I)
        A16(I) = B16*A16(I)+C16(I)
        A17(I) = B17*A17(I)+C17(I)
        A11(I) = B11*A11(I)+C11(I)
        A12(I) = B12*A12(I)+C12(I)
        A13(I) = B13*A13(I)+C13(I)
      ENDIF
  30  CONTINUE

      WRITE(6,*) A1,A2,A3,A4,A5,A6,A7,A8,A9,A10
      WRITE(6,*) A11,A12,A13,A14,A15,A16,A17
      STOP
      END
