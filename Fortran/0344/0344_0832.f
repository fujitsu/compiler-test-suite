      DOUBLE PRECISION A(20),B(20),T/3.3/
      DATA A,B/20*2.0,20*-2.0/
      INTEGER I

      DO 10 I=1,10
         T=T+A(I)
         A(I+2)=-A(I)
   10 CONTINUE

      
      WRITE (6,100) T,A
  100 FORMAT((' ',6G13.5))
      STOP
      END
