      REAL A(10)/10*1/,B(5000)
      DO 1 I=1,5000
 1    B(I)=I
      DO 2 I=1,10
 2    A(I)=I
      WRITE(6,*) B(1),B(2048),B(2049),A(1),A(10)
      STOP
      END
