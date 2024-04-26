      DOUBLE PRECISION A(20),B(20)
      DATA A,B/10*2.0,20*-2.0,10*1.0/
      INTEGER I,J

      J=1
      DO 10 I=2,15
         IF (B(J).LT.B(I)) THEN
            J=I
         ENDIF
         A(I+2)=A(I)+B(I)
   10 CONTINUE

      
      WRITE (6,100) A
      WRITE (6,100) J
  100 FORMAT((' ',6G13.5))
      STOP
      END
