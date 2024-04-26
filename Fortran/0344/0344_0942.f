      INTEGER B(100),C(100)
      INTEGER A(100)
      DATA A/100*0/,B/100*1/,C/100*2/,N/100/
      DO 10 I=1,N
         A(I) =  IBSET(B(I),C(I))
   10 CONTINUE
      WRITE(6,100) (A(I),I=1,N)
  100 FORMAT(1H ,3I4)
      STOP
      END
