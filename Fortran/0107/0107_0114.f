      PROGRAM MAIN
      REAL       REAL_A2(10,10),REAL_B2(10,10)
      INTEGER    INT_A2(10,10),INT_B2(10,10)
      CHARACTER*2  CHARA_A2(10,10),CHARA_B2(10,10)
C
      DATA REAL_A2,INT_A2,CHARA_A2/100*1.0,100*1,100*'A'/
      DATA REAL_B2,INT_B2,CHARA_B2/100*1.0,100*1,100*'A'/
C
      REAL_A2=REAL_A2*2.0
      REAL_A2(1,1:10)=REAL_A2(2,1:10)+3.0
      REAL_A2(1:5,1:5)=REAL_A2(1:5,6:10)/1.0
C
      INT_A2=INT_A2*2
      INT_A2(1:10:2,1:10)=INT_A2(2:10:2,1:10)+INT_A2(1:10:2,:)
      INT_A2(1,1:5)=INT_A2(1,6:10)/1
C
      CHARA_A2=CHARA_A2
      CHARA_A2(1,1:10)=CHARA_A2(2,1:10)(1:1)//'B'
      CHARA_A2(1:5,1:5)='C'//CHARA_A2(6:10,1:5)
C
      DO 10 INC1=1,10
        DO 10 INC2=1,10
          REAL_B2(INC1,INC2)=REAL_B2(INC1,INC2)*2.0
   10 CONTINUE
      DO 20 INC1=1,10
        REAL_B2(1,INC1)=REAL_B2(2,INC1)+3.0
   20 CONTINUE
      DO 30 INC1=1,5
        DO 30 INC2=1,5
          REAL_B2(INC1,INC2)=REAL_B2(INC1,INC2+5)/1.0
   30 CONTINUE
      DO 40 INC1=1,10
        DO 40 INC2=1,10
          INT_B2(INC1,INC2)=INT_B2(INC1,INC2)*2
   40 CONTINUE
      DO 50 INC1=1,10,2
        DO 50 INC2=1,10
          INT_B2(INC1,INC2)=INT_B2(INC1+1,INC2)+INT_B2(INC1,INC2)
   50 CONTINUE
      DO 60 INC1=1,5
        INT_B2(1,INC1)=INT_B2(1,INC1+5)
   60 CONTINUE
      DO 70 INC1=1,10
        DO 70 INC2=1,10
          CHARA_B2(INC1,INC2)=CHARA_B2(INC1,INC2)
   70 CONTINUE
      DO 80 INC1=1,10
        CHARA_B2(1,INC1)=CHARA_A2(2,INC1)(1:1)//'B'
   80 CONTINUE
      DO 90 INC1=1,5
        DO 90 INC2=1,5
          CHARA_B2(INC1,INC2)='C'//CHARA_B2(INC1,INC2+5)
   90 CONTINUE
C
C
      DO 100 INC1=1,10
        DO 100 INC2=1,10
          IF (REAL_A2(INC1,INC2) .NE. REAL_B2(INC1,INC2)) THEN
            WRITE(6,*) '***  NG (REAL) ***'
            WRITE(6,*) 'REAL_A2(',REAL_A2,')'
            WRITE (6,*) '"RIGHT" ',REAL_B2
            GOTO 110
          END IF
  100 CONTINUE
  110 CONTINUE
      DO 120 INC1=1,10
        DO 120 INC2=1,10
          IF (INT_A2(INC1,INC2) .NE. INT_B2(INC1,INC2)) THEN
            WRITE(6,*) '***  NG (INTEGER) ***'
            WRITE(6,*) 'INT_A2(',INT_A2,')'
            WRITE (6,*) '"RIGHT" ',INT_B2
            GOTO 130
          END IF
  120 CONTINUE
  130 CONTINUE
      DO 140 INC1=1,10
        DO 140 INC2=1,10
          IF (CHARA_A2(INC1,INC2) .NE. CHARA_B2(INC1,INC2)) THEN
            WRITE(6,*) '***  NG (CHARACTER) ***'
            WRITE(6,*) 'CHARA_A2(',CHARA_A2,')'
            WRITE (6,*) '"RIGHT" ',CHARA_B2
            GOTO 150
          END IF
  140 CONTINUE
      DO 160 INC1=1,10
        DO 160 INC2=1,10
          IF ((REAL_A2(INC1,INC2) .NE. REAL_B2(INC1,INC2)) .OR.
     1        (INT_A2(INC1,INC2) .NE. INT_B2(INC1,INC2))   .OR.
     1        (CHARA_A2(INC1,INC2) .NE. CHARA_B2(INC1,INC2))) THEN
            GOTO 150
          END IF
  160 CONTINUE
      WRITE (6,*) '*** OK ***'
  150 CONTINUE
      STOP
      END