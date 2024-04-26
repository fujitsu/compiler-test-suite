      DOUBLE PRECISION A(20),B(20,20),T
      DATA A,B/20*2.0,20*-2.0,3.0,1.2,100*1.0,200*0.5,9.0,77*2.2/
      INTEGER I

      DO 10 I=2,10
         A(I+2)=B(3,I)-B(I+1,I+1)
         A(I+2)=B(3,I)*A(I)+B(21-I,20)
         IF (MOD(I,3).GE.1) THEN
         A(I  )=B(21-I,20)*A(I)+B(I+1,I+1)
         IF (I.GE.5) THEN
         A(I-1)=(B(21-I,20)*A(I-1)-B(I+1,I+1))*B(3,I)
         ENDIF
         ENDIF
   10 CONTINUE

      
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END
