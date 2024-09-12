      INTEGER *4 A(512),B(512)/512*512/
      DO 10 I=1,512
       A(I)=B(I)
 10   CONTINUE
      WRITE(6,*) A
      STOP
      END
