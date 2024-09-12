      PROGRAM MAIN
      REAL*4    EV10(10),ES10
      DATA      EV10/-10,-2.,0,7*1.5/,ES10/3.5/

      REAL*8    DV20(100),DS20
      REAL*4    EV20(100)
      DATA      DV20/100*2/,EV20/100*2/

      REAL*8    DV30(10)
      REAL*4    EV30(10)
      LOGICAL   LV30(10)
      DATA      EV30/1,3,1,3,1,3,1,3,1,3/,DV30/10*2/
      DATA      LV30/7*.FALSE.,3*.TRUE./

      DO 10 I=1,10
        IF (EV10(I).LT.0)  GOTO  10
        IF (ES10.EQ.0)  GOTO  19
          EV10(I)=ES10*EV10(I)
 10   CONTINUE
 19   CONTINUE
      WRITE(6,*)  EV10,ES10

      DO 20 I=2,99
        DS20 = DV20(I)*DV20(I+1)
        IF (DS20) 20,29,21
  21     EV20(I)=SQRT(DS20)
         DV20(I)=EV20(I)-3.5
  20  CONTINUE
      WRITE(6,*)  '  LOOP IS NORMALY FINISHED '
  29  CONTINUE
      WRITE(6,*)  I,DV20,EV20

      K=1
      DO 30 I=1,10
       IF (LV30(I)) GOTO  39
         LV30(I)=DV30(K).GT.EV30(K)
         K=K+1
 30   CONTINUE
      WRITE(6,*) '  NORMALLY FINISHED '
 39   CONTINUE
      WRITE(6,*) K,DV30,EV30
      STOP
      END
