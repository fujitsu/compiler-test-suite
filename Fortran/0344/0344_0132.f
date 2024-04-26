      INTEGER*4 A(10),B(10),T,S
      DATA  A,B/10*1,10*2/
      DO 10 I=1,10
       T=A(I)+B(I)
       S=T*I
       A(I) = S + A(I)
   10 CONTINUE
      WRITE(6,*) S
      WRITE(6,*) A
      STOP
      END
