      REAL*8 A(10000)/10000*1.0/
      REAL*4 S(10)/10*0.0/
      DO 10 I=1,10000
        S(1)=S(1)+A(I)
  10  CONTINUE
      WRITE(6,*) S(1),I
      STOP
      END
