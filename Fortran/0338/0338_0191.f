      REAL A(10)/10*1/
      INTEGER N(10)/10*10/

      DO 1 I=1,1
1     A(I)=I

      DO 2 I=1,2
2     A(I)=I+A(I)

      DO 3 I=1,3
3     A(I)=I+A(I)

      DO 4 I=1,4
4     A(I)=I+A(I)

      DO 5 I=1,5
5     A(I)=I+A(I)

      DO 6 I=1,6
6     A(I)=I+A(I)

      DO 7 I=1,7
7     A(I)=I+A(I)

      DO 8 I=1,8
8     A(I)=I+A(I)

      DO 9 I=1,9
9     A(I)=I+A(I)

      DO 10I=1,10
10    A(I)=I+A(I)

      DO 11I=1,N(1)
11    A(I)=I+A(I)
       WRITE(6,*) A
      STOP
      END
