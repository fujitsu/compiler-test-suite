      INTEGER*4 A(10)
      DATA A/10*0/,N/10/

      DO 10 I=1,N
10        A(I)=I
      WRITE(6,*)A,I
      END
