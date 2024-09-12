      PROGRAM MAIN
      REAL*8  DV1(0:12,0:12)/169*3.5/,DV2(1:13,-13:-1)/169*2.25/
      LOGICAL LV1(1:13,1:13)/169*.FALSE./
      INTEGER NV1(1:13,1:13)/169*2/
      DO 110 I=2,11
       IF(MOD(I,2).EQ.0) THEN
        LV1(I,I)=MOD(I+1,3).NE.1
        DV1(I-1,I-1)=DV2(I-1,-I+1)**3
        NV1(2,2)=NV1(2,2)+3
        DV1(I,I)=DV2(I,-I)**2.
        LV1(I+1,I+1)=DV1(I,I)*I.GT.5
        DV1(I+1,I+1)=FLOAT(I)**I
       ELSE
        LV1(I,I)=DV1(I-1,I-1)*I.GT.3
        DV1(I-1,I-1)=DV2(I-1,-I+1)**2
        NV1(1,2)=NV1(1,2)+NV1(I,3)*I
        DV1(I,I)=DV2(I,-I)**3.
        LV1(I+1,I+1)=MOD(I+1,3).NE.2
        DV1(I+1,I+1)=FLOAT(I)**I+NV1(I,1)
       ENDIF
 110  CONTINUE
      WRITE(6,*) DV1,DV2,LV1,NV1
      STOP
      END
