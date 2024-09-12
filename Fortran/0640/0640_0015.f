      PROGRAM MAIN
      REAL*8   DV1(3)/3*0./,DV2(3,3)
      INTEGER  IS1
      DV2 = 0
      IND=1
 100  READ(5,*,END=999)  DV1(IND)

      IS1 = 1
   1  DO 10 I=1,3
        DV2(I,IND)=DV1(I)
        IF (DV1(I)*IS1) 10,11,2
   2      IS1=0
          GOTO 1
  11    DV2(I,IND)=-DV2(I,IND)
  10  CONTINUE
      IF (DV1(IND).EQ.-100.0) GOTO 1
      WRITE(6,*) DV1,DV2

      IND=IND+1
      GOTO 100

      DO 20 I=1,10
 20    DV1(I)=I
      WRITE(6,*) DV1
      STOP

 30   I=I-1
      IF (DV1(I)) 30,999,999

 999  STOP
      END
