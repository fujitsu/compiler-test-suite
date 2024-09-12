      INTEGER*2 NC2
      INTEGER*4 NC4
      INTEGER*2 MNC2
      INTEGER*4 MNC4
      LOGICAL*1 L1
      LOGICAL*4 L4
      INTEGER*2 I2
      INTEGER*4 I4
      L1=.TRUE.
      L4=.TRUE.
      NC2=5
      NC4=5
      MNC2=-5
      MNC4=-5
      I2=2
      I4=3
      WRITE(6,*) NOT(I2)
      WRITE(6,*) NOT(I4)
      WRITE(6,*) IAND(I2,I2)
      WRITE(6,*) IAND(I4,I4)
      WRITE(6,*) IOR(I2,I2)
      WRITE(6,*) IOR(I4,I4)
      WRITE(6,*) IEOR(I2,I2)
      WRITE(6,*) IEOR(I4,I4)
      WRITE(6,*) ISHFT(I2,NC2)
      WRITE(6,*) ISHFT(I4,NC2)
      WRITE(6,*) ISHFT(I2,NC4)
      WRITE(6,*) ISHFT(I4,NC4)
      WRITE(6,*) IBSET(I2,NC2)
      WRITE(6,*) IBSET(I4,NC2)
      WRITE(6,*) IBSET(I2,NC4)
      WRITE(6,*) IBSET(I4,NC4)
      WRITE(6,*) IBCLR(I2,NC2)
      WRITE(6,*) IBCLR(I4,NC2)
      WRITE(6,*) IBCLR(I2,NC4)
      WRITE(6,*) IBCLR(I4,NC4)
      WRITE(6,*) BTEST(I2,NC2)
      WRITE(6,*) BTEST(I4,NC2)
      WRITE(6,*) BTEST(I2,NC4)
      WRITE(6,*) BTEST(I4,NC4)
      WRITE(6,*) '*****PASS*****'
      STOP
      END
