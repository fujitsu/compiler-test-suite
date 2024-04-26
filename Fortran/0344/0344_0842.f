      DOUBLE PRECISION A(20),B(20),X
      DATA A,B/10*2.0,20*-2.0,10*1.0/
      INTEGER I,J
      LOGICAL L(10)/.FALSE.,3*.TRUE.,3*.FALSE.,3*.TRUE./

      J=1
      X=B(J)
      DO 10 I=2,10
         A(I+2)=A(I+2)+B(I)
         IF (L(I)) THEN
            A(I+2)=A(I)+B(I)
         ELSE
            IF (X.LT.B(I)) THEN
               X=B(I)
               J=I
            ENDIF
         ENDIF
   10 CONTINUE

      
      WRITE (6,100) A
      WRITE (6,100) J,X
  100 FORMAT((' ',6G13.5))
      STOP
      END
