      INTEGER I401(20)
      DATA I401/14,18,6,2,16,7,4,11,20,9,10,3,5,12,6,13,8,1,15,17/
      DO 1 I=1,10
   1  N = I + 10

      IMXVAL = 0
      DO 10 I=1,N
        IF (I401(I).GT.IMXVAL) IMXVAL = I401(I)
   10 CONTINUE

      DO 20 I=1,N
        IF (I401(I).LT.IMXVAL) IMXVAL = I401(I)
   20 CONTINUE

      IMXIDX = 1
      DO 30 I=1,N
        IF (I401(I).GT.I401(IMXIDX)) IMXIDX = I
   30 CONTINUE

      IMNIDX = 1
      DO 40 I=1,N
        IF (I401(I).LT.I401(IMNIDX)) IMNIDX = I
   40 CONTINUE

      WRITE(6,*) IMNIDX
      STOP
      END
