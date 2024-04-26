      REAL A(10)/10*1/,B(10)/10*2/,C(10)/10*0/
      DO 1 I=3,7
       A1=A(I)
       A2=A(I+1)
       A3=A(I+2)
       A4=A(I-1)
       A5=A(I-2)
       A6=A1+A2+A3+A4+A5
       B1=B(I)
       B2=B(I+1)
       B3=B(I+2)
       B4=B(I-1)
       B5=B(I-2)
       B6=B1*B2*B3*B4*B5
1      C(I)=A6+B6
       WRITE(6,*) C
      STOP
      END
