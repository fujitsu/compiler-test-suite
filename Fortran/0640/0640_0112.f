      PROGRAM MAIN
      REAL*4    EV10(10),EV11(10)
      DATA      EV10/0,0,8*1.5/,EV11/10*100/
      REAL*8    DV10(1000)
      INTEGER   N
      DATA      DV10/0,999*200/,N/10/
      REAL*8    DS30
      REAL*4    EV30(10)
      INTEGER   IV30(10)
      LOGICAL   LV30(10)
      DATA      DS30/3.5/,EV30/5*1.5,5*2/,IV30/10*2/
      DATA      LV30/6*.FALSE.,4*.TRUE./

 100  CONTINUE
      DO 10 I=1,10
        IF (EV10(I).GT.0)  GOTO  19
        IF (EV10(I).LT.0)  GOTO  19
        EV11(I)=I
 10   CONTINUE
 19   CONTINUE
      WRITE(6,*)  EV10,EV11

      IF (EV10(3).GT.0) THEN
        EV10(3)=-100
        GOTO  100
      ENDIF

 200  DO 20 I=1,N
        IF(DV10(I)) 20,28,29
  20  CONTINUE
  28  CONTINUE
  29  CONTINUE
      WRITE(6,*)  I,(DV10(K),K=1,11)
      IF (I.EQ.1) THEN
        DV10(1)=-1.0
        GOTO  200
      END IF

      DO 30 I=1,10
       IF (IV30(I)*EV30(I)-DS30)  32,37,38
 32    IF (LV30(I)) GOTO  39
 30   CONTINUE
      GOTO  39
 37   CONTINUE
      IV30(I)=IV30(I)*2
      GOTO  39
 38   EV30(I)=EV30(I)*3
      GOTO  39
 39   CONTINUE
      WRITE(6,*) I,IV30,EV30
      STOP
      END
