      PROGRAM MAIN
      INTEGER   ITR1(2),IS10
      REAL*4    EV10(100),EV11(100)
      DATA      EV10/5*0.0,6*2.,-2,30*1.5,-.5,49*-2.5,14.2,6*0,.5/
      DATA      ITR1/100,0/EV11/100*0/

      REAL*4    EV20(100,2)
      REAL*8    DV20(100)
      DATA      DV20/90*10,.5,9*10/EV20/200*200/

      INTEGER   ITR3
      REAL*4    EV30(2000)
      DATA      EV30/31*2048,1000,1968*2048/,ITR3/2048/

      DO 10 I=1,ITR1(1)
        IF (EV10(I).GT.1) THEN
          IS10=EV10(I)*2.5
        ELSE
          IS10=1.0
        ENDIF
        IF (EV10(I)*EV10(I).GT.IS10)  THEN
          GOTO  19
        ENDIF
        EV11(I)=IS10/2.0
 10   CONTINUE
 19   WRITE(6,*) EV11

      DO 20 J=1,2
       L=1
      DO 20 I=100,1,-1
        IS20=LOG(DV20(I))
        IF(IS20) 29,21,22
  21    EV20(L,J)=IS20*L
        GOTO  20
  22    EV20(L,J)=DV20(I)-L
  20  L=L+1
  29  CONTINUE
      WRITE(6,*) I,L
      WRITE(6,*) EV20

      DO 30 I=1,ITR3
       IF (EV30(I)/ITR3.GE.1.AND.EV30(I).GE.ITR3)  GOTO  30
         GOTO  38
 30   CONTINUE
 38   WRITE(6,*)  I
      STOP
      END
