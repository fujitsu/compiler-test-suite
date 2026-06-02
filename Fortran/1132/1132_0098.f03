      PROGRAM  CV4213
       TYPE str
          INTEGER   LOOP
          INTEGER   ITR1
          REAL*4    EV10(10)
          REAL*8    DV20(200)
          REAL*4    EV20(200)
          INTEGER   ITR2,IV20(200)
          REAL*4    EV30(64)
          INTEGER   IV30(64)
       END type str

       TYPE(STR) STR_DATA
       INTEGER   J

      DATA      STR_DATA%ITR1/10/,STR_DATA%EV10/0,3*1,5*-2.5,0/,J/10/
      DATA      (STR_DATA%DV20(I),I=1,200,2)/1,2,30*5,0,36*4,-1,30*-3/
      DATA      (STR_DATA%DV20(I),I=2,200,2)/1,2,0,28*5,36*4,-1,32*-3/
      DATA      STR_DATA%EV20/200*3.5/,STR_DATA%IV20/200*1000/,STR_DATA%ITR2/200/
      DATA      STR_DATA%EV30/31*1.5,31*2,3,1.75/,STR_DATA%IV30/40*2,0,23*3/
      STR_DATA%LOOP=1
      DO 10 I=1,STR_DATA%ITR1
        IF (STR_DATA%EV10(J).EQ.0)  GOTO  29
 10   J=J-1

 19   WRITE(6,*)  '  CVCT4213-LOOP.01 '
      WRITE(6,*)  J
      STR_DATA%LOOP=2
      DO 22 J=1,2
      DO 20 I=2,STR_DATA%ITR2,2
        IF(STR_DATA%DV20(I).GT.0) THEN
          STR_DATA%EV20(I)=STR_DATA%EV20(I)/512.+STR_DATA%DV20(J)
        ELSE
          STR_DATA%IV20(I)=I
          GOTO  29
        ENDIF
  20  CONTINUE
  29  CONTINUE
      GOTO (19) STR_DATA%LOOP
      WRITE(6,*)  '  CVCT4213-LOOP.02 '
      WRITE(6,*)   I
      WRITE(6,*)   STR_DATA%EV20
  22  CONTINUE
      WRITE(6,*)  '  CVCT4213-LOOP.03 '

      DO 30 I=1,64
       IF (STR_DATA%IV30(I)*(STR_DATA%EV30(1)+2).EQ.0)  GOTO  30
       STOP
 30   CONTINUE

      WRITE(6,*)  '  CVCT4213-LOOP.03 '

      STOP
      END
