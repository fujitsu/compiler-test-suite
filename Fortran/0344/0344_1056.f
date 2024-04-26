      PARAMETER(M=2)
      INTEGER A(10)
      DATA A/10*0/,N/2/
C
      DO 10 I=1,N
         A(I) = A(I) + I
   10 CONTINUE
      WRITE(6,*) A
C
      DO 20 I=3,M+2
         A(I) = A(I) + I
   20 CONTINUE
      WRITE(6,*) A
C
      STOP
      END
