      INTEGER*4 IA(10),IB(10),IC(10)
      REAL*4    RA(10),RB(10)
      COMPLEX*8 CA(10),CB(10)
      DATA      IA/10*0/,IB/10*2/,IC/10*2/
      DATA      RA/10*0/,RB/10*2/
      DATA      CA/10*(0.,0.)/,CB/10*(2.,0.)/
      DATA      N/2/
      DO 10 I=1,10
        IA(I) = IB(I)**N
        RA(I) = RB(I)**N
        CA(I) = CB(I)**N
  10  CONTINUE
      WRITE(6,*) IA
      WRITE(6,*) RA
      WRITE(6,*) CA
      DO 20 I=1,10
        IA(I) = IB(I)**IC(1)
        RA(I) = RB(I)**IC(1)
        CA(I) = CB(I)**IC(1)
  20  CONTINUE
      WRITE(6,*) IA
      WRITE(6,*) RA
      WRITE(6,*) CA
      DO 30 I=1,10
        IA(I) = IB(I)**2
        RA(I) = RB(I)**2
        CA(I) = CB(I)**2
  30  CONTINUE
      WRITE(6,*) IA
      WRITE(6,*) RA
      WRITE(6,*) CA
      DO 40 I=1,10
        IA(I) = IB(I)**IC(I)
        RA(I) = RB(I)**IC(I)
        CA(I) = CB(I)**IC(I)
  40  CONTINUE
      WRITE(6,*) IA
      WRITE(6,*) RA
      WRITE(6,*) CA
      STOP
      END
