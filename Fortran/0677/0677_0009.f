      INTEGER *4 A(32),B(32)/32*32/
      DO 10 I=1,32
       A(I)=B(I)
 10   CONTINUE
      WRITE(6,*) A
      STOP
      END
