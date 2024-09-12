      INTEGER *4 A(1024),B(1024)/1024*1024/
      DO 10 I=1,1024
       A(I)=B(I)
 10   CONTINUE
      WRITE(6,*) A
      STOP
      END
