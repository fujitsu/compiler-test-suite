      REAL A(10)/10*1/,B(10)/10*2.1/,C(10)/10*3.6/
      DO 1 I=2,9
1     A(I)=AINT(B(I))+NINT(C(I))
      WRITE(6,*) A
      STOP
      END
