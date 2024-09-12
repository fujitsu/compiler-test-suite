      PROGRAM MAIN
      REAL*8    A(30,30),B(30,30),C(30,30),D(30,30)
      INTEGER*4 L1(30),L2(30),L3(30)

      DATA     IT1/1/,IT2/2/,IT3/3/,IT4/4/,IT5/10/
      DATA     A,B,C,D/900*1.D0,900*2.D0,900*3.D0,900*4.D0/
      DO 10 I=1,30
        L1(I) = I
        L2(I) =31-I
        L3(I) = I-IT4
        IF ( L3(I).LT.1 ) L3(I)=1
  10  CONTINUE

      DO 20 J=1,L1(10)
        N1 = J+IT1+IT2
        N2 = J+IT5+1
        DO 20 I=2,N2
         N3=I+IT1+1
         N4=I+IT2-1
         A(N1,N3) = B(N1,N4)+C(N3,I+IT3)
         B(J+IT3+IT2,I-1+IT3)= D(N1,N2)*2.D0
         C(N3,IT3-1+I)= D(N1,N3)+2.D0
  20  CONTINUE

      DO 30 J=1,L1(10)
        LL1= L2(J)-2
        LL2= L3(J)+1
        N1 = J+IT1+IT2
        N2 = J+IT5+1
        DO 30 I=2,N2
         N3=I+IT1+1
         N4=I+IT2-1
         A(N2,N3) = B(N2,IT3+I-1)+C(N4,I+IT3)
         B(J+IT3+IT2,I-1+IT3)= D(N1,N2)*2.D0
         C(N3,IT3-1+I)= D(N1,N3)+2.D0
         L1(LL1)=L1(LL1)+LL2*I
         D(IT2-1+J,N2-IT5)=2.D0
  30  CONTINUE

      WRITE(6,*) A
      WRITE(6,*) B
      WRITE(6,*) C
      STOP
      END
