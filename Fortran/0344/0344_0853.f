      DOUBLE PRECISION A(20),B(20),T
      DATA A,B/20*2.0,20*-2.0/
      INTEGER I

      DO 10 I=1,10
         A(I+2)=SIN(B(I))-B(I+1)
         IF (MOD(I,3).GE.1) THEN
         A(I+2)=B(I)*A(I)
         ENDIF
   10 CONTINUE

      
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END
