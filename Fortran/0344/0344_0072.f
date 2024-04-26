      INTEGER*4 IA(10),IB(10)
      REAL*4    RA(10),RB(10)
      COMPLEX*8 CA(10),CB(10)
      DATA      IA/10*0/,IB/10*2/
      DATA      RA/10*0/,RB/10*2/
      DATA      CA/10*(0.,0.)/,CB/10*(2.,0.)/
      DATA      N/2/
      DO 10 I=1,10
        RA(I) = SIN(RB(1))
        CA(I) = CSIN(CB(1))
  10  CONTINUE
      WRITE(6,*) RA
      WRITE(6,*) CA
      DO 20 I=1,10
        IA(I) = IB(1)**N
        RA(I) = RB(1)**N
        CA(I) = CB(1)**N
  20  CONTINUE
      WRITE(6,*) IA
      WRITE(6,*) RA
      WRITE(6,*) CA
      STOP
      END
