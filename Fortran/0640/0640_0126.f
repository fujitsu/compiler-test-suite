      PROGRAM MAIN
      INTEGER   ITR1
      REAL*4    EV10(10)
      DATA      ITR1/10/,EV10/0,3*1,5*-2.5,0/

      REAL*4    DV20(200)
      INTEGER   ITR2,J
      DATA      (DV20(I),I=1,200,2)/1,2,30*5,0,36*4,-1,30*-3/
      DATA      (DV20(I),I=2,200,4)/-1,2,0,8*5,36*4,1,2*36/
      DATA      (DV20(I),I=4,200,4)/1,-2,0,28*-5,6*-4,1,12*-3/
      DATA      ITR2/200/,J/10/

      REAL*4    EV30(64)
      DATA      EV30/31*1.5,31*2,3,1.75/

      DO 10 I=1,ITR1
        IF (EV10(I).EQ.0)  THEN
          CONTINUE
        ELSE
          GOTO 19
        ENDIF
 10   CONTINUE
 19   CONTINUE
      
      DO 20 I=2,ITR2,2
        IF(DV20(I).GT.0) THEN
          DV20(I)=SQRT(DV20(I))
        ELSE
          GOTO  29
        ENDIF
  20  J=J+3
  29  CONTINUE
      WRITE(6,9999)   I,J
      WRITE(6,9999)   DV20

      DO 30 I=1,64
       IF (SIN(EV30(I)).GT.0)  GOTO  30
         EV30(I)=SIN(EV30(I))
         GOTO  39
 30   EV30(I)=COS(EV30(I))
 39   WRITE(6,9999)  EV30,I
9998  format(a)
9999  format((g20.6))
      STOP
      END
