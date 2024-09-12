      PROGRAM MAIN
      INTEGER   LOOP

      INTEGER   ITR1,J
      REAL*4    EV10(10)
      DATA      ITR1/10/,EV10/0,3*1,5*-2.5,0/,J/10/

      REAL*8    DV20(200)
      REAL*4    EV20(200)
      INTEGER   ITR2,IV20(200)
      DATA      (DV20(I),I=1,200,2)/1,2,30*5,0,36*4,-1,30*-3/
      DATA      (DV20(I),I=2,200,2)/1,2,0,28*5,36*4,-1,32*-3/
      DATA      EV20/200*3.5/,IV20/200*1000/,ITR2/200/

      REAL*4    EV30(64)
      INTEGER   IV30(64)
      DATA      EV30/31*1.5,31*2,3,1.75/,IV30/40*2,0,23*3/

      LOOP=1
      DO 10 I=1,ITR1
        IF (EV10(J).EQ.0)  GOTO  29
 10   J=J-1
 19   WRITE(6,*)  J

      LOOP=2
      DO 22 J=1,2
      DO 20 I=2,ITR2,2
        IF(DV20(I).GT.0) THEN
          EV20(I)=EV20(I)/512.+DV20(J)
        ELSE
          IV20(I)=I
          GOTO  29
        ENDIF
  20  CONTINUE
  29  CONTINUE
      GOTO (19) LOOP
      WRITE(6,*)   I
      WRITE(6,*)   EV20
  22  CONTINUE

      DO 30 I=1,64
       IF (IV30(I)*(EV30(1)+2).EQ.0)  GOTO  30
       STOP
 30   CONTINUE
      STOP
      END
