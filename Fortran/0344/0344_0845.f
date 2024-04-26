      DOUBLE PRECISION A(20),B(20,20),T
      DATA A,B/20*2.0,20*-2.0,3.0,1.2,100*1.0,200*0.5,9.0,77*2.2/
      INTEGER I

      DO 10 I=1,10
         A(I+2)=B(3,I)-B(I+1,I+1)
         A(I+2)=B(3,I)*A(I)+B(21-I,20)
         A(I  )=B(21-I,20)+A(I)+B(I+1,I+1)
   10 CONTINUE

      
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END
