      PROGRAM MAIN
      INTEGER *4   IS11,IS12/1/,IS13/3/
      REAL    *4   RS11/16./
      REAL    *8   DV11(10)/16.,9.,8.,7*3./, DV12(10)/5*3.,5*1./
      COMPLEX *8   CV11(10)/4*(1.,.5),4*(2.,3.),2*(1.,1.)/, CV12(10)
      REAL    *4   RS21/0./,RS22/9./,RV21(10)/-1.,8*0.,1./
      REAL    *8   DS21/0./,DS22/9./,DV21(10)/3.,7*1.,2.,0./
      REAL    *4   RV32(5)/5*0./,RV31(10)/5*1.,5*10./
      INTEGER *4   IV31(10)/0,1,2,3,4,5,6,7,8,9/
      REAL    *8   DS31/2.0D0/
      COMPLEX *8   CS31/(1.,1.)/
      DO 100  I=1,10
        IS11=RS11-DV11(I)
   11   CV11(I)=IS11*CV11(I)*IS12
   12   CV12(I)=CV11(I)/RS11 - DV12(IS12)
        IS12 = IS12 + 1
   13   DV12(IS12-1)=DV12(IS12-1)*IS12*IS13
  100 CONTINUE
      WRITE(6,*) CV11,CV12,DV11,DV12,IS12,I
      DO 200  I=2,8
        RS21 = MAX(RV21(I-1),RV21(I),RS21)
        RV21(I) =(I-1)/4.+DV21(I)
        DV21(I) = I * 3 - MAX(RV21(I),RV21(I+1))
   21   RS22 = MIN(RV21(I),RS22)
        DS21 = MAX(DS21,DV21(I))
   23   DV21(I) = DPROD(RV21(I),RV21(I))
        DS22 = MIN(DS22,ABS(DV21(I)))
  200 CONTINUE
      WRITE(6,*) RS21,RS22,DS21,DS22,RV21,DV21
      DO 300  I=1,10
        IF (I.GT.5) THEN
          RV32(5) = RV32(5) +RV31(I)
        ELSE
          RV32(1) = RV31(I) +RV32(1)
          RV32(2) = RV31(I+1) + RV32(2)
          RV32(3) = RV32(3) + RV31(I+2)
          RV32(4) = RV32(4) + RV31(I+3)
        ENDIF
  300   IV31(1) = IV31(1) + INT(IV31(I)*DS31-CS31)
      WRITE(6,*) IV31,RV31,RV32
      STOP
      END
