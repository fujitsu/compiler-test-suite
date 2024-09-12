      DIMENSION A1(20),B1(20),C1(20)
      DIMENSION A2(20),B2(20),C2(20)
      DIMENSION A3(20),B3(20),C3(20)
      DIMENSION A4(20),B4(20),C4(20)
      DIMENSION A5(20),B5(20),C5(20)
      DIMENSION A6(20),B6(20),C6(20)
      DIMENSION A7(20),B7(20),C7(20)
      DIMENSION A8(20),B8(20),C8(20)
      DIMENSION A9(20),B9(20),C9(20)
      DIMENSION A10(20),B10(20),C10(20)
      DIMENSION A11(20),B11(20),C11(20)
      DIMENSION A12(20),B12(20),C12(20)
      DIMENSION A13(20),B13(20),C13(20)
      DIMENSION A14(20),B14(20),C14(20)
      DIMENSION A15(20),B15(20),C15(20)
      DIMENSION A16(20),B16(20),C16(20)
      DIMENSION A17(20),B17(20),C17(20),A(20),B(20),C(20)
      DATA A/20*0/,B/20*1.0/,C/20*2.0/,RC1/1/,RC0/0/

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
      C1(I)=C(I)+B(I)
      C2(I)=C(I)+B(I)
      C3(I)=C(I)+B(I)
      C4(I)=C(I)+B(I)
      C5(I)=C(I)+B(I)
      C6(I)=C(I)+B(I)
      C7(I)=C(I)+B(I)
      C8(I)=C(I)+B(I)
      C9(I)=C(I)+B(I)
      C10(I)=C(I)+B(I)
      C11(I)=C(I)+B(I)
      C12(I)=C(I)+B(I)
      C13(I)=C(I)+B(I)
      C14(I)=C(I)+B(I)
      C15(I)=C(I)+B(I)
      C16(I)=C(I)+B(I)
1     C17(I)=C(I)+B(I)

      DO 10 I=1,19
      B1(I)=C1(I)+1
      B2(I)=C2(I)+1
      B3(I)=C3(I)+1
      IF(RC1.EQ.1) THEN
        A1(I+1) = B1(I)*A1(I)+C1(I)
        A2(I+1) = B2(I)*A2(I)+C2(I)
        A3(I+1) = B3(I)*A3(I)+C3(I)
      ENDIF
  10  CONTINUE

      DO 20 I=1,19
      B4(I)=C4(I)+1
      B5(I)=C5(I)+1
      B6(I)=C6(I)+1
      B7(I)=C7(I)+1
      B8(I)=C8(I)+1
      B9(I)=C9(I)+1
      IF(RC0.EQ.0) THEN
      B10(I)=C10(I)+1
      B11(I)=C11(I)+1
      B12(I)=C12(I)+1
      B13(I)=C13(I)+1
        A4(I+1) = B4(I)*A4(I)+C4(I)
        A5(I+1) = B5(I)*A5(I)+C5(I)
        A6(I+1) = B6(I)*A6(I)+C6(I)
        A7(I+1) = B7(I)*A7(I)+C7(I)
        A8(I+1) = B8(I)*A8(I)+C8(I)
        A9(I+1) = B9(I)*A9(I)+C9(I)
        A10(I+1) = B10(I)*A10(I)+C10(I)
        A11(I+1) = B11(I)*A11(I)+C11(I)
        A12(I+1) = B12(I)*A12(I)+C12(I)
        A13(I+1) = B13(I)*A13(I)+C13(I)
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
      B1(I)=C1(I)+1
      B2(I)=C2(I)+1
      B3(I)=C3(I)+1
      B4(I)=C4(I)+1
      B5(I)=C5(I)+1
      B6(I)=C6(I)+1
      B7(I)=C7(I)+1
      B8(I)=C8(I)+1
      B9(I)=C9(I)+1
      B10(I)=C10(I)+1
      B11(I)=C11(I)+1
      B12(I)=C12(I)+1
      B13(I)=C13(I)+1
      B14(I)=C14(I)+1
      B15(I)=C15(I)+1
      B16(I)=C16(I)+1
      B17(I)=C17(I)+1
      IF(RC1.EQ.1) THEN
        A1(I+1) = B1(I)*A1(I)+C1(I)
        A2(I+1) = B2(I)*A2(I)+C2(I)
        A3(I+1) = B3(I)*A3(I)+C3(I)
        A4(I+1) = B4(I)*A4(I)+C4(I)
        A5(I+1) = B5(I)*A5(I)+C5(I)
        A6(I+1) = B6(I)*A6(I)+C6(I)
        A7(I+1) = B7(I)*A7(I)+C7(I)
        A8(I+1) = B8(I)*A8(I)+C8(I)
        A9(I+1) = B9(I)*A9(I)+C9(I)
        A10(I+1) = B10(I)*A10(I)+C10(I)
        A14(I+1) = B14(I)*A14(I)+C14(I)
        A15(I+1) = B15(I)*A15(I)+C15(I)
        A16(I+1) = B16(I)*A16(I)+C16(I)
        A17(I+1) = B17(I)*A17(I)+C17(I)
        A11(I+1) = B11(I)*A11(I)+C11(I)
        A12(I+1) = B12(I)*A12(I)+C12(I)
        A13(I+1) = B13(I)*A13(I)+C13(I)
      ENDIF
  30  CONTINUE

      WRITE(6,*) A1,A2,A3,A4,A5,A6,A7,A8,A9,A10
      WRITE(6,*) A11,A12,A13,A14,A15,A16,A17
      STOP
      END
