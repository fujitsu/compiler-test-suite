      PROGRAM MAIN
      INTEGER   ITR1(2),IS10
      REAL*4    EV10(100),EV20(100)
      DATA      ITR1/100,0/,EV10/11*0.0,31*15,50*-25,7*0,.5/,EV20/100*0/

      REAL*4    DV20(100)
      DATA      DV20/30*-3,-1,36*5,0,9*5,-1,20*4,2,-1/

      INTEGER   ITR3(2)
      REAL*4    EV30(64),EV31(64)
      DATA      EV30/31*1.5,31*2,3,1.75/,ITR3/0,64/,EV31/64*100/
      DO 100 J=1,2

      LPNO=1
      DO 10 I=1,ITR1(J)
        IS10=EV10(I)
        IF (EV10(I).EQ.IS10)  THEN
          EV20(I)=IS10+1
        ELSE
          GOTO  19
        ENDIF
 10   CONTINUE
 19   CONTINUE
      GOTO (18,29) LPNO
 18   WRITE(6,*)  EV20,ITR1(J)

      LPNO=2
      DO 20 I=100,1,-1
        IF(DV20(I).LT.0) THEN
          GOTO  19
        ELSE
          DV20(I)=SQRT(DV20(I))
        ENDIF
  20  CONTINUE
  29  CONTINUE
      WRITE(6,*) I
      DV20(I)=0

      DO 30 I=1,ITR3(J)
       IF (SIN(EV30(I)).GT.0)  GOTO  30
         GOTO  39
 30   EV31(I)=I
 39   WRITE(6,*)  EV31,I
100   CONTINUE
      STOP
      END
