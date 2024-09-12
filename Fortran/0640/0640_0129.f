      PROGRAM MAIN
      INTEGER   ITR1(2),IS10
      REAL*4    EV10(100)
      DATA      EV10/11*0.0,15,30*1.5,50*0.0 ,14.2,6*0,.5/
      DATA      IS10/200/,ITR1/100,0/

      REAL*4    DV20(100)
      DATA      (DV20(I),I=1,100,2)/50*.5/
      DATA      (DV20(I),I=2,100,2)/50*10/

      INTEGER   ITR3(2)
      REAL*4    EV30(64),EV31(64)
      DATA      EV30/31*2.5,31*2,3,75/,ITR3/2,64/,EV31/64*100/

      DO 10 I=1,ITR1(1)
        IF (EV10(I)**2.0.GT.IS10)  THEN
          GOTO  19
        ENDIF
 10   CONTINUE
 19   WRITE(6,*) ' BRANCH OUT'

      DO 29 K=1,2
       L=K
      DO 20 J=1,2
      DO 20 I=100,1,-1
        IS20=LOG(DV20(I))
        IF(IS20.LT.0) THEN
          GOTO  29
        ENDIF
  20  L=L+1
  29  CONTINUE
      WRITE(6,*) I,L

      DO 30 I=1,ITR3(1)
       ES30=EV30(I)/ITR3(1)
       IF (ES30.GE.1.AND.EV30(I).GE.ITR3(1))  GOTO  30
         GOTO  39
 30   EV31(I)=I
      WRITE(6,*)  '  NORMAL EXIT'
      GOTO  38
 39   WRITE(6,*)  '  BRANCH OUT'
 38   WRITE(6,*)  EV31,I
      STOP
      END
