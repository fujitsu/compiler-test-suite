      COMPLEX*8 A(10)/10*(0.,1.)/
      COMPLEX*8 B(10)/10*(3.,2.)/
      DO 10 I=1,10
        A(5)=B(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
