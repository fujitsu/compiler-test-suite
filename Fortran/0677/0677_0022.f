      INTEGER*4 A(10),B(10),C(10)/10*0/

      DO 10 I=1,10
        A(I) = C(I)
        B(I) = C(I)+(A(I)+1)
10    CONTINUE

      WRITE(6,*) A,B,C
      STOP
      END
