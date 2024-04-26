      REAL*4 X/1.0/
      J=0
      DO 10 I=1,10000
        J=J+X
  10  CONTINUE
      WRITE(6,*) J
      END
