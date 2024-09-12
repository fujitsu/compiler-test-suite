      PROGRAM MAIN
      REAL*4    EV10(10)
      DATA      EV10/0,1,2,3,4,5,6,7,8,9/

      REAL*8    DV20(2,2)
      REAL*4    EV20(10)
      DATA      DV20/1,2,3,0/,EV20/1,2,3,4,5,6,7,8,9,10/

      REAL*8    DS30
      REAL*4    EV30(10),EVMX
      INTEGER   IV30(10)
      DATA      DS30/3.5/EV30/5*1.5,5*2/EVMX/0/,IV30/10*2/

      DO 10 I=1,10
        ES10=I-EV10(I)
        IF (ES10-1.GT.0)  GOTO  18
        IF (ES10.GT.0)  GOTO  19
 10   CONTINUE
 18   WRITE(6,*) '  18 '
 19   CONTINUE
      WRITE(6,*)  EV10

      DO 20 I=1,2
       DO 20 J=1,2
        IF (DV20(I,J).EQ.0) GOTO  29
        DO 21 K=1,10
         EV20(K)=EV20(K)/DV20(I,J)
  21    CONTINUE
  20  CONTINUE
  29  CONTINUE
      WRITE(6,*)  I,DV20,EV20

      DO 30 I=1,10
       IF (EVMX.LT.EV30(I)) EVMX=EV30(I)
       IF (IV30(I)*EV30(I)-DS30)  30,37,30
 30   CONTINUE
      GOTO  39
 37   CONTINUE
      IV30(I)=IV30(I)*2
 39   CONTINUE
      WRITE(6,*) EVMX,IV30
      STOP
      END
