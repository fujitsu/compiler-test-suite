      DIMENSION A(6)
      DATA A/6*1.0/
      DO 10 I=1,5
        A(I) = -A(I+1)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
