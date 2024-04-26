      REAL    A(10)
      DATA    A/10*0./
      DATA    N/5/
      DO 10 I=1,10
        A(I)=A(I)+N
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
