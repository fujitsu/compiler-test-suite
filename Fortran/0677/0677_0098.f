      DIMENSION A(10,10),B(10,10),C(10,10)
      DATA A/100*0./
      DATA B/100*1./,C/100*1./

      DO 10 I=1,10
10        A(1,I)=B(2,I)+C(3,I)
      WRITE(6,*)A,B,C
      END
