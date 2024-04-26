      REAL*8    DV1(10),DV2(10),DV3(10)
      INTEGER*4   IAS
C
      DATA DV1/10*1./
      DATA DV2/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA DV3/10*0./
C
C
      IAS=1
      DO 10 I=2,10
        DV1(I)=DV2(I)*DV2(I)
        DV3(I)=DV1(I)
        IF (DV1(I).GT.DV2(I)*4.) GOTO 11
        DV3(I)=DV1(I)
        GOTO 10
  11    IF (DV1(I).GT.DV2(I)*8)  DV1(I-1)=DV3(I)/4.
  10  CONTINUE
      WRITE(6,1000) DV1
      WRITE(6,1000) DV2
      WRITE(6,1000) DV3
C
C
      J=DV2(I-1)
      M=DV2(I-3)
      DO 20 I=5 ,1,-1
        DV1(J)=DV2(I*2)
        DV1(M)=DV3(I)
        DV1(I)=DV1(J)+DV1(M)
  20  CONTINUE
      WRITE(6,1000) DV1
 1000 FORMAT(F10.5)
      STOP
C
      END
