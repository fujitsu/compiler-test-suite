      REAL A(10,10)/100*1/,B(10,10)/100*2/,C(10,10)/100*3/
      DO 1 J=1,10
      DO 1 I=3,10
       SA=B(I,J)
1      A(1,1)=A(I,J)+C(I,J)
      SB=0
      SC=0
      DO 4 I=1,10
       SA=SA+A(I,2)
       SB=SB+B(I,3)
4      SC=SC+C(I,4)
       WRITE(6,*) SA,SB,SC
      STOP
      END
