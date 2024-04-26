      REAL*8    A(10)
      REAL*4    B(10),C(10)
      DATA    A/1,2,3,4,5,6,7,8,9,10/
      DATA    B/10*2/
      DATA    C/10*3/
      DO 10 I=1,10
        A(I)=DPROD(B(I),C(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
