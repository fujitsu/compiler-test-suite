      PROGRAM MAIN
      REAL*4    EV10(10)
      INTEGER   IS10
      DATA      EV10/0,0,8*1.5/,IS10/0/

      REAL*8    DV10(10)
      REAL*8    QV10(10)
      DATA      DV10/0,9*200/,QV10/-9,-8,-7,-6,-5,-4,-3,-2,-1,0/

      REAL*8    DS30
      REAL*4    EV30(10)
      INTEGER   IV30(10),IV31(10)
      DATA      DS30/3.5/EV30/5*1.5,5*2/,IV30,IV31/20*2/

      DO 10 I=1,10
        IS10 = IS10 + 2
        IF (EV10(I).LT.0)  GOTO  19
 10   CONTINUE
 19   CONTINUE
      WRITE(6,*)  EV10,IS10

      DO 20 I=1,10
        IF(QV10(I)) 21,29,29
  21    DV10(I)=I*3
  20  CONTINUE
  29  CONTINUE
      WRITE(6,*)  I,DV10,QV10

      DO 30 I=1,10
       IF (IV30(I)*EV30(I)-DS30.LT.0)  THEN
         IV31(I)=IV30(I)/I
       ELSE
         GOTO  37
       ENDIF
 30   CONTINUE
      GOTO  39
 37   CONTINUE
      IV31(I)=IV30(I)*2
 39   CONTINUE
      WRITE(6,*) I,IV30,IV31,EV30
      STOP
      END




