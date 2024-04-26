      REAL A(10)/10*1/,B(10,10)/100*1/
      DO 1 J=1,10
      DO 1 I=1,10
1     A(I)=A(I)+B(I,J)

      DO 2 J=1,10
      DO 2 I=1,10
2     A(I)=A(I)+B(I,J)
      WRITE(6,*) A
      STOP
      END
