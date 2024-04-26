      REAL    A(10)
      DATA    A/10*2./
      DO 10 I=1,10
        A(I)=A(I)+A(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
