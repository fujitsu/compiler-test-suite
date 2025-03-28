      INTEGER*1,PARAMETER::I1=5
      INTEGER*2,PARAMETER::I2=5
      INTEGER*1,PARAMETER::IAND1=1
      INTEGER*2,PARAMETER::IAND2=1
      INTEGER*1,PARAMETER::IOR1=6
      INTEGER*2,PARAMETER::IOR2=6
      INTEGER*1,PARAMETER::IEOR1=3
      INTEGER*2,PARAMETER::IEOR2=3
      INTEGER*1,PARAMETER::IEQV1=4
      INTEGER*2,PARAMETER::IEQV2=4
      INTEGER*1,PARAMETER::ANS11=1
      INTEGER*2,PARAMETER::ANS12=1
      INTEGER*1,PARAMETER::ANS21=7
      INTEGER*2,PARAMETER::ANS22=7
      INTEGER*1,PARAMETER::ANS31=6
      INTEGER*2,PARAMETER::ANS32=6
      INTEGER*2,PARAMETER::ANS42=-2
      INTEGER*1,PARAMETER::ANS51=124
      INTEGER*2,PARAMETER::ANS52=-6
      LOGICAL*1,PARAMETER::T=.TRUE.
      LOGICAL*1,PARAMETER::F=.FALSE.
   20 IF(NOT(I2).EQ.ANS52) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
   30 IF(NOT(5).EQ.-6) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
   50 IF(IAND(I1,IAND1).EQ.ANS11) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
   60 IF(IAND(I2,IAND2).EQ.ANS12) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
   70 IF(IAND(3,2).EQ.2) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
   90 IF(IOR(I1,IOR1).EQ.ANS21) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  100 IF(IOR(I2,IOR2).EQ.ANS22) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  110 IF(IOR(4,6).EQ.6) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  130 IF(IEOR(I1,IEOR1).EQ.ANS31) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  140 IF(IEOR(I2,IEOR2).EQ.ANS32) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  150 IF(IEOR(2,3).EQ.1) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  210 IF(ISHFT(I1,4).EQ.80) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  220 IF(ISHFT(I2,4).EQ.80) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  230 IF(ISHFT(2,4).EQ.32) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  330 IF(IBSET(I1,1).EQ.7) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  340 IF(IBSET(I2,1).EQ.7) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  350 IF(IBSET(5,1).EQ.7) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  370 IF(IBCLR(I1,2).EQ.1) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  380 IF(IBCLR(I2,2).EQ.1) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  390 IF(IBCLR(5,2).EQ.1) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  410 IF(BTEST(I1,2).AND..TRUE.) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  420 IF(BTEST(I2,2).AND..TRUE.) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  430 IF(BTEST(5,2).AND..TRUE.) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  450 IF(ISHFT(I1,-2).EQ.1) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  460 IF(ISHFT(I2,-2).EQ.1) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
  470 IF(ISHFT(2,-2).EQ.0) THEN
      ELSE
      PRINT *,'FAIL'
      ENDIF
      WRITE(*,*) '*****PASS*****'
      STOP
      END
