      PROGRAM MAIN
      INTEGER*4 I,FF/0/,FL/0/,BASEM(10)/1,1,1,0,0,1,1,1,1,0/
      REAL*4 ARG(1000),ANSNI(1000),ANSVI(1000),ANS(1000),VARARG(1000)
      LOGICAL*4 MASK(1000)
      II=0
      DO 1 I=1,100
        DO 2 J=1,10
          IF( BASEM(J).EQ.1 ) THEN
            MASK(II+J)=.TRUE.
          ELSE
            MASK(II+J)=.FALSE.
          ENDIF
    2 CONTINUE
      II=II+10
    1 CONTINUE
      ARG(1)=0.0E0
      VARARG(1)=0.539760535E-30
      DO 10 I=1,999
   10   VARARG(I+1)=VARARG(I)+0.539760535E-30
   20 DO 30 I=1,999
   30   ARG(I+1)=ARG(I)+0.539760535E-30
      CALL   VIL(ANSVI,ARG,MASK)
      CALL NOVIL(ANSNI,ARG,MASK)
      DO 40 I=1,1000
        IF( MASK(I) ) THEN
          ANS(I)=ANSVI(I)-ANSNI(I)
          IF( ANS(I).NE.0.0E0 ) THEN
            FL=1
            WRITE(6,100) FF,I,ANS(I)
            WRITE(6,110) ARG(I),ANSVI(I),ANSNI(I)
          ENDIF
        ENDIF
   40 CONTINUE
      IF( FF.GE.1000 ) GOTO 60
      FF=FF+1
      ARG(1)=VARARG(FF)
      GOTO 20
   60 IF(FL.EQ.0) WRITE(6,200)
      STOP
  100 FORMAT(1H ,'*** NG *** FF=',I4,' I=',I4,
     *           ' ANSVI-ANSNI=',E15.8)
  110 FORMAT(1H ,'  ARG=',Z8,' ANSVI=',Z8,' ANSNI=',Z8)
  200 FORMAT(1H ,'=== TEST OK ===')
      END
      SUBROUTINE VIL(ANS1,ARG,MASK)
      REAL*4    ANS1(1000),ARG(1000)
      LOGICAL*4 MASK(1000)
      DO 10 I=1,1000
        IF( MASK(I) ) THEN
          ANS1(I)=SQRT(ARG(I))
        ENDIF
   10 CONTINUE
      RETURN
      END
      SUBROUTINE NOVIL(ANS2,ARG,MASK)
      REAL*4 ANS2(1000),ARG(1000)
      LOGICAL*4 MASK(1000)
      DO 10 I=1,1000
        IF( MASK(I) ) THEN
          ANS2(I)=SQRT(ARG(I))
        ENDIF
   10 CONTINUE
      RETURN
      END
