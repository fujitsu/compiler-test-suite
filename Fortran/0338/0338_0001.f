      REAL A(10,10)/100*1/,B(10,10)/100*2/,C(10,10)/100*1/
      DO 1 J=2,9
      DO 2 I=2,9
2     A(2,J)=A(2,J)*B(I,J)+C(I,J)

      DO 1 I=2,9
1     A(1,J)=A(1,J)*B(I,J)+C(I,J)
      WRITE(6,*) A
      STOP
      END
