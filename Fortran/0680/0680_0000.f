      REAL A(10),B(10),A1(10),A2(10),A3(10),A5(10)
      INTEGER C(10),A4(10)

      DO 1  I=1,10
        S=0.5
        A(I)=1
        B(I)=2
1       C(I)=3

        DO 10 I=1,10
10      A1(I)=A(I)*S+B(I)


        DO 20 I=1,10
20      A2(I)=A(I)*S-B(I)


        A3(1)=1
        DO 30 I=2,10
30      A3(I)=A3(I-1)*S+B(I)


        DO 40 I=1,10
40      A4(I)=ISHFT(C(I),I)


        DO 50 I=1,10
50      A5(I)=AINT(A(I))

        WRITE(6,*) A1,A2,A3,A4,A5
        STOP
        END
