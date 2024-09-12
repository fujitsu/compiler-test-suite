      REAL*8 A(10),B(10),C(10),D(10,10),E(10,10),F(10,10)
      DATA B/10*1./,C/10*1./,N/10/
      DATA E/100*1./,F/100*1./

      DO 10 I=1,10
        A(I)=B(I)
        DO 20 J=1,10
20        D(I,J)=E(I,J)+F(I,J)
10      C(I)=0.0
      WRITE(6,*)A,B,C
      END
