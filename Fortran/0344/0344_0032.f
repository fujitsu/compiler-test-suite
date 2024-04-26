      REAL*4    A(10),X
      DATA      A/10*0./
      DATA      X/3./
      DO 10 I=1,10
        A(I) = X
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
