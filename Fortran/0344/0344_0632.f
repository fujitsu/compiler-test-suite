      COMMON    //DV1,DV3,IAS
      REAL*8    DV1(10),DV2(10),DV3(10),DV4(10)/10*0/
      INTEGER*4   IAS
C
      CALL INIT(DV1,DV2,DV3,10)
C
C
      IAS=1
      DO 10 I=2,10
       DV4(I)=DV2(I)*2
       DV1(I)=DV2(I)*DV2(I)
       DV3(I)=DV1(I)
C
       CALL SUB1
  10  CONTINUE
      WRITE(6,1000) DV1
      WRITE(6,1000) DV2
      WRITE(6,1000) DV3
      WRITE(6,1000) DV4
C
C
      IAS=1
      DO 20 I=2,10
       DV4(I)=DV2(I)*DV2(I)
       CALL SUB1
  20  CONTINUE
      WRITE(6,1000) DV2
      WRITE(6,1000) DV4
 1000 FORMAT(5D15.8)
C
      STOP
      END
C
C
C
      SUBROUTINE INIT(DV1,DV2,DV3,N)
      REAL*8 DV1(N),DV2(N),DV3(N)
C
      DO 10 I=1,N
        DV1(I)=1.D0/I
        DV2(I)=I
        DV3(I)=DV1(I)*DV2(I)
  10  CONTINUE
      RETURN
      END
      SUBROUTINE SUB1
      COMMON    //DV1,DV3,IAS
      REAL*8    DV1(10),DV3(10)
      INTEGER*4   IAS
      DV1(5)=IAS*IAS
      IAS=DV1(5)+3.
      DO 10 I=1,10
       DV3(I)=DV1(I)+DV3(I)
  10  CONTINUE
      RETURN
      END
