      REAL A(10,10)/100*1/,B(10,10)/100*2/,C(10,10)/100*3/
      DO 1 J=1,10
      B(1,J)=J
      DO 1 I=3,10
1      A(I,J)=A(I,J)+C(I,J)

      DO 2 I=1,10
      T=C(I,1)
      DO 2 J=1,9
2      B(I,J+1)=A(I,J)*T
      SA=0
      SB=0
      SC=0
      DO 4 I=1,10
       SA=SA+A(I,2)
       SB=SB+B(I,3)
4      SC=SC+C(I,4)
       WRITE(6,*) SA,SB,SC
      STOP
      END
