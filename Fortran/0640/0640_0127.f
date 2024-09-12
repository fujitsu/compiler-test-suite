      PROGRAM MAIN
      INTEGER   ITR1,IS10
      REAL*4    EV10(100)
      DATA      ITR1/100/,EV10/11*0.25,31*1.5,50*-2.5,8*0/

      REAL*4    DV20(200)
      INTEGER   ITR2
      DATA      (DV20(I),I=1,200,2)/1,2,30*5,0,36*4,-1,30*-3/
      DATA      (DV20(I),I=2,200,2)/37*2,-2,62*4/
      DATA      ITR2/200/

      REAL*4    EV30(64)
      DATA      EV30/31*1.5,31*2,3,1.75/

      DO 11 K=1,3
      DO 11 J=1,3
      DO 10 I=1,ITR1
        IS10=EV10(I)
        IF (EV10(I).EQ.IS10)  THEN
          WRITE(6,*) ' BRANCH OUT OCCURED.'
          GOTO 19
        ENDIF
 10   CONTINUE
 19   CONTINUE
 11   IF (K.NE.3.OR.J.NE.3) EV10(92+J+(K-1)*3)=1.5

      DO 21 K=1,2
      DO 21 J=1,1
      DO 20 I=2,ITR2,2
        IF(DV20(I).LT.0) THEN
          GOTO  29
        ELSE
          DV20(I)=SQRT(DV20(I))
        ENDIF
  20  CONTINUE
  29  CONTINUE
      WRITE(6,90) I
  90  FORMAT(i10)
  21  IF(K.EQ.2) DV20(1)=4.0

      DO 31 K=1,2
      DO 31 J=1,2
      DO 30 I=1,64
       IF (SIN(EV30(I)).GT.0)  GOTO  30
         EV30(I)=SIN(EV30(I))
         GOTO  39
 30   EV30(I)=COS(EV30(I))
 39   WRITE(6,91)  EV30
      WRITE(6,92)  I
 91   FORMAT(5(1X,e14.7))
 92   FORMAT(i10)
 31   CONTINUE
      STOP
      END
