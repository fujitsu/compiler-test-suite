      PROGRAM MAIN
      REAL*4    EV10(10,3),EV11(3)
      DATA      EV10/30*100/,EV11/1,0,-1/

      REAL*8    DV20(10)
      REAL*4    EV20(10)
      DATA      DV20/8*10,-9,7/,EV20/1,2,3,4,5,6,7,8,9,10/

      REAL*8    DS30
      REAL*4    RV30(100),RV31(100)
      INTEGER   IV30(100),N30
      DATA      DS30/3.5/,RV30/9*1.5,2,9*1.5,2,80*1.5/
      DATA      RV31/1,2,3,4,5,6,7,8,9,10*10,81*246/
      DATA      IV30/100*2/,N30/100/

      DO 10 J=1,3
        IF(EV11(J).LT.0) GOTO  19
        DO 10 I=1,10
          EV10(I,J)=I*J-EV11(J)
 10   CONTINUE
 19   CONTINUE
      WRITE(6,*)  J,EV10,EV11

      DO 20 I=2,10
        IF(DV20(I)) 21,29,29
  21      EV20(I)=-EV20(I-1)*2.5
  20  CONTINUE
  29  CONTINUE
      WRITE(6,*)  DV20,EV20

      DO 30 I=1,N30
       IF (IV30(I)*RV30(I)-DS30)  32,39,39
 32    RV31(I)=RV31(I)*2+DS30
 30   CONTINUE
 39   CONTINUE
      WRITE(6,*) I,IV30,RV30
      STOP
      END
