      REAL A(10)/10*1/,B(10)/10*2/
      DO 1 I=1,5
       A(I)=B(I)+I
       A(I+5)=I
       B(I+5)=I
       B(I)=B(I)+A(I+5)
       A(I)=A(I)+B(I+5)
1     CONTINUE
       WRITE(6,*) A,B
      STOP
      END
