      REAL A(10)/10*1/
      DO 1 I=2,9
1     A(I)=SQRT(A(I))
      WRITE(6,*) A
      STOP
      END
