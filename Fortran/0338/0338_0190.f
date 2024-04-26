      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*5/
      DO 1 I=1,10
1     A(I)=B(I)/C(1)
       WRITE(6,*) A
      STOP
      END
