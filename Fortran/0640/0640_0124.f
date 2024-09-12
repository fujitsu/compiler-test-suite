      PROGRAM MAIN
      INTEGER  JV(2)/1,2/
      INTEGER   ITR1
      REAL*4    EV10(10)
      DATA      ITR1/10/,EV10/4*0,5*-2.5,-1.5/

      REAL*8    DV20(200)
      REAL*4    EV20(200)
      INTEGER   ITR2,IV20(200)
      DATA      (DV20(I),I=1,200,2)/1,2,30*5,0,36*4,-1,30*-3/
      DATA      (DV20(I),I=2,200,2)/1,2,28*5,0,36*4,-1,32*-3/
      DATA      EV20/200*3.5/,IV20/200*1000/,ITR2/200/

      REAL*4    EV30(64)
      INTEGER   IV30(64),IS30,J
      DATA      EV30/31*1.5,31*2,3,1.75/,IV30/40*2,0,23*3/,IS30,J/-1,15/
      DO 110 K=1,2
      J=JV(K)

      DO 10 I=1,ITR1
        IF (EV10(I).GT.0)  GOTO  19
 10   CONTINUE
 19   WRITE(6,*)  EV10

      DO 20 I=1,ITR2,2
        IF(DV20(J).GT.0) THEN
          EV20(I)=EV20(I)/512.+DV20(J)
        ELSE
          IV20(J)=J
          GOTO  29
        ENDIF
  20  J=J+2
  29  IV20(I)=I
      WRITE(6,*)   I,J
      WRITE(6,*)   EV20
 110  CONTINUE

      DO 30 I=1,64
       IF (IV30(I)*(EV30(1)+2).EQ.0)  GOTO  30
       GOTO  39
 30   J=J+IS30
 39   CONTINUE
      WRITE(6,*) J
      STOP
      END
