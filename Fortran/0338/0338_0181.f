      REAL*8 A(10)/10*1/,B(10)/10*2/,C(10)/10*1/
      DO 1 I=2,9
1     A(I)=SQRT(SQRT(SQRT(B(I))+SQRT(C(I)+I)))
      WRITE(6,*) A
      STOP
      END
