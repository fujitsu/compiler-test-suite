      PROGRAM MAIN

      REAL*4    EV10(10),ES10
      DATA      EV10/10*1./,ES10/-5/

      REAL*8    DV20(10),DV21(10),DV22(10)
      DATA      DV20/10*10/,DV21,DV22/18*4,3,2/

      REAL*8    DS30
      REAL*4    EV30(10)
      INTEGER   IV30(10)
      LOGICAL   LV30(10)
      DATA      DS30/3.5/,EV30/5*1.5,5*2/,IV30/10*2/
      DATA      LV30/6*.FALSE.,4*.TRUE./

      DO 15 J=1,10
      DO 10 I=1,J
        ES10=ES10+EV10(I)+EV10(11-I)
 10   CONTINUE
 15   IF (ES10.GT.20) GOTO  19
      WRITE(6,*) '  NORMAL EXIT '
 19   CONTINUE
      WRITE(6,*)  ES10,EV10

 200  DO 20 I=1,10
        DS20 = DV21(I)*DV22(I)
        DS20 = DS20 - 1.
      IF (DV20(I)-DS20) 20,29,29
  20  CONTINUE
  29  CONTINUE
      WRITE(6,*)  I,DV20

      DO 30 I=1,10
       IF (IV30(I)*EV30(I)-DS30)  30,37,38
 30    IF (LV30(I)) GOTO  39
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
