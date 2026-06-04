      PROGRAM  CV4215
        type STR
           INTEGER   ITR1,IS10
           REAL*4    EV10(100)
           REAL*4    DV20(200)
           INTEGER   ITR2
           REAL*4    EV30(64)
        END type STR
        TYPE(STR) STR_DATA
        
      DATA      STR_DATA%ITR1/100/,STR_DATA%EV10/11*0.25,31*1.5,50*-2.5,8*0/
      DATA      (STR_DATA%DV20(I),I=1,200,2)/1,2,30*5,0,36*4,-1,30*-3/
      DATA      (STR_DATA%DV20(I),I=2,200,2)/37*2,-2,62*4/
      DATA      STR_DATA%ITR2/200/
      DATA      STR_DATA%EV30/31*1.5,31*2,3,1.75/
      DO 11 K=1,3
      DO 11 J=1,3
      DO 10 I=1,STR_DATA%ITR1
        STR_DATA%IS10=STR_DATA%EV10(I)
        IF (STR_DATA%EV10(I).EQ.STR_DATA%IS10)  THEN
          WRITE(6,*) ' BRANCH OUT OCCURED.'
          GOTO 19
        ENDIF
 10   CONTINUE
 19   WRITE(6,*)  '  CVCT4215-LOOP.01 '
 11   IF (K.NE.3.OR.J.NE.3) STR_DATA%EV10(92+J+(K-1)*3)=1.5
      DO 21 K=1,2
      DO 21 J=1,1
      DO 20 I=2,STR_DATA%ITR2,2
        IF(STR_DATA%DV20(I).LT.0) THEN
          GOTO  29
        ELSE
          STR_DATA%DV20(I)=SQRT(STR_DATA%DV20(I))
        ENDIF
  20  CONTINUE
  29  CONTINUE
      WRITE(6,*)  '  CVCT4215-LOOP.02 '
      WRITE(6,90) I
  90  FORMAT(i10)
  21  IF(K.EQ.2) STR_DATA%DV20(1)=4.0
      DO 31 K=1,2
      DO 31 J=1,2
      DO 30 I=1,64
       IF (SIN(STR_DATA%EV30(I)).GT.0)  GOTO  30
         STR_DATA%EV30(I)=SIN(STR_DATA%EV30(I))
         GOTO  39
 30   STR_DATA%EV30(I)=COS(STR_DATA%EV30(I))
 39   WRITE(6,*)  '  CVCT4215-LOOP.03 '
      WRITE(6,91)  STR_DATA%EV30
      WRITE(6,92)  I
 91   FORMAT(5(1X,e14.7))
 92   FORMAT(i10)
 31   CONTINUE
      STOP
      END
