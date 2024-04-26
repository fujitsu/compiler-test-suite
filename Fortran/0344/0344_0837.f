      DOUBLE PRECISION A(20),B(20),C(20)
      DATA A,B,C/10*2.0,20*-2.0,20*9.0,10*1.0/
      INTEGER I

      DO 10 I=1,9
         A(I+1)=A(I)*B(I)-B(I+1)
         C(I+2)=C(I)*B(I)-B(I+1)
   10 CONTINUE

      
      WRITE (6,100) A
      WRITE (6,100) C
  100 FORMAT((' ',6G13.5))
      STOP
      END
