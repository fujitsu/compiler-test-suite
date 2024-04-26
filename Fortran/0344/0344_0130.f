      REAL A(10),B(10)
      DATA  A,B/20*1./
      DO 10 I=1,10
       T=A(I)+B(I)
       S=T*2.
   10 CONTINUE
      WRITE(6,*) S
      STOP
      END
