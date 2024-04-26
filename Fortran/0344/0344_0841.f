      DOUBLE PRECISION A(20),B(20),X
      DATA A,B/10*2.0,20*-2.0,10*1.0/
      INTEGER I
      LOGICAL L(10)/.FALSE.,3*.TRUE.,3*.FALSE.,3*.TRUE./

      X=0.0
      DO 10 I=2,10
         A(I+2)=A(I+2)-B(I)
         IF (L(I)) THEN
            X=X+B(I)
         ELSE
            A(I+2)=A(I)+B(I)
         ENDIF
   10 CONTINUE

      
      WRITE (6,100) A
      WRITE (6,100) X
  100 FORMAT((' ',6G13.5))
      STOP
      END
