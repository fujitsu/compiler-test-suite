      COMPLEX*8 A(10)/10*(0.,1.)/,B(10)/10*(3.,3.)/,S/0/
      DO 10 I=1,10
        S=A(I)+B(I)
   10 CONTINUE
      WRITE(6,*) S
      STOP
      END
