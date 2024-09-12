      PROGRAM MAIN

      REAL*4    EV10(10),ES10
      DATA      EV10/-10,0,8*1.5/,ES10/1./

      REAL*8    DV10(1000),DS10
      INTEGER   N
      DATA      DV10/1000*200/,N/10/,DS10/10/

      REAL*4    EV30(12)
      LOGICAL   LV30(10)
      DATA      EV30/2,4,6,8,10,9,7,5,3,1,-3,-5/
      DATA      LV30/7*.FALSE.,3*.TRUE./

 100  CONTINUE
      DO 10 I=1,10
        IF (EV10(I).LT.0)  GOTO  10
        IF (ES10.EQ.0)  GOTO  19
 10   CONTINUE
 19   CONTINUE
      WRITE(6,*)  EV10,ES10,I

      IF (ES10.NE.0) THEN
        ES10=0
        GOTO  100
      ENDIF

      DO 20 I=1,N
        DS10=DS10*DV10(I)
        IF(DV10(I)) 29,29,20
  20  CONTINUE
  29  CONTINUE
      WRITE(6,*)  I,(DV10(K),K=1,11),DS10

      DO 30 I=1,10
       EV30(I)=EV30(I+1)+1.
       IF (LV30(I)) GOTO  39
       EV30(I+1)=EV30(I+2)-1
 30   CONTINUE
 39   CONTINUE

      WRITE(6,*) EV30
      STOP
      END
