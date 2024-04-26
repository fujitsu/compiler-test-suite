      REAL*8 A(10)/10*1/,B(10)/10*2/,C(10)/10*5/

      DO 1 I=1,10
      A(I)=B(I)/8.0
1     B(I)=A(I)/C(10)

      DO 2 I=1,10,2
      A(I)=B(1)+I*100
2     B(I)=FLOAT(I)
       WRITE(6,*) A,B
      STOP
      END
