      PROGRAM MAIN
      REAL*4    EV10(10),EV11(10)
      DATA      EV10/0,0,8*1.5/,EV11/10*1000/

      REAL*8    DV20(100)
      INTEGER   N,IV20(100)
      DATA      DV20/19*10.,0.,19*20.,0,60*30./,N/100/,IV20/100*0/

      INTEGER   IV30(10),IS30
      LOGICAL   LV30(2)
      DATA      IS30/0/,IV30/10*0/
      DATA      LV30/.TRUE.,.FALSE./

 100  CONTINUE
      DO 10 I=1,10
        IF (EV10(I).GE.0)  THEN
          IF (EV10(I).EQ.0)  THEN
            EV11(I)=999.
            GOTO  19
          ELSE
            EV11(I)=100.
          ENDIF
        ELSE
          EV11(I)=I
        ENDIF
 10   CONTINUE
 19   CONTINUE
      WRITE(6,*)  EV10,EV11

 200  DO 20 I=1,N
        IF (DV20(I).GT.0) THEN
          IV20(I)=100
        ELSE
          IV20(I)=200
          GOTO 29
        ENDIF
  20  CONTINUE
  29  CONTINUE
      WRITE(6,*)  I,IV20
      IF (I.EQ.20) THEN
        DV20(I)=1.0
        GOTO  200
      END IF

      DO 30 I=1,10
       IF (LV30(1).AND.LV30(2)) GOTO  39
         IV30(I)=I
 30   IS30 = IS30 + 1
 39   CONTINUE
      WRITE(6,*) IS30,IV30
      STOP
      END
