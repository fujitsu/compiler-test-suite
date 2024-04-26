      DOUBLE PRECISION A(20),B(20),T
      DATA A,B/20*2.0,20*-2.0/
      INTEGER I

      DO 10 I=1,10
         A(I+4)=B(I)-A(I+2)
         A(I+2)=B(I)-B(I+1)
         A(I+2)=B(I)*A(I)
         A(I  )=B(I)+A(I)+B(I+1)
   10 CONTINUE

      
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END
