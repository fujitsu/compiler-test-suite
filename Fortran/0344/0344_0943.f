      REAL*4  A(100),B(100),C(100)
      REAL*8  D(100),E(100),F(100)
      DATA A/100*0.0/,B/100*1.0/,C/100*2.0/,N/100/
      DATA D/100*0.0/,E/100*1.0/,F/100*2.0/
      DO 10 I=1,N
         A(I) =  SIN(B(I)) + C(I)
   10 CONTINUE
      WRITE(6,100) (A(I),I=1,N)
C
      DO 20 I=1,N
         D(I) =  SIN(E(I)) + F(I)
   20 CONTINUE
      WRITE(6,100) (D(I),I=1,N)
  100 FORMAT(1H ,5f10.5)
      STOP
      END
