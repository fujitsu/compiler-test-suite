      INTEGER *4 A(64),B(64)/64*64/
      DO 10 I=1,64
       A(I)=B(I)
 10   CONTINUE
      WRITE(6,*) A
      STOP
      END
