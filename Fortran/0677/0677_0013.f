      INTEGER*4 A(10)/10*10/
      DO 10 I=1,10,2
      A(I)=0
 10   CONTINUE

      DO 20 I=1,8
      A(I)=1+1
20    CONTINUE
      WRITE(6,*) A
      STOP
      END
