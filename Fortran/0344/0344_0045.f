      REAL    A(10),B(10)
      LOGICAL L(10)
      DATA    A/10*0./,B/10*2./
      DATA    L/10*.FALSE./
      DO 10 I=1,10
        L(I)=A(I).NE.B(I)
   10 CONTINUE
      WRITE(6,*) L
      STOP
      END
