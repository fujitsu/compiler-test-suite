      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*1/
      DO 1 J=1,10
      DO 1 I=J,10
1     A(I)=B(I)+C(I)
      WRITE(6,*) A
      STOP
      END
