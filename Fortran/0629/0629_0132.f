      INTEGER*4 X(10000)/10000*1.0/
      INTEGER*4 S(10)/10*0/
      DO 10 J=1,100
        DO 10 I=1,1000
          S(1)=S(1)+X(I)
  10  CONTINUE
      WRITE(6,*) S(1)
      DO 20 J=1,100
        DO 20 I=1,1000
          S(2)=S(2)+X(I)
  20  CONTINUE
      WRITE(6,*) S(2),I,J
      STOP
      END
