      PROGRAM  CV4217
        type STR
           INTEGER   ITR1(2),IS10
           REAL*4    EV10(100)
           REAL*4    DV20(100)
           INTEGER   ITR3(2)
           REAL*4    EV30(64),EV31(64)
        END type STR
        TYPE(STR) STR_DATA

      DATA      STR_DATA%EV10/11*0.0,15,30*1.5,50*0.0 ,14.2,6*0,.5/
      DATA      STR_DATA%IS10/200/,STR_DATA%ITR1/100,0/
      DATA      (STR_DATA%DV20(I),I=1,100,2)/50*.5/
      DATA      (STR_DATA%DV20(I),I=2,100,2)/50*10/
      DATA      STR_DATA%EV30/31*2.5,31*2,3,75/,STR_DATA%ITR3/2,64/,STR_DATA%EV31/64*100/
      WRITE(6,*)  ' CVCT4217-LOOP.1'
      DO 10 I=1,STR_DATA%ITR1(1)
        IF (STR_DATA%EV10(I)**2.0.GT.STR_DATA%IS10)  THEN
          GOTO  19
        ENDIF
 10   CONTINUE
 19   WRITE(6,*) ' BRANCH OUT'
      DO 29 K=1,2
       L=K
      DO 20 J=1,2
      DO 20 I=100,1,-1
        IS20=LOG(STR_DATA%DV20(I))
        IF(IS20.LT.0) THEN
          GOTO  29
        ENDIF
  20  L=L+1
  29  CONTINUE
      WRITE(6,*) ' CVCT4217-LOOP.02 '
      WRITE(6,*) I,L
      WRITE(6,*)  '  CVCT4217-LOOP.03 '
      DO 30 I=1,STR_DATA%ITR3(1)
       ES30=STR_DATA%EV30(I)/STR_DATA%ITR3(1)
       IF (ES30.GE.1.AND.STR_DATA%EV30(I).GE.STR_DATA%ITR3(1))  GOTO  30
         GOTO  39
 30   STR_DATA%EV31(I)=I
      WRITE(6,*)  '  NORMAL EXIT'
      GOTO  38
 39   WRITE(6,*)  '  BRANCH OUT'
 38   WRITE(6,*)  STR_DATA%EV31,I
      STOP
      END
