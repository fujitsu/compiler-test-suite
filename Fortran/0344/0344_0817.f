      COMPLEX A(20),B(20),T
      DATA A,B/20*(2.0,1.0),20*(-1.0,2.0)/
      INTEGER I

      DO 10 I=1,10
         T=A(I)
         A(I+2)=T*2.0
         A(I)=SQRT(T)*B(I)-B(I+1)
   10 CONTINUE

      
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END
