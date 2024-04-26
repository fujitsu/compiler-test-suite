      REAL A(10)/10*1/,B(10)/10*2/
      DO 1 I=2,9
       A(I)=B(I)
       A(I-1)=A(I)+B(I)
1      B(I)=I
      DO 2 I=1,5
      B(I)=B(6)
2     A(I)=A(5)
       WRITE(6,*) A,B
      STOP
      END
