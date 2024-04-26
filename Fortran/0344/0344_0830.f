      DOUBLE PRECISION A(20),B(20),T
      DATA A,B/20*2.0,20*-3.0/
      INTEGER I,N
      LOGICAL L1(10)/.FALSE.,3*.TRUE.,3*.FALSE.,3*.TRUE./
      LOGICAL L2(10)/.FALSE.,1*.TRUE.,5*.FALSE.,3*.TRUE./

      N=4*INT(COSH(0.0))
      DO 10 I=1,10
         T=A(I)
         IF (L1(3)) THEN
            A(I+2)=-T
            A(I)=T*B(I)-B(I+1)*A(I)
         ENDIF
         IF (L2(N)) THEN
            A(I)=T*B(I+1)-B(I+2)*A(I)
         ENDIF
   10 CONTINUE

      
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END
