      REAL A(10)/10*1/,B(10)/10*2/
      DO 1 I=1,10
       A(I)=B(I)+I
       A(I)=A(I)+1.0
1      A(I)=A(I)+2.0
       WRITE(6,*) A
      STOP
      END
