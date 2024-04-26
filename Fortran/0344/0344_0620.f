      REAL A(100)/100*1.0/,B(100)/100*2.0/
      DO 10 I=6,100
10    A(I)=A(I-5)+B(I)
      WRITE(6,*) A
      END
