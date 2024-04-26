      DOUBLE PRECISION A(20),B(20),T
      DATA A,B/20*2.0,20*-2.0/
      INTEGER I,J

      DO 30 J=1,3
         DO 10 I=1,10
            T=A(I+2)*B(I)-B(I+1)
            IF (I.GT.7) GOTO 1
            A(I+2)=T*A(I)
   10    CONTINUE
         
    1    DO 20 I=14,18
            A(I)=A(I+2)/B(I)-B(I+1)
   20    CONTINUE
   30 CONTINUE

      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END
