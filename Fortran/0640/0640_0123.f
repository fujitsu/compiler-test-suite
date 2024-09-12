      PROGRAM MAIN
      INTEGER   ITR1
      REAL*4    EV10(10),EV11(10)
      DATA      ITR1/10/,EV10/4*0,5*-2.5,1.5/,EV11/10*100/

      REAL*8    DV20(2,100)
      REAL*4    EV20(100)
      INTEGER   ITR2,IV20(101)
      DATA      (DV20(1,I),I=1,100)/1,-2,88*5,-1,9*-3/
      DATA      (DV20(2,I),I=1,100)/1,0,88*-1,0,9*3/
      DATA      EV20/100*3.5/,IV20/101*1/,ITR2/100/

      REAL*8    DS30
      REAL*4    EV30(64)
      INTEGER   IV30(64)
      DATA      DS30/3.5/,EV30/31*1.5,31*2,3,1.75/,IV30/64*2/

      DO 10 I=1,ITR1
        IF (EV10(I).GT.0)  GOTO  19
        EV11(I)=I+EV10(I)
 10   CONTINUE
      EV11(10)=1000.
 19   CONTINUE
      WRITE(6,*)  EV10,EV11

      DO 20 I=1,ITR2
        IF(DV20(1,I)) 21,29,20
  21    EV20(I)=EV20(I)/1024.+DV20(1,I)
  20  CONTINUE
  29  IV20(I)=I
      WRITE(6,*)   IV20,DV20
      WRITE(6,*)   EV20

      DO 30 I=1,64
       ES30 = IV30(I)*EV30(I)
       IF (ES30.EQ.0)  GOTO  30
       GOTO  39
 30   CONTINUE
      WRITE(6,*) ' BRANCH OUT HAS NOT HAPPENED.'
 39   CONTINUE
      WRITE(6,*) I
      STOP
      END
