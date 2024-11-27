      INTEGER     A(100,100),B(100)

      DO 40 i=1,100
         B(i)=0
         DO 30 j=1,100
            A(j,i)=0
 30      CONTINUE
 40      CONTINUE

      WRITE(6,*) A(100,100),B(10)
      END
