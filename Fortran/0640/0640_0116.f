      PROGRAM MAIN

      REAL*4    EV10(10),ES10
      DATA      EV10/0,0,8*1.5/,ES10/0/

      REAL*8    DV10(1000)
      INTEGER   N
      DATA      DV10/0,999*200/,N/10/

      REAL*8    DS30
      REAL*4    EV30(100),EV31(100)
      INTEGER   IV30(100),N3,IS30
      DATA      DS30/3.5/EV30/50*1.5,49*2,1.75/,EV31/100*100/
      DATA      IV30/100*2/,N3/100/,IS30/1/

 100  CONTINUE
      DO 10 I=1,10
        IF (ES10.EQ.0)  GOTO  19
        EV10(I)=I*ES10
 10   CONTINUE
 19   CONTINUE
      WRITE(6,*)  EV10,ES10

      IF (ES10.EQ.0) THEN
        ES10=-1
        GOTO  100
      ENDIF

 200  DO 20 I=1,N
        IS20=I*DV10(I)
        DV10(I)=IS20*2
        IF(DV10(I)) 20,29,20
  20  CONTINUE
  29  CONTINUE
      WRITE(6,*)  I,(DV10(K),K=1,11)
      IF (I.EQ.1) THEN
        DV10(1)=-1.0
        GOTO  200
      END IF

      DO 30 I=1,N3
       IF (IV30(I)*EV30(I)-DS30)  32,37,30
 32    EV31(IS30)=IV30(I)*EV30(I)
 30   IS30=IS30+1
      GOTO  39
 37   CONTINUE
      IV30(I)=IV30(I)*2
 39   CONTINUE

      WRITE(6,*) IS30,IV30,EV30,EV31
      STOP
      END
