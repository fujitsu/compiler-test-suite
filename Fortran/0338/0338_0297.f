      REAL A(100)/100*2/
      INTEGER L(10)/10*10/
      DO 1 I=2,L(2)
1     A(I)=1
      WRITE(6,*) A(1),A(10),A(11)
      STOP
      END
