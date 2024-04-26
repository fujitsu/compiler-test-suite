      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*1/
      DO 1 I=2,9
      A(I)=A(I)*B(I)+C(I)
1     A(I)=A(I)+B(I)-C(I)
      WRITE(6,*) A

      DO 2 I=2,9
      A(I)=A(I)*B(I)+C(I)
2     A(I)=A(I)+B(I)-C(I)
      WRITE(6,*) A
      STOP
      END
