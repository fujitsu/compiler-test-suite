      INTEGER A(10),B(10)
      LOGICAL L(10)
      DATA    L/10*.FALSE./
      DATA    A/10*2/
      DATA    B/1,0,1,0,1,0,1,0,1,0/
      DO 10 I=1,10
        L(I)=A(I).GT.B(I)
   10 CONTINUE
      WRITE(6,*) L
      STOP
      END
