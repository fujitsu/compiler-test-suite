      INTEGER*4 A(10)
      DATA      A/10*0/
      DO 10 I=1,10
        A(I)=IABS(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
