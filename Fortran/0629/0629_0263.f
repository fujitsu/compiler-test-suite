      REAL * 4 A(1200000),B(1200000),C(1200000),D(1200000)
      DATA N/10/
      data a/1200000*0/,b/1200000*5/,c,d/2400000*2/

      DO 13 I=2,1000000
        A(I-1)=D(I)
        A(I)=B(I)+C(I)
13    CONTINUE
      WRITE(6,*) ' NO.13 ',A(2)
      END