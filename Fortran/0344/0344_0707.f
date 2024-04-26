      REAL*4 A(10000)/10000*0.0/
      DO 10 I=1,10000
        A(I)=A(I)+1.0
  10  CONTINUE
      WRITE(6,*) A(1),I
      END
