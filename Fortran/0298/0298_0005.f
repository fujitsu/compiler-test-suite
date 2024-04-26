      REAL A(10,10)/100*1/,B(10,10)/100*2/,C(10,10)/100*3/
      DO 3 J=5,7
      DO 3 I=1,10
       A(I,J)=A(I,J+1)
       A(I,J+1)=A(I,J+2)+C(I,J)
       A(I,J+2)=A(I,J+3)+C(I,J)
       B(I,J)=B(I,J+1)
       B(I,J+1)=B(I,J+2)+C(I,J)
3      B(I,J+2)=B(I,J+3)+C(I,J)
      SB=0
      DO 4 J=1,10
      DO 4 I=1,10
4      SB=SB+B(I,J)
       WRITE(6,*) SB
      STOP
      END

