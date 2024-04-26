      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*1/

      DO 1 I=2,9
1     A(I)=B(1)*B(I)+C(I)

      DO 2 I=2,9,2
2     A(I)=B(1)*B(I)-C(I)

      DO 3 I=1,10
      B(I)=A(I)*B(I)-C(I)
3     C(I)=B(I)*A(I)+C(I)
      WRITE(6,*) A,B,C
      STOP
      END
