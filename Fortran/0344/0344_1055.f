      PARAMETER(M=8)
      REAL A(50),B(50),C(50)
      DATA A/50*0.0/,B/50*1.0/,C/50*2.0/,N/6/
C
      DO 10 I=1,N
         A(I) = B(I) + C(I)
   10 CONTINUE
      WRITE(6,1) A
C
      DO 20 I=7,N+6
         A(I) = B(I) + C(I)
   20 CONTINUE
      WRITE(6,1) A
C
    1 FORMAT(1H ,10F5.1)
      STOP
      END
