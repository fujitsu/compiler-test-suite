      PROGRAM MAIN
      REAL       REAL_A2(10,10),REAL_B2(10,10)
      INTEGER    INT_A2(10,10),INT_B2(10,10)
      INTEGER K
C
      DATA REAL_A2,INT_A2/100*1.0,100*1/
      DATA REAL_B2,INT_B2/100*1.0,100*1/
      DATA K/5/
      I=INT(COS(0.0))*5
C
      REAL_A2(1:10:2,1)=REAL_A2(1:10:2,2)+3.0
      I=K
      REAL_A2(1:10:2,I+1)=REAL_A2(::2,I+1)/1.0
C
      INT_A2(1:,1)=INT_A2(1:,1)+INT_A2(1:,1)
      INT_A2(1,1)=3
      INT_A2(1:,3)=INT_A2(1:,2)/1
C
      REAL_A2(1,1:10:2)=REAL_A2(2,1:10:2)+3.0
      I=4
      INT_A2(2,1:10:2)=INT_A2(2,1:10:2)+INT_A2(I,1:5)
C
      DO 10 INC1=1,10,2
        REAL_B2(INC1,1)=REAL_B2(INC1,2)+3.0
   10 CONTINUE
      DO 20 INC1=1,10,2
        REAL_B2(INC1,6)=REAL_B2(INC1,6)/1.0
   20 CONTINUE
      DO 30 INC1=1,10,1
          INT_B2(INC1,1)=INT_B2(INC1,1)+INT_B2(INC1,1)
   30 CONTINUE
      INT_B2(1,1)=3
      DO 40 INC1=1,10
        INT_B2(INC1,3)=INT_B2(INC1,2)
   40 CONTINUE
      DO 50 INC1=1,10,2
        REAL_B2(1,INC1)=REAL_B2(2,INC1)+3.0
   50 CONTINUE
      DO 60 INC1=1,5
        INT_B2(2,INC1*2-1)=INT_B2(2,INC1*2-1)+INT_B2(4,INC1)
   60 CONTINUE

C
      DO 100 INC1=1,10
        DO 100 INC2=1,10
          IF (REAL_A2(INC1,INC2) .NE. REAL_B2(INC1,INC2)) THEN
            WRITE(6,*) '***  NG  (REAL) ***'
            WRITE(6,*) 'REAL_A2(',REAL_A2,')'
            WRITE(6,*) '"RIGHT" ',REAL_B2
            GOTO 110
          END IF
  100 CONTINUE
  110 CONTINUE
      DO 120 INC1=1,10
        DO 120 INC2=1,10
          IF (INT_A2(INC1,INC2) .NE. INT_B2(INC1,INC2)) THEN
            WRITE(6,*) '***  NG  (INTEGER) ***'
            WRITE(6,*) 'INT_A2(',INT_A2,')'
            WRITE(6,*) '"RIGHT" ',INT_B2
            GOTO 130
          END IF
  120 CONTINUE
  130 CONTINUE
      DO 140 INC1=1,10
        DO 140 INC2=1,10
          IF ((REAL_A2(INC1,INC2) .NE. REAL_B2(INC1,INC2)) .OR.
     1        (INT_A2(INC1,INC2) .NE. INT_B2(INC1,INC2)))  THEN
            GOTO 150
          END IF
  140 CONTINUE
      WRITE (6,*) '*** OK ***'
  150 CONTINUE
      STOP
      END
