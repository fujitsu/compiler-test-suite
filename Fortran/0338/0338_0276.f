      INTEGER*4   A(10)
      DATA A/0,0,0,0,5,0,0,0,0,0/
      DO 100 I=1,10
       A(I) = I
  100 CONTINUE
      WRITE(6,*) A
      STOP
      END
