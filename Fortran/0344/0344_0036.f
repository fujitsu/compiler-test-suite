      REAL       A(10)
      COMPLEX    B(10)
      DATA       A/10*3/
      DO 10 I=1,10
        B(I)=COS(CMPLX(A(I),A(I)))
   10 CONTINUE
      WRITE(6,*) B
      STOP
      END
