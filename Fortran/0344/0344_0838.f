      DOUBLE PRECISION A(20),B(20),C(20)
      DATA A,B,C/10*2.0,20*-2.0,20*3.0,10*1.0/
      LOGICAL L(20)
      DATA L/3*.FALSE.,5*.TRUE.,12*.FALSE./
      INTEGER I,J

      J=0
      DO 10 I=1,9
         IF (L(I)) THEN
            J=J+1
            A(J)=B(I)
            C(I+2)=C(I)+B(I)
         ENDIF
   10 CONTINUE

      
      WRITE (6,100) A
      WRITE (6,100) C
  100 FORMAT((' ',6G13.5))
      STOP
      END
