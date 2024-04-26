      COMPLEX A(20),B(20,20),T
      DATA A,B/20*(2.0,1.0),20*(-2.0,0.1),(3.0,1.2),(-1,-1),
     +         100*(-2.0,1.0),200*(0.5,-1.0),(9.0,1.0),77*(3.3,2.2)/
      INTEGER I

      DO 10 I=1,10
         A(I+2)=B(3,I)-B(I+1,I+1)
         IF (MOD(I,3).GE.1) THEN
         IF (I.LE.5) THEN
         A(I+2)=B(3,I)*A(I)+B(21-I,20)
         ENDIF
         A(I  )=B(21-I,20)+A(I)+B(I+1,I+1)
         ENDIF
   10 CONTINUE

      
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END
