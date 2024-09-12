      PROGRAM MAIN
      INTEGER*4 IA(10),IB(10),IC(10),ID(10),ICM(10),IS1,IS2,IS1M,IS2M
      DATA IB/10*1/,IC/1,2,3,4,5,6,7,8,9,10/
      DATA ID/2,4,8,18,32,64,128,256,512,1024/
      DATA ICM/-1,-2,-3,-4,-5,-6,-7,-8,-9,-10/
      DATA IA/10*0/,IS1/5/,IS1M/-5/,IS2/1/,IS2M/-1/

      DO 10 I=1,10
        IA(I) = ISHFT(IB(I),IC(I))
  10  CONTINUE
      WRITE(6,*) ' IA = ',IA
      DO 11 I=1,10
        IA(I) = ISHFT(IA(I),-IC(I))
  11  CONTINUE
      WRITE(6,*) ' IA = ',IA
      DO 12 I=1,10
        IA(I) = ISHFT(ID(I),ICM(I))
  12  CONTINUE
      WRITE(6,*) ' IA = ',IA
      DO 13 I=1,10
        IA(I) = ISHFT(ID(I),I)
  13  CONTINUE
      WRITE(6,*) ' IA = ',IA
      DO 14 I=1,10
        IA(I) = ISHFT(ID(I),-I)
  14  CONTINUE
      WRITE(6,*) ' IA = ',IA
      DO 15 I=1,10
        IA(I) = ISHFT(I,I)
  15  CONTINUE
      WRITE(6,*) ' IA = ',IA

      DO 20 I=1,10
        IA(I) = ISHFT(IB(I),IS1)
  20  CONTINUE
      WRITE(6,*) ' IA = ',IA
      DO 21 I=1,10
        IA(I) = ISHFT(IA(I),-IS1)
  21  CONTINUE
      WRITE(6,*) ' IA = ',IA
      DO 22 I=1,10
        IA(I) = ISHFT(ID(I),IS1M)
  22  CONTINUE
      WRITE(6,*) ' IA = ',IA
      DO 23 I=1,10
        IA(I) = ISHFT(I,IS1)
  23  CONTINUE
      WRITE(6,*) ' IA = ',IA

      DO 30 I=1,10
        IA(I) = ISHFT(IS2,IC(I))
  30  CONTINUE
      WRITE(6,*) ' IA = ',IA
      DO 31 I=1,10
        IA(I) = ISHFT(-IS2,IC(I))
  31  CONTINUE
      WRITE(6,*) ' IA = ',IA
      DO 32 I=1,10
        IA(I) = ISHFT(IS2M,MIN(5,ID(I)))
  32  CONTINUE
      WRITE(6,*) ' IA = ',IA
      DO 33 I=1,10
        IA(I) = ISHFT(1,MIN(5,ID(I)))
  33  CONTINUE
      WRITE(6,*) ' IA = ',IA
      STOP
      END
