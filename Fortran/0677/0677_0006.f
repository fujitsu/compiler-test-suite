      INTEGER *4 A(256),B(256)/256*256/
      DO 10 I=1,256
       A(I)=B(I)
 10   CONTINUE
      WRITE(6,*) A
      STOP
      END
