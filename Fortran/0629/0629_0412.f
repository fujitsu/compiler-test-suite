      INTEGER*4 X(10000)/10000*1.0/
      INTEGER*4 S(10)/10*0/
      DO 10 J=1,10
        DO 10 I=1,10000
          S(1)=S(1)+X(I)
  10  CONTINUE
      WRITE(6,*) S(1)
      STOP
      END
