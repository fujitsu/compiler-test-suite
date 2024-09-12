      PROGRAM MAIN
      REAL    *4    RS11,RS12/0./
     0REAL    *8    DV11(10)/10*1.0/ ,
     1              DV12(10)/10*2.0/,
     2              DV13(10)/10*3.0/,DS11/0./,DS12/0./
      LOGICAL *4    LV21(10)/4*.TRUE.,3*.FALSE.,2*.TRUE.,.FALSE./ ,
     1              LS21    /.TRUE./
      REAL    *4    RV21(10)/10.,8*0.,-10./
      REAL    *8    DS21 /0./, DS22 /0./
      COMPLEX *16   CDV21(10)/10*(1.0,-1.0)/,
     1              CDV22(10)/10*(2.0,0.0)/ ,
     2              CDV23(10)/10*(0.0,-1.0)/, CDS21/(0.0,0.0)/
      INTEGER *4    IV31(10)/1,2,3,4,5,6,7,8,9,10/,IV32(3)/3*0/,IS31/2/ 
      REAL    *8    DV31(3)/3*0.0/, DS31 /3.0/
      DO 100  I=1,10
        RS11 = DV11 (I) + DV12 (I) * DV13 (I) - 3 + I
   11   RS12 = RS12 + RS11
        DS11 = DS11 +(RS11**3.+I)/ 2.
        DS12 = RS11 - DV11(I) + DS12
  100 CONTINUE
      WRITE(6,*) DV11,DV12,DV13
      WRITE(6,*) RS12,DS11,DS12
      DO 200  I=1,10
        IF (LV21(I).NEQV.LV21(11-I))
     &    DS21 = MAX (DS21,RV21(I))
        IF (LV21(I).AND.LS21) THEN
          CDS21 = CDS21 +(CDV21(I) * CDV22(I)-CDV23(I))
        ENDIF
        IF (LS21.AND.LV21(11-I)) THEN
          DS22 = MIN ( RV21(I),DS22)
        END IF
  200 CONTINUE
      WRITE(6,*) DS21,CDS21,DS22
      WRITE(6,*) RV21
      WRITE(6,*) CDV21
      WRITE(6,*) CDV22
      WRITE(6,*) CDV23
      DO 300  I=1,10
        IV31(1) = IV31(1) + IV31(I)
        IV32(1) = IV32(1) + 2
        IV32(2) = IV32(2) + IS31
        DV31(1) = DS31 + DV31 (1)
        DV31(2) = DS31 + IS31 + DV31(2)
        IS31 = IS31 + 2
  300 CONTINUE
      WRITE(6,*) IV31,IV32
      WRITE(6,*) DV31
      WRITE(6,*) IS31,I
      STOP
      END
