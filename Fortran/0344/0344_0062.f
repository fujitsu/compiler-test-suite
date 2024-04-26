      INTEGER*4  L(10)
      COMPLEX*8  A(10),B(10)
      COMPLEX*16 C(10),D(10)
      DATA       L/2,4,6,8,10,9,7,5,3,1/
      DATA       A/10*(0.,0.)/,B/5*(1.,3.),5*(2.,4.)/
      DATA       C/10*(0.,0.)/,D/5*(3.,4.),5*(5.,6.)/
      DO 10 I=1,10
        A(I)=B(L(I))
        C(I)=D(L(I))
   10 CONTINUE
      WRITE(6,*) A
      WRITE(6,*) C
      STOP
      END
