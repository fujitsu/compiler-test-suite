      PROGRAM MAIN
      INTEGER   ITR1
      REAL*4    EV10(10),EV11(10)
      DATA      ITR1/0/,EV10/0,0,8*1.5/,EV11/10*100/

      REAL*8    DV20(100,2)
      REAL*4    EV20(100,2,2)
      INTEGER   ITR2,IV20(2)
      DATA      DV20/-1,0,88*2,0,9*3,  3,23,0,95*12,2,1/ITR2/100/
      DATA      EV20/400*3.5/,IV20/0,0/

      REAL*8    DS30
      REAL*4    EV30(64)
      INTEGER   IV30(64)
      DATA      DS30/3.5/,EV30/31*1.5,1.75,30*2,1.75,3/,IV30/64*2/

 100  CONTINUE
      DO 10 I=1,ITR1
        IF (EV10(I).GT.0)  GOTO  19
        EV11(I)=I
 10   CONTINUE
 19   CONTINUE
      WRITE(6,9998)  EV10,EV11
      IF (ITR1.EQ.0) THEN
        ITR1 = 10
        GOTO  100
      ENDIF

      DO 23 K=1,2
      DO 22 J=1,2
      DO 20 I=1,ITR2
        IF(DV20(I,J)) 21,29,20
  21    EV20(I,J,K)=EV20(I,J,K)/1024.+DV20(I,J)
  20  CONTINUE
      GOTO  22
  29  IV20(J)=I
  22  CONTINUE
      WRITE(6,9998)  (IV20(L2),(DV20(L1,L2),L1=1,11),L2=1,2)
      IF (K.EQ.1) THEN
        DV20(IV20(1),1)=-1.0
        DV20(IV20(2),2)= 1.0
      ENDIF
  23  CONTINUE
      WRITE(6,9998)   EV20

      DO 30 I=1,64
       IF (IV30(I)*EV30(I)-DS30.EQ.0)  GOTO  30
       GOTO  39
 30   CONTINUE
 39   CONTINUE
      WRITE(6,9998) I,IV30,EV30
9999  format(a,(g20.6))
9998  format(g20.6)
      STOP
      END
