      REAL A(10)/10*0/,B(10)/10*1/
      DO 1 I=1,10
1     A(I)=B(I)
      WRITE(6,*) A
      STOP
      END
