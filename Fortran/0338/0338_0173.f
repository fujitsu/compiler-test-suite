      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*1/
      DO 1 I=2,9
      A(I)=B(I)+B(I-1)+B(I+1)+C(I)+C(I-1)+C(I+1)
1     A(I)=B(I)*B(I-1)*B(I+1)*C(I)*C(I-1)*C(I+1)*A(I)
      WRITE(6,*) A
      STOP
      END
