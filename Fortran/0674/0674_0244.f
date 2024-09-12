      PROGRAM MAIN
      REAL*4  A(10000,50)/500000*1/
      REAL*4  B(10000)/10000*0/
      DO 1111 J=1,10000
      DO 1111 I=1,50
1111    A(J,I)=J-I

      DO 1 J=1,2
      DO 1 I=2,9
1       A(I+1,J)=A(I,J)+1.2

      DO 2 J=3,4
      DO 2 I=1,10
2      A(I,J)=A(I+1,J)+1.5

      DO 3 J=1,6
      DO 3 I=1,10
      B(I)=A(I,J+00)+A(I,J+01)+A(I,J+02)+A(I,J+03)+A(I,J+04)+A(I,J+05)+
     1     A(I,J+06)+A(I,J+07)+A(I,J+08)+A(I,J+09)+A(I,J+10)+A(I,J+11)+
     2     A(I,J+12)+A(I,J+13)+A(I,J+14)+A(I,J+15)+A(I,J+16)+A(I,J+17)+
     3     A(I,J+18)+A(I,J+19)+A(I,J+20)+A(I,J+21)+A(I,J+22)+A(I,J+23)+
     4     A(I,J+24)+A(I,J+25)+A(I,J+26)+A(I,J+27)+A(I,J+28)+A(I,J+29)+
     5     A(I,J+30)+A(I,J+31)+A(I,J+32)+A(I,J+33)+A(I,J+34)+A(I,J+35)+
     1     A(I,J+36)+A(I,J+37)+A(I,J+38)+A(I,J+39)+A(I,J+40)+A(I,J+41)+
     2     A(I,J+42)+A(I,J+43)+A(I,J+44)
3     CONTINUE
      DO 4 J=7,10
      DO 4 I=1,10
      B(I)=A(I+00,J)+A(I+01,J)+A(I+02,J)+A(I+03,J)+A(I+04,J)+A(I+05,J)+
     1     A(I+10,J)*A(I+11,J)*A(I+12,J)*A(I+13,J)+A(I+14,J)+A(I+15,J)+
     2     A(I+20,J)+A(I+21,J)+A(I+22,J)+A(I+23,J)+A(I+24,J)+A(I+25,J)
4     CONTINUE
      DO 5 J=11,13
      DO 5 I=1,10
      A(I,14)=A(I+30,J)+A(I+31,J)+A(I+32,J)+A(I+33,J)+A(I+34,J)+
     1     A(I+40,J)*A(I+41,J)*A(I+42,J)*A(I+43,J)+A(I+44,J)+A(I+45,J)+
     2     A(I+50,J)+A(I+51,J)+A(I+52,J)+A(I+53,J)+A(I+54,J)+A(I+55,J)+
     4     A(I+150,J)+A(I+151,J)+A(I+152,J)+A(I+153,J)+A(I+154,J)
5     CONTINUE
      DO 101 I=1,20
      DO 101 J=1,10
      WRITE(6,*) A(I,J),B(I)
  101 CONTINUE
      DO 102 I=9981,10000
      DO 102 J=41,50
      WRITE(6,*) A(I,J),B(I)
  102 CONTINUE
      STOP
      END
