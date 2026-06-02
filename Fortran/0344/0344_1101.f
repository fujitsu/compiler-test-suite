      CHARACTER*9  A(5),B(5)
      DATA         B/5*'ABCDEFG  '/
      DO 10 I=1,5
        A(I)=B(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
