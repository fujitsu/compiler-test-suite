      INTEGER*4 C(10)
      DATA      C/10*0/
      DO 10 I=1,10
        C(3)=3
   10 CONTINUE
      WRITE(6,*) C
      STOP
      END
