      INTEGER*4  A(10),B(10)
      DATA       A/10*0/,B/10*8/
      DATA       N/5/
      DO 10 I=1,N
        A(I)=ISHFT(B(I),N)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
