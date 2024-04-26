      REAL*4  A(20),B(20),C(20)
      DATA  A,B,C/60*1./
      X=0.
      DO 10 I=1,20
        X=A(I)+B(I)
        X=SIN(X)+C(I)
        X=COS(X)+A(I)
        A(I)=X
 10   CONTINUE
      WRITE(6,*) A
      STOP
      END
