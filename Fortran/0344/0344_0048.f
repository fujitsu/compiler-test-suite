      REAL    A1(10),A2(10),A3(10)
      REAL    B1(10),B2(10),B3(10)
      REAL    C1(10),C2(10),C3(10)
      REAL    D1(10),D2(10),D3(10)
      DATA    A1/10*0./,A2/10*1./,A3/10*2./
      DATA    B1/10*0./,B2/10*3./,B3/10*1./
      DATA    C1/10*0./,C2/10*2./,C3/10*3./
      DATA    D1/10*0./,D2/10*9./,D3/10*2./
      DO 10 I=1,10
        A1(I)=A2(I)+A3(I)
        B1(I)=B2(I)-B3(I)
        C1(I)=C2(I)*C3(I)
        D1(I)=D2(I)/D3(I)
   10 CONTINUE
      WRITE(6,*) A1
      WRITE(6,*) B1
      WRITE(6,*) C1
      WRITE(6,*) D1
      STOP
      END
