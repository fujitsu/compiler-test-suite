      DOUBLE PRECISION A(20),B(20),X
      DATA A,B/10*2.0,20*-2.0,10*1.0/
      INTEGER I

      X=0.0
      DO 10 I=2,15
         X=X+B(I)
         A(I+2)=A(I)+B(I)
   10 CONTINUE

      
      WRITE (6,100) A
      WRITE (6,100) X
  100 FORMAT((' ',6G13.5))
      STOP
      END
