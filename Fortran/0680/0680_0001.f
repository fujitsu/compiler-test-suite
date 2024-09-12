      DIMENSION A(20),B(20),C(20)
      DATA B/20*1.0/,C/20*2.0/,S/5./

      DO 10 I=1,20
        A(I) = B(I)*S+C(I)
  10  CONTINUE

      DO 20 I=1,10
        A(I) = B(I)*S-C(I)
  20  CONTINUE

      WRITE(6,*) A
      STOP
      END
