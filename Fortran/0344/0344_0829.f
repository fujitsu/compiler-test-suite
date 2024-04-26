      DOUBLE PRECISION A(20),B(20),T,V
      DATA A,B/20*2.0,20*-3.0/
      INTEGER I,U,W
      LOGICAL L(10)/.FALSE.,3*.TRUE.,3*.FALSE.,3*.TRUE./

      DO 10 I=1,9
         T=A(I+10)*B(I)-B(I+1)
         A(I+10)=T*A(I+8)
         U=A(I+8)*B(I)-B(I+1)
         IF (L(I)) THEN
            A(I+8)=U*INT(A(I+6))
            V=A(I+4)*B(I)-B(I+1)
            A(I+4)=V*A(I+2)
            W=A(I+2)*B(I)-B(I+1)
            A(I+2)=W*INT(A(I))
         ENDIF
   10 CONTINUE

      
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END
